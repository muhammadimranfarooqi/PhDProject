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

import inet.nodes.inet.NetworkLayer;
import inet.networklayer.ipv4.RoutingTable;
import inet.networklayer.common.InterfaceTable;
import inet.linklayer.ppp.PPPInterface;
import inet.linklayer.ethernet.EthernetInterface;
import inet.base.NotificationBoard;


//
// Edge node for a OBS network. It's just a Router (from the INET Framework) including an OBS Interface.
//
module OBS_EdgeNode
{
    parameters:

        int numChannelFastSwitch; // Number of output data channels (control channel not included).
        int numChannelSlowSwitch; // Number of output data channels (control channel not included).     


        @display("i=block/classifier2");
    gates:
        inout pppIO[];	// PPP port

        inout pppSlow[];	// PPP port
        inout pppFast[];	// PPP port

        inout ethIO[];	// Ethernet port
        inout pppcontrol;
  //      inout ethcontrol;
        
    submodules:
        notificationBoard: NotificationBoard {
            parameters:
                @display("p=60,60;i=block/control");
        }
        interfaceTable: InterfaceTable {
            parameters:
                @display("p=200,60;i=block/table");
        }
        routingTable: RoutingTable {
            parameters:
                IPForward = true;
                routerId = "auto";
                @display("p=300,60;i=block/table");
        }
        networkLayer: NetworkLayer {
            parameters:
                @display("p=220,149;i=block/fork;q=queue");
        }
        ppp[sizeof(pppIO)]: PPPInterface {
            parameters:
                @display("p=82,257,row,110;q=l2queue;i=block/ifcard");
        }
        //       pppf[sizeof(pppFast)]: PPPInterface {
        //         parameters:
        //           @display("p=500,350,row,110;q=l2queue;i=block/ifcard");
        //   }
        //      ppps[sizeof(pppSlow)]: PPPInterface {
        //         parameters:
        //            @display("p=300,350,row,110;q=l2queue;i=block/ifcard");
        //    }
        ppp_control: PPPInterface {
            parameters:
                @display("p=350,350;q=l2queue;i=block/ifcard");
        }
        
        eth_control: EthernetInterface {
            parameters:
                @display("p=450,350;q=l2queue;i=block/ifcard");
        }
    
     //   eth[sizeof(ethIO)]: EthernetInterface {
     //       parameters:
     //           @display("p=220,257,row,110;q=l2queue;i=block/ifcard");
     //   }
        obs: OBS_EdgeInterface {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch;
                numChannelSlowSwitch = numChannelSlowSwitch;

                @display("p=350,257;q=l2queue;i=block/ifcard");
        }
    connections allowunconnected:
        pppcontrol <--> ppp_control.phys;
        ppp_control.upperLayerOut --> obs.controlIn;
        ppp_control.upperLayerIn <-- obs.controlOut;

	//	ethcontrol <--> eth_control.phys;
    //    eth_control.upperLayerOut --> obs.controlIn;
    //    eth_control.upperLayerIn <-- obs.controlOut;

        // connections to the outer world
        for i=0..sizeof(pppFast)-1 {
            pppFast[i] <--> obs.physFast++;
        }

        for i=0..sizeof(pppSlow)-1 {
            pppSlow[i] <--> obs.physSlow++;

       //     pppSlow[i] <--> ppps[i].phys;
         //   ppps[i].upperLayerOut --> obs.physInSlow++;
           // ppps[i].upperLayerIn <-- obs.physOutSlow++;


        }

        for i=0..sizeof(pppIO)-1 {
            pppIO[i] <--> ppp[i].phys;
            ppp[i].upperLayerOut --> networkLayer.ifIn++;
            ppp[i].upperLayerIn <-- networkLayer.ifOut++;
        }


//        for i=0..sizeof(ethIO)-1 {
//            ethIO[i] <--> eth[i].phys;
 //           eth[i].upperLayerOut --> networkLayer.ifIn++;
 //           eth[i].upperLayerIn <-- networkLayer.ifOut++;
  //      }




        //Connection between OBS Interface and Network layer. Only one line, as mentioned before
        obs.upperLayerOut --> networkLayer.ifIn++;
        obs.upperLayerIn <-- networkLayer.ifOut++;
}
