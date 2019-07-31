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

package datacenterssimulation.src.Controller;
import inet.linklayer.ppp.PPPInterface;
import inet.networklayer.common.InterfaceTable;
import inet.linklayer.ethernet.EthernetInterface;



module Controller
{
    parameters:
        int numberofracks;
        int numChannelFastSwitch; // Number of output data channels (control channel not included).
        int numChannelSlowSwitch; // Number of output data channels (control channel not included).     



    gates:
        input in[];
        output out[];
        inout pppcontrol[];
        inout pppconfigure[];
        inout ethcontrol[];

    submodules:
        interfaceTable: InterfaceTable {
            parameters:
                @display("p=50,60;i=block/table");
        }
        ppp[2]: PPPInterface {
            parameters:
                @display("p=70,250,row,110;q=l2queue;i=block/ifcard");
        }

   		eth[1]: EthernetInterface {
            parameters:
                @display("p=140,250,row,110;q=l2queue;i=block/ifcard");
        }

        pppconf[2]: PPPInterface {
            parameters:
                @display("p=200,250,row,110;q=l2queue;i=block/ifcard");
        }
        scheduler: Scheduler {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch;
                numChannelSlowSwitch = numChannelSlowSwitch;
          //      numPortsFast = numChannelFastSwitch*numberofracks;
           //     numPortsSlow = numChannelFastSwitch*numberofracks;

                @display("p=135,150;q=l2queue;i=block/ifcard");

        }
        horizonslowswitch: Horizon {
            parameters:
                numPorts = numChannelSlowSwitch*numberofracks;
                @display("p=300,60;q=l2queue;i=block/table");

        }

        horizonfastswitch: Horizon {
            parameters:
                numPorts = numChannelFastSwitch*numberofracks;
                @display("p=170,60;q=l2queue;i=block/table");

        }
        
        

        RoutingTableSlowSwitch: CoreRoutingTable {
            parameters:
                @display("p=450,60;q=l2queue;i=block/table");

        }
        RoutingTableFastSwitch: CoreRoutingTable {
            parameters:
                @display("p=620,60;q=l2queue;i=block/table");

        }

    connections allowunconnected:

     //   for i=0..numberofracks-1 {
     //       ppp[i].phys <--> pppcontrol++;
     //       ppp[i].upperLayerOut --> scheduler.in++;
     //       ppp[i].upperLayerIn <-- scheduler.out++;
      //  }

   for i=0..sizeof(ppp)-1 {
            ppp[i].phys <--> pppcontrol++;
            ppp[i].upperLayerOut --> scheduler.in++;
            ppp[i].upperLayerIn <-- scheduler.out++;
        }

// 		for i=0..0 {
 //           eth[i].phys <--> ethcontrol++;
  //          eth[i].upperLayerOut --> scheduler.in++;
   //         eth[i].upperLayerIn <-- scheduler.out++;
    //    }

        for i=0..sizeof(pppconf)-1 {
            pppconfigure++ <--> pppconf[i].phys;
            pppconf[i].upperLayerIn <-- scheduler.configureOut++;
            pppconf[i].upperLayerOut --> scheduler.configureIn++;
        }

}
