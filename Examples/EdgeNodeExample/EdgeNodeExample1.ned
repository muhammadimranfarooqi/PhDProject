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

import datacenterssimulation.src.EdgeNode.OBS_EdgeNode;


import inet.nodes.inet.StandardHost;

import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import ned.DatarateChannel;

network EdgeNodeExample1
{
    parameters:

        int numChannelFastSwitch;
        int numChannelSlowSwitch;

    types:
        channel fiber extends DatarateChannel
        {
            datarate = 10Gbps;
            delay = 0.1us;
        }
    submodules:
      // Network 1 hosts



        network1host1: StandardHost {
            parameters:
                routingFile = "network1/H1.irt";
                @display("p=500,100");
        }
        network1host2: StandardHost {
            parameters:
                routingFile = "network1/H2.irt";
                @display("p=500,300");
        }
        network1host3: StandardHost {
            parameters:
                routingFile = "network1/H3.irt";
                @display("p=500,500");
        }
        network1host4: StandardHost {
            parameters:
                routingFile = "network1/H4.irt";
                @display("p=500,700");
        }
        network1host5: StandardHost {
            parameters:
                routingFile = "network1/H5.irt";
                @display("p=500,900");
        }




        network2host1: StandardHost {
            parameters:
                routingFile = "network2/H1.irt";
                @display("p=5000,100");
        }
        network2host2: StandardHost {
            parameters:
                routingFile = "network2/H2.irt";
                @display("p=5000,300");
        }
        network2host3: StandardHost {
            parameters:
                routingFile = "network2/H3.irt";
                @display("p=5000,500");
        }
        network2host4: StandardHost {
            parameters:
                routingFile = "network2/H4.irt";
                @display("p=5000,700");
        }
        network2host5: StandardHost {
            parameters:
                routingFile = "network2/H5.irt";
                @display("p=5000,900");
        }


        network4host1: StandardHost {
            parameters:
                routingFile = "network4/H1.irt";
                @display("p=5000,1100");
        }
        network4host2: StandardHost {
            parameters:
                routingFile = "network4/H2.irt";
                @display("p=5000,1300");
        }
        network4host3: StandardHost {
            parameters:
                routingFile = "network4/H3.irt";
                @display("p=5000,1500");
        }
        network4host4: StandardHost {
            parameters:
                routingFile = "network4/H4.irt";
                @display("p=5000,1700");
        }
        network4host5: StandardHost {
            parameters:
                routingFile = "network4/H5.irt";
                @display("p=5000,1900");
        }

        network3host1: StandardHost {
            parameters:
                routingFile = "network3/H1.irt";
                @display("p=500,1100");
        }
        network3host2: StandardHost {
            parameters:
                routingFile = "network3/H2.irt";
                @display("p=500,1300");
        }
        network3host3: StandardHost {
            parameters:
                routingFile = "network3/H3.irt";
                @display("p=500,1500");
        }
        network3host4: StandardHost {
            parameters:
                routingFile = "network3/H4.irt";
                @display("p=500,1700");
        }
        network3host5: StandardHost {
            parameters:
                routingFile = "network3/H5.irt";
                @display("p=500,1900");
        }


     network5host1: StandardHost {
            parameters:
                routingFile = "network5/H1.irt";
                @display("p=5000,2000");
        }
        network5host2: StandardHost {
            parameters:
                routingFile = "network5/H2.irt";
                @display("p=5000,2100");
        }
        network5host3: StandardHost {
            parameters:
                routingFile = "network5/H3.irt";
                @display("p=5000,2200");
        }
        network5host4: StandardHost {
            parameters:
                routingFile = "network5/H4.irt";
                @display("p=5000,2300");
        }
        network5host5: StandardHost {
            parameters:
                routingFile = "network5/H5.irt";
                @display("p=5000,2400");
        }

        network6host1: StandardHost {
            parameters:
                routingFile = "network6/H1.irt";
                @display("p=500,2000");
        }
        network6host2: StandardHost {
            parameters:
                routingFile = "network6/H2.irt";
                @display("p=500,2100");
        }
        network6host3: StandardHost {
            parameters:
                routingFile = "network6/H3.irt";
                @display("p=500,2200");
        }
        network6host4: StandardHost {
            parameters:
                routingFile = "network6/H4.irt";
                @display("p=500,2300");
        }
        network6host5: StandardHost {
            parameters:
                routingFile = "network6/H5.irt";
                @display("p=500,2400");
        }



     network7host1: StandardHost {
            parameters:
                routingFile = "network7/H1.irt";
                @display("p=5000,2500");
        }
        network7host2: StandardHost {
            parameters:
                routingFile = "network7/H2.irt";
                @display("p=5000,2600");
        }
        network7host3: StandardHost {
            parameters:
                routingFile = "network7/H3.irt";
                @display("p=5000,2700");
        }
        network7host4: StandardHost {
            parameters:
                routingFile = "network7/H4.irt";
                @display("p=5000,2800");
        }
        network7host5: StandardHost {
            parameters:
                routingFile = "network7/H5.irt";
                @display("p=5000,2900");
        }

        network8host1: StandardHost {
            parameters:
                routingFile = "network8/H1.irt";
                @display("p=500,2500");
        }
        network8host2: StandardHost {
            parameters:
                routingFile = "network8/H2.irt";
                @display("p=500,2600");
        }
        network8host3: StandardHost {
            parameters:
                routingFile = "network8/H3.irt";
                @display("p=500,2700");
        }
        network8host4: StandardHost {
            parameters:
                routingFile = "network8/H4.irt";
                @display("p=500,2800");
        }
        network8host5: StandardHost {
            parameters:
                routingFile = "network8/H5.irt";
                @display("p=500,2900");
        }



     network9host1: StandardHost {
            parameters:
                routingFile = "network9/H1.irt";
                @display("p=5000,3000");
        }
        network9host2: StandardHost {
            parameters:
                routingFile = "network9/H2.irt";
                @display("p=5000,3100");
        }
        network9host3: StandardHost {
            parameters:
                routingFile = "network9/H3.irt";
                @display("p=5000,3200");
        }
        network9host4: StandardHost {
            parameters:
                routingFile = "network9/H4.irt";
                @display("p=5000,3300");
        }
        network9host5: StandardHost {
            parameters:
                routingFile = "network9/H5.irt";
                @display("p=5000,3400");
        }

        network10host1: StandardHost {
            parameters:
                routingFile = "network10/H1.irt";
                @display("p=500,3000");
        }
        network10host2: StandardHost {
            parameters:
                routingFile = "network10/H2.irt";
                @display("p=500,3100");
        }
        network10host3: StandardHost {
            parameters:
                routingFile = "network10/H3.irt";
                @display("p=500,3200");
        }
        network10host4: StandardHost {
            parameters:
                routingFile = "network10/H4.irt";
                @display("p=500,3300");
        }
        network10host5: StandardHost {
            parameters:
                routingFile = "network10/H5.irt";
                @display("p=500,3400");
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
         edge5: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules5.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules5.dat";
                routingTable.routingFile = "ToRNode/Edge5Simple.irt";
                @display("p=3500,2000;i=abstract/switch");
        }
         edge6: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules6.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules6.dat";
                routingTable.routingFile = "ToRNode/Edge6Simple.irt";
                @display("p=2000,2000;i=abstract/switch");
        }
         edge7: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules7.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules7.dat";
                routingTable.routingFile = "ToRNode/Edge7Simple.irt";
                @display("p=3500,2500;i=abstract/switch");
        }
         edge8: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules8.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules8.dat";
                routingTable.routingFile = "ToRNode/Edge8Simple.irt";
                @display("p=2000,2500;i=abstract/switch");
        }
         edge9: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules9.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules9.dat";
                routingTable.routingFile = "ToRNode/Edge9Simple.irt";
                @display("p=3500,3000;i=abstract/switch");
        }
         edge10: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules10.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "DispatcherRules10.dat";
                routingTable.routingFile = "ToRNode/Edge10Simple.irt";
                @display("p=2000,3000;i=abstract/switch");
        }
        
        controller: Controller {
            parameters:
                RoutingTableSlowSwitch.routeTableFile = "RoutingFileSlowSwitchsimple.dat";
                RoutingTableFastSwitch.routeTableFile = "RoutingFileFastswitchsimple.dat";

                @display("p=2800,1000;i=block/control");

        }

        slowSwitch: CoreNode {
            parameters:
                @display("p=2800,700;i=abstract/opticalswitch");

        }

        fastSwitch: CoreNode {
            parameters:
                @display("p=2800,1300;i=abstract/opticalswitch");

        }

    connections allowunconnected:

        edge1.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge2.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge3.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge4.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge5.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge6.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge7.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge8.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge9.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge10.pppcontrol <--> fiber <--> controller.pppcontrol++;
        

        slowSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;
        fastSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;

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

 		network5host1.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host2.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host3.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host4.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host5.pppg++ <--> fiber <--> edge5.pppIO++;
  		network6host1.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host2.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host3.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host4.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host5.pppg++ <--> fiber <--> edge6.pppIO++;
  		network7host1.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host2.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host3.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host4.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host5.pppg++ <--> fiber <--> edge7.pppIO++;
  		network8host1.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host2.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host3.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host4.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host5.pppg++ <--> fiber <--> edge8.pppIO++;
  		network9host1.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host2.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host3.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host4.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host5.pppg++ <--> fiber <--> edge9.pppIO++;
  		network10host1.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host2.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host3.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host4.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host5.pppg++ <--> fiber <--> edge10.pppIO++;



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
 		for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge5.pppSlow++;
        }
         for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge6.pppSlow++;
        }
         for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge7.pppSlow++;
        }
         for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge8.pppSlow++;
        }
         for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge9.pppSlow++;
        }
         for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge10.pppSlow++;
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
        for i=0..numChannelFastSwitch-1 {
            edge5.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge6.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge7.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge8.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge9.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge10.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        


}
