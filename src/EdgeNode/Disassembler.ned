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

package datacenterssimulation.src.EdgeNode;

//
// Releases the content of the burst when the burst end message arrives.
//
// At this moment, this module discards all signalling messages. In the future, signalling could be used to check errors during the transmission.
//
//
// Burst beginning messages are stored in a list structure until a burst end message arrives.
// Then, the module searches for a burst beginning with the same ID than the message received and releases all packets stored inside of it.
// If burst beginning is not found, an error message is displayed.
//
simple Disassembler
{
    parameters:

		@signal[rcvdPk](type=cPacket);
		@signal[rcvdWrongBursts](type=cPacket);
		@statistic[rcvdWrongBursts](title="Bursts Received received"; source=rcvdWrongBursts; record=count,"sum(packetBytes)","vector(packetBytes)"; interpolationmode=none);
        @statistic[rcvdWrongBurstsLifetime](title="Received Bursts end-to-end-delay"; source="messageAge(rcvdWrongBursts)"; unit=s; record=stats,vector; interpolationmode=none);
        double dataRate @unit(bps); // Data rate of the optical channels.

	
        @statistic[rcvdPk](title="Bursts Received received"; source=rcvdPk; record=count,"sum(packetBytes)","vector(packetBytes)"; interpolationmode=none);
        @statistic[rcvdPkLifetime](title="Received Bursts end-to-end-delay"; source="messageAge(rcvdPk)"; unit=s; record=stats,vector; interpolationmode=none);

    gates:
        input inFast[];
        input inSlow[];
        
        input assemblerin;
        
        output out;
}
