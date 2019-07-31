//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

#ifndef __OBSMODULES_MODIFIED_HORIZON_H_
#define __OBSMODULES_MODIFIED_HORIZON_H_


#include <omnetpp.h>
#include <vector>
#include "Connection_m.h"

using namespace std;

/**
 * TODO - Generated class
 */
class Horizon : public cSimpleModule
{
private:
  simtime_t *horizon; //!< Horizon array. It has two dimensions: horizon[port][lambda].
  simtime_t *horizonconnectiontime; //!< Horizon array. It has two dimensions: horizon[port][lambda].

  simtime_t *horizonstarttime; //!< Horizon array. It has two dimensions: horizon[port][lambda].
  int numPorts; //!< Number of data channels.
  int* horizonport; //!< Array that represents the connections of the input gates.

  //Connection **connection;
  //simtime_t *endtime;

  protected:
    virtual void initialize();
    //virtual void handleMessage(cMessage *msg);

   // vector< cOutVector* > horizonVecOXC;


  public:
    virtual ~Horizon();
    //! Find the lambda which horizon (time when the channel is free) is lesser than and closer to the arrivalTime value given.
    //! @param port Optical fiber to look for.
    //! @param arrivalTime Time value used for the lookup.
    int findNearestHorizon(int startport,int endport);
    int findNearestHorizonDifferent(int startinput, int startoutput, int startport,int endport);

    int findDirectConnection(int startinput, int startoutput, int startport,int endport);
    int findLatestConnection(int startinput, int startoutput, int startport,int endport);

    //! Update horizon Value to the newTime value.
    //! @param port Optical fiber.
    //! @param lambda Channel to update.
    //! @param newTime Updated horizon value.
    void updateHorizon(int inputport, int outputport, simtime_t startTime,simtime_t endTime,simtime_t currentTime);

    //! Return the current horizon of the selected channel.
    //! @param port Optical fiber.
    //! @param lambda Optical channel.
    simtime_t getHorizon(int port);

    simtime_t getConnectionTime(int port);


    simtime_t getHorizonStart(int port);
    int getOutputPort(int port);

};

#endif
