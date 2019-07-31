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

package datacenterssimulation.src.EdgeNode;

//
// TODO auto-generated module
//
simple BurstReceiver
{
parameters:

		@signal[rcvdPk](type=cPacket);
		@signal[rcvdWrongBursts](type=cPacket);
		@statistic[rcvdWrongBursts](title="Bursts Received received"; source=rcvdWrongBursts; record=count,"sum(packetBytes)","vector(packetBytes)"; interpolationmode=none);
        @statistic[rcvdWrongBursts](title="Received Bursts end-to-end-delay"; source="messageAge(rcvdWrongBursts)"; unit=s; record=stats,vector; interpolationmode=none);

	
        @statistic[rcvdPk](title="Bursts Received received"; source=rcvdPk; record=count,"sum(packetBytes)","vector(packetBytes)"; interpolationmode=none);
        @statistic[rcvdPk](title="Received Bursts end-to-end-delay"; source="messageAge(rcvdPk)"; unit=s; record=stats,vector; interpolationmode=none);

    gates:
        input inFast[];
        input inSlow[];
        
        input assemblerin;
        
        output out;
}
