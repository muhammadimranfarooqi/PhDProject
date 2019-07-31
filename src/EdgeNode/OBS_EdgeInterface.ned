//
// Copyright (C) 2010-2013 Javier Armendariz Silva, Naiara Garcia Royo, Felix Espina Antolin
// Copyright (C) 2010-2013 Universidad Publica de Navarra
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

import datacenterssimulation.src.EdgeNode.*;

//
// Optical interface for the Edge Node. It has an assembler that receives packets from the network layer and groups them into bursts. Also, it receives assembled bursts and disassembles them.
//
module OBS_EdgeInterface
{
    parameters:
        
        int numChannelFastSwitch; // Number of output data channels (control channel not included).
   		int numChannelSlowSwitch; // Number of output data channels (control channel not included).     
     
        
        @display("bgb=184,234");
    gates:
   
        
        input physInFast[];
        output physOutFast[];
        input physInSlow[];
        output physOutSlow[];
        
        
        inout physSlow[];	// PPP port
        inout physFast[];	// PPP port
        
         
		input upperLayerIn;
		output upperLayerOut;
		
		input controlIn;
		output controlOut;
		
		
    submodules:
    
        assembler: OBS_BurstAssembler {
            parameters:
                numChannelFastSwitch=numChannelFastSwitch; 
   				numChannelSlowSwitch=numChannelSlowSwitch;      
  
                @display("p=62,80;i=block/fork");
        }
        disassembler: Disassembler {
            parameters:
    
                @display("p=66,160;i=block/join");
        }
    connections:

		controlIn --> assembler.controlIn;
		assembler.controlOut --> controlOut;
		
		upperLayerIn --> assembler.in;
		
     
	
    	for i=0..numChannelFastSwitch-1 {
	
         physFast++ <--> assembler.physFast++;  
        //    assembler.outfast++ --> physOutFast++;
        }

	//	for i=0..numChannelFastSwitch-1 {
        //    physInFast++ --> disassembler.inFast++;
    //    }

    	for i=0..numChannelSlowSwitch-1 {
    	    physSlow++ <--> assembler.physSlow++;
          //  assembler.outslow++ --> physOutSlow++;
        }

//		for i=0..numChannelSlowSwitch-1 {
        //    physInSlow++ --> disassembler.inSlow++;
  //      }

		disassembler.out --> upperLayerOut;
		disassembler.assemblerin <-- assembler.senderin;
}
