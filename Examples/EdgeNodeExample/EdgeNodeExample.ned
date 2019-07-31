//
// Copyright (C) 2010-2013 Felix Espina
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

package datacenterssimulation.Examples.EdgeNodeExample;

import datacenterssimulation.src.Controller.*;
import datacenterssimulation.src.OpticalSwitch.*;
import inet.nodes.inet.Router;

import datacenterssimulation.src.EdgeNode.OBS_EdgeNode;


import inet.nodes.inet.StandardHost;

import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import ned.DatarateChannel;
import inet.util.ThruputMeteringChannel;

network EdgeNodeExample
{
    parameters:

        int numChannelFastSwitch;
        int numChannelSlowSwitch;
        double dataRate @unit(bps); // Data rate of the optical channels.
        double dataRateFast @unit(bps); // Data rate of the optical channels.


    types:
     channel C extends ThruputMeteringChannel
        {
        	datarate = dataRate;
            thruputDisplayFormat = "u";
	        delay = 100ns;
            
        }
    
     channel fiber40 extends DatarateChannel
        {
            datarate = 40Gbps;
            delay = 100ns;
        }
        channel fiber extends DatarateChannel
        {
            datarate = 10Gbps;
            delay = 0.1us;
        }
    submodules:
      // Network 1 hosts



        network1host1: StandardHost {
            parameters:
                routingFile = "network/network1/H1.irt";
                @display("p=500,100");
        }
        network1host2: StandardHost {
            parameters:
                routingFile = "network/network1/H2.irt";
                @display("p=500,300");
        }
        network1host3: StandardHost {
            parameters:
                routingFile = "network/network1/H3.irt";
                @display("p=500,500");
        }
        network1host4: StandardHost {
            parameters:
                routingFile = "network/network1/H4.irt";
                @display("p=500,700");
        }
        network1host5: StandardHost {
            parameters:
                routingFile = "network/network1/H5.irt";
                @display("p=500,900");
        }




        network2host1: StandardHost {
            parameters:
                routingFile = "network/network2/H1.irt";
                @display("p=5000,100");
        }
        network2host2: StandardHost {
            parameters:
                routingFile = "network/network2/H2.irt";
                @display("p=5000,300");
        }
        network2host3: StandardHost {
            parameters:
                routingFile = "network/network2/H3.irt";
                @display("p=5000,500");
        }
        network2host4: StandardHost {
            parameters:
                routingFile = "network/network2/H4.irt";
                @display("p=5000,700");
        }
        network2host5: StandardHost {
            parameters:
                routingFile = "network/network2/H5.irt";
                @display("p=5000,900");
        }


        network4host1: StandardHost {
            parameters:
                routingFile = "network/network4/H1.irt";
                @display("p=5000,1100");
        }
        network4host2: StandardHost {
            parameters:
                routingFile = "network/network4/H2.irt";
                @display("p=5000,1300");
        }
        network4host3: StandardHost {
            parameters:
                routingFile = "network/network4/H3.irt";
                @display("p=5000,1500");
        }
        network4host4: StandardHost {
            parameters:
                routingFile = "network/network4/H4.irt";
                @display("p=5000,1700");
        }
        network4host5: StandardHost {
            parameters:
                routingFile = "network/network4/H5.irt";
                @display("p=5000,1900");
        }

        network3host1: StandardHost {
            parameters:
                routingFile = "network/network3/H1.irt";
                @display("p=500,1100");
        }
        network3host2: StandardHost {
            parameters:
                routingFile = "network/network3/H2.irt";
                @display("p=500,1300");
        }
        network3host3: StandardHost {
            parameters:
                routingFile = "network/network3/H3.irt";
                @display("p=500,1500");
        }
        network3host4: StandardHost {
            parameters:
                routingFile = "network/network3/H4.irt";
                @display("p=500,1700");
        }
        network3host5: StandardHost {
            parameters:
                routingFile = "network/network3/H5.irt";
                @display("p=500,1900");
        }


        edge1: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules1.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules1.dat";
                routingTable.routingFile = "ToRNode/Edge1Simple.irt";
                @display("p=2000,500;i=abstract/switch");
        }

        edge3: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules3.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules3.dat";
                routingTable.routingFile = "ToRNode/Edge3Simple.irt";
                @display("p=2000,1500;i=abstract/switch");
        }


        edge2: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules2.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules2.dat";
                routingTable.routingFile = "ToRNode/Edge2Simple.irt";
                @display("p=3500,500;i=abstract/switch");
        }
        edge4: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules4.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules4.dat";
                routingTable.routingFile = "ToRNode/Edge4Simple.irt";
                @display("p=3500,1500;i=abstract/switch");
        }
        controller: Controller {
            parameters:
                RoutingTableSlowSwitch.routeTableFile = "RoutingFileSlowSwitchsimple.dat";
                RoutingTableFastSwitch.routeTableFile = "RoutingFileFastswitchsimple.dat";

                @display("p=2800,1000;i=block/control");

        }

        slowSwitch: CoreNode {
            parameters:
            	dataRate = dataRate;
            	
                @display("p=2800,700;i=abstract/opticalswitch");

        }

        fastSwitch: CoreNode {
            parameters:
            	dataRate = dataRateFast;
            
                @display("p=2800,1300;i=abstract/opticalswitch");

        }
 		controlswitch1: Router {
            @display("p=2600,500");
            
           routingFile = "ControlSimple1.irt";
            
        }
        
        controlswitch2: Router {
            @display("p=3000,400");
            
           routingFile = "ControlSimple2.irt";
            
        }
      
    connections allowunconnected:

		controlswitch1.pppg++ <--> fiber <--> controller.pppcontrol++;
        controlswitch1.pppg++ <--> fiber <--> controller.pppconfigure++;
        controlswitch1.pppg++ <--> fiber <-->  fastSwitch.pppconfigure;
		controlswitch2.pppg++ <--> fiber <--> controller.pppcontrol++;
		controlswitch2.pppg++ <--> fiber <--> controller.pppconfigure++;
		controlswitch2.pppg++ <--> fiber <--> slowSwitch.pppconfigure;
	
	//	controlswitch.ethg++ <--> fiber <--> controller.ethcontrol++;
	//    controlswitch.ethg++ <--> fiber <--> edge1.ethcontrol;
    //    controlswitch.ethg++ <--> fiber <--> edge2.ethcontrol;
    //    controlswitch.ethg++ <--> fiber <--> edge3.ethcontrol;
    //    controlswitch.ethg++ <--> fiber <--> edge4.ethcontrol;


        controlswitch1.pppg++ <--> fiber <--> edge1.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge2.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge3.pppcontrol;
       controlswitch2.pppg++ <--> fiber <--> edge4.pppcontrol;

      //  edge1.pppcontrol <--> fiber <--> controller.pppcontrol++;
      //  edge2.pppcontrol <--> fiber <--> controller.pppcontrol++;
      //  edge3.pppcontrol <--> fiber <--> controller.pppcontrol++;
      //  edge4.pppcontrol <--> fiber <--> controller.pppcontrol++;

//        slowSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;
//        fastSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;

        network1host1.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host2.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host3.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host4.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host5.pppg++ <--> fiber <--> edge1.pppIO++;

        network2host1.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host2.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host3.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host4.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host5.pppg++ <--> fiber <--> edge2.pppIO++;

        network3host1.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host2.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host3.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host4.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host5.pppg++ <--> fiber <--> edge3.pppIO++;

        network4host1.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host2.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host3.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host4.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host5.pppg++ <--> fiber <--> edge4.pppIO++;




        for i=0..numChannelSlowSwitch-1 {
            edge1.pppSlow++ <--> fiber <--> slowSwitch.pppIO++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge2.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            edge3.pppSlow++ <--> fiber <--> slowSwitch.pppIO++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge4.pppSlow++;
        }



        for i=0..numChannelFastSwitch-1 {
            edge1.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge2.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }

        for i=0..numChannelFastSwitch-1 {
            edge3.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge4.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }


}
