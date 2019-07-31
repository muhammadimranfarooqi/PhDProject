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
import inet.linklayer.ppp.PPPInterface;
import inet.networklayer.common.InterfaceTable;
import inet.util.ThruputMeteringChannel;


//
// Switching device in the OBS arquitecture.
//
module CoreNode
{
    parameters:
        //    int numPorts; //Number of fibers
        //    string lambdasPerInPort; //Number of input data channels for each fiber
        //    string lambdasPerOutPort; //Number of output data channels for each fiber 
        //    string inputColours; // Colour of each input data channel of each fiber. Should be a list of int numbers and vertical bars separated by spaces (each vertical bar separates a fiber). Use an empty string if you don't want to use colours. Example: "2 3 4 | 4 3 2 | 5 4 3" (3 fibers with 3 lambdas each one)
        //    string outputColours; // Colour of each output data channel of each fiber. Should be a list of int numbers and vertical bars separated by spaces (each vertical bar separates a fiber). Use an empty string if you don't want to use colours. Example: "2 3 4 | 4 3 2 | 5 4 3" (3 fibers with 3 lambdas each one)
        
        double dataRate @unit(bps); 
        @display("bgb=434,264;i=block/switch");
       
    gates:
        input in[];
        output out[];
        inout pppIO[];
        inout pppconfigure;
	types:
        channel C extends ThruputMeteringChannel
        {
            }
    submodules:
        interfaceTable: InterfaceTable {
            parameters:
                @display("p=200,50;i=block/table");
        }
 //       ppp[sizeof(pppIO)]: PPPInterface {
  //          parameters:
 //               @display("p=100,150,row,110;q=l2queue;i=block/ifcard");
  //      }

        pppconf: PPPInterface {
            parameters:
                @display("p=300,150;q=l2queue;i=block/ifcard");
        }

        OXC: OpticalCrossConnect {
            parameters:
                @display("i=block/switch;p=100,50");
        }

        configurator: Configurator {
            parameters:
                @display("i=block/switch;p=300,50");
        }

    connections allowunconnected:

        for i=0..sizeof(pppIO)-1 {
              pppIO[i] <--> OXC.phys++;
        
//            pppIO[i] <--> ppp[i].phys;
  //          ppp[i].upperLayerOut --> OXC.in++;
    //        ppp[i].upperLayerIn <-- OXC.out++;
        }

        pppconfigure <--> pppconf.phys;
        pppconf.upperLayerOut --> configurator.in;
        pppconf.upperLayerIn <-- configurator.out;



}
