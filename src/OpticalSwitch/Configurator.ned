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

package datacenterssimulation.src.OpticalSwitch;

//
// TODO auto-generated module
//
simple Configurator
{
     parameters:
	      
	    @signal[rcvdConf](type=cPacket);
        @statistic[rcvdConfLifeTime](title="Configuration Packet delay"; source="messageAge(rcvdConf)"; unit=s; record=stats; interpolationmode=none);

        @signal[dropConf](type=cPacket);
	    @statistic[dropConfLifeTime](title="Drop Configuration Packet due to late delivery"; source="messageAge(dropConf)"; unit=s; record=stats; interpolationmode=none);

        @signal[rcvdLateConf](type=cPacket);
	    @statistic[rcvdLateConfLifeTime](title="Received Configuration Packet late"; source="messageAge(rcvdLateConf)"; unit=s; record=stats; interpolationmode=none);


gates: 

input in;
output out;
}
