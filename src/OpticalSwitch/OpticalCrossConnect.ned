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

package datacenterssimulation.src.OpticalSwitch;
import datacenterssimulation.src.messages.*;

//
// Interconnection point where optical bursts pass through transparently. OBS_CoreControlLogic is the responsible of setting/unsetting lightpaths.
//
simple OpticalCrossConnect
{
    parameters:
	      
	      @signal[rcvdPk](type=cPacket);
	
	      @signal[dropPkNotConf](type=cPacket);
	      
          @signal[dropPkCongestion](type=cPacket);
	         
	      @statistic[rcvdPk](title="Bursts Received"; source=rcvdPk; record=count,"sum(packetBytes)","vector(packetBytes)"; interpolationmode=none);
	      @statistic[dropPkNotConf](title="packets dropped by OXC not configured"; source=dropPkNotConf; record=count,"sum(packetBytes)","vector(packetBytes)"; interpolationmode=none);
	      @statistic[dropPkCongestion](title="packets dropped by congestion"; source=dropPkCongestion; record=count,"sum(packetBytes)","vector(packetBytes)"; interpolationmode=none);
	     
    gates:
    	inout phys[];
    	input in[];
        output out[];
}
