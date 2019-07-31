//
// Copyright (C) 2010-2013 Felix Espina
// Copyright (C) 2010-2013 Universidad Publica de Navarra
//
// This file is part of DataCentersSimulation.
//
// DataCentersSimulation is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// DataCentersSimulation is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with DataCentersSimulation.  If not, see <http://www.gnu.org/licenses/>.
//

package datacenterssimulation.Examples.EdgeNodeExample;
import datacenterssimulation.src.Controller.*;
import datacenterssimulation.src.OpticalSwitch.*;

import datacenterssimulation.src.EdgeNode.OBS_EdgeNode;
import inet.nodes.inet.StandardHost;
import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import ned.DatarateChannel;

network EdgeNodeExampleAuto
{
    parameters:
 
        int lambdasEdge; //Number of data channels in the fiber connecting edges
        int	numChannelFastSwitch; 
   		int	numChannelSlowSwitch; 
   		
   		int hosts = 40;
  types:
        channel fiber extends DatarateChannel
        {
            datarate = 10Gbps;
            delay = 0.1us;
        }
    submodules:
     network1host[hosts] : StandardHost {
            parameters:
                routingFile = "NetworkHosts.irt";
               // @display("p=500,100");
        }
     network2host[hosts] : StandardHost {
          parameters:
				routingFile = "NetworkHosts.irt";
                 // @display("p=5000,300");
        }
        edge1: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
   				numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules1.dat";
                routingTable.routingFile = "ToRNode/Edge1.irt";
            //    @display("p=2000,500");
        }
        edge2: OBS_EdgeNode {
            parameters:
        	    numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
   				numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules2.dat";
                routingTable.routingFile = "ToRNode/Edge2.irt";
              //  @display("p=3500,500");
        }
         configurator: IPv4NetworkConfigurator {
           parameters:
    	config=xml("<config>"+
  
    	"<interface hosts='network1host[*]' address='10.0.x.x' netmask='255.255.x.x'/>"+
  		"<interface hosts='network2host[*]' address='10.1.x.x' netmask='255.255.x.x'/>"+  	
    //	"<interface among='net1hosts[0] edge1' address='192.168.1.x' netmask='255.255.255.0' />"+
   // 	   "<interface among='net2hosts[0] edge2' address='192.168.2.x' netmask='255.255.255.0' />"+
   //        "<interface among='edge1 edge1' address='192.168.60.x' netmask='255.255.255.0' />"+
//           "<route hosts='*' destination='*' netmask='0.0.0.0' interface='eth0' />"+
                  
    	 	
    	 //	 "<interface name='eth*' address='192.168.1.x' netmask='x.x.x.x'/>"+
    	// 	 "<interface hosts='edge2'  address='192.168.2.x' netmask='x.x.x.x'/>"+
    	 	 	
  //  	"<interface hosts='host2' address='10.0.1.x' netmask='255.255.255.x'/>"+
 //   	"<interface hosts='host3' address='10.0.1.x' netmask='255.255.255.x'/>"+
  //  	"<interface hosts='host4' address='10.0.1.x' netmask='255.255.255.x'/>"+
   // 	"<interface hosts='host5' address='10.0.1.x' netmask='255.255.255.x'/>"+
   // 	"<interface hosts='host1' address='10.0.1.x' netmask='255.255.255.x'/>"+
    	
    	"</config>");
			    
              //  @display("p=62,119");
        }
        
        controller: Controller {
            parameters:
            //    @display("p=2800,100");
                          
        }


  		
		slowSwitch: CoreNode {
            parameters:
           //     @display("p=2800,500");
                          
        }
        
        fastSwitch: CoreNode {
            parameters:
              //  @display("p=2800,800");
                          
        }
    connections:
     
         
        edge1.pppcontrol <--> fiber <--> controller.pppcontrol++;
        edge2.pppcontrol <--> fiber <--> controller.pppcontrol++;

        slowSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;
		fastSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;
    
     
		for i=0..hosts-1 {
           network1host[i].pppg++ <--> fiber <--> edge1.pppIO++;
        }
      	for i=0..hosts-1 {
           network2host[i].pppg++ <--> fiber <--> edge2.pppIO++;
        }
    
     for i=0..numChannelSlowSwitch-1 {
            edge1.pppSlow++ <--> fiber <--> slowSwitch.pppIO++;
        }
        for i=0..numChannelSlowSwitch-1 {
           slowSwitch.pppIO++ <--> fiber <--> edge2.pppSlow++ ;
        }
        
     
     for i=0..numChannelFastSwitch-1 {
            edge1.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelSlowSwitch-1 {
            edge2.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        
        //Core 1 connections
 }