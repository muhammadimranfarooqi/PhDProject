//
// Copyright (C) 2010-2012 Javier Armendariz Silva, Naiara Garcia Royo
// Copyright (C) 2010-2012 Universidad Publica de Navarra
//
// This file is part of OBSModules.
//
// OBSModules is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// OBSModules is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with OBSModules.  If not, see <http://www.gnu.org/licenses/>.
//

#include <omnetpp.h>

//! Interconnection point where optical bursts pass through transparently. OBS_CoreControlUnit is the responsible of setting/unsetting lightpaths.
class OpticalCrossConnect : public cSimpleModule{
   private:
      int* schedulingTable; //!< Array that represents the connections of the input gates.
      static simsignal_t rcvdPkSignal;
      static simsignal_t dropPkConfSignal;
      static simsignal_t dropPkCongSignal;

      cChannel *datarateChannel; // NULL if we're not connected
      cMessage *timeout_msg; //!< Timeout message.


      cStdDev Throughput; //!< Received packets' length statistics.
      cStdDev ThroughputInterval; //!< Received packets' length statistics.

      cOutVector ThroughputVec; //!< Length of the packets received (in bytes).
      cOutVector ThroughputVec2; //!< Length of the packets received (in bytes).

   public:
      virtual ~OpticalCrossConnect();
      //! Set a connection between the given input and output gate.
      //! @param inGate OXC's input gate.
      //! @param outGate OXC's output gate to connect.
      void setGate(int inGate, int outGate);
      //! Unset the connection with the given input gate.
      //! @param inGate OXC's input gate used as index.
      void unsetGate(int inGate);
   protected:
      virtual void initialize();
      virtual void handleMessage(cMessage *msg);
};
