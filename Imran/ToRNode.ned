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

package datacenterssimulation.Imran;

import inet.nodes.inet.NetworkLayer;
import inet.networklayer.ipv4.RoutingTable;
import inet.networklayer.common.InterfaceTable;
import inet.linklayer.ppp.PPPInterface;
import inet.linklayer.ethernet.EthernetInterface;
import inet.base.NotificationBoard;
import inet.util.PcapRecorder;
import inet.linklayer.IWiredNic;
import inet.linklayer.IExternalNic;
import datacenterssimulation.src.EdgeNode.*;



module ToRNode
{
    parameters:
    
        @display("bgb=611,448");
        @node;
        string routingFile = default("");
        bool IPForward = default(true);
        bool forwardMulticast = default(false);
    gates:
        inout pppg[] @labels(PPPFrame-conn);
        inout ethg[] @labels(EtherFrame-conn);
        input obsIn[];  // OBS input
        output obsOut[]; //OBS output
        
    submodules:
        notificationBoard: NotificationBoard {
            parameters:
                @display("p=53,194");
        }


        // network layer
        networkLayer: NetworkLayer {
            parameters:
                @display("p=200,287;q=queue");
        }

        routingTable: RoutingTable {
            parameters:
                @display("p=53,287");
                IPForward = true;
                forwardMulticast = forwardMulticast;
                routingFile = routingFile;
        }

        // linklayer
        interfaceTable: InterfaceTable {
            parameters:
                @display("p=53,386");
        }

        eth[sizeof(ethg)]: EthernetInterface {
            parameters:
                @display("p=250,350,row,110;q=l2queue;i=block/ifcard");
        }


        ppp[sizeof(pppg)]: PPPInterface {
            parameters:
                @display("p=150,350.,row,110;q=l2queue;i=block/ifcard");
        }
 		
 		obs: OBS_EdgeInterface {
            parameters:
                @display("p=283,257;q=l2queue;i=block/ifcard");
        }

    connections allowunconnected:

        for i=0..sizeof(ethg)-1 {
            ethg[i] <--> eth[i].phys;
            eth[i].upperLayerOut --> networkLayer.ifIn++;
            eth[i].upperLayerIn <-- networkLayer.ifOut++;
        }

        for i=0..sizeof(pppg)-1 {
            pppg[i] <--> ppp[i].phys;
            ppp[i].upperLayerOut --> networkLayer.ifIn++;
            ppp[i].upperLayerIn <-- networkLayer.ifOut++;
        }

	

      
        //Connection between OBS Interface and Network layer. Only one line, as mentioned before
//        obs.netwOut --> networkLayer.ifIn[sizeof(pppIO)+sizeof(ethIO)];
//        obs.netwIn <-- networkLayer.ifOut[sizeof(pppIO)+sizeof(ethIO)];
		obs.upperLayerOut --> networkLayer.ifIn++;
		obs.upperLayerIn <-- networkLayer.ifOut++;

}


