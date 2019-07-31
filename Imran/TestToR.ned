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

import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import inet.nodes.inet.StandardHost;
import ned.DatarateChannel;
import inet.nodes.inet.Router;

network TestToR
{



parameters:
        int numhosts;
        int lambdasEdge; //Number of data channels in the fiber connecting edges
        
        types:
        channel cable extends DatarateChannel
        {
            datarate = 10Gbps;
            delay = 0.1us;
        }
submodules:
 		host1: StandardHost {
            parameters:
          //      routingFile = "H1.irt";
                @display("p=46,112");
        }
        
        host2: StandardHost {
            parameters:
            //    routingFile = "H2.irt";
                @display("p=48,272");
        }
        host5: StandardHost {
            parameters:
            //    routingFile = "H2.irt";
                @display("p=48,372");
        }
        
        host6: StandardHost {
            parameters:
            //    routingFile = "H2.irt";
                @display("p=48,472");
        }
		host3: StandardHost {
            parameters:
           //     routingFile = "H3.irt";
                @display("p=200,112");
        }
        
        host4: StandardHost {
            parameters:
            //    routingFile = "H4.irt";
                @display("p=210,272");
        }
        
        
         
        switch1: Router {
            parameters:
                @display("p=200,175");
           
           }
            switch2: Router {
            parameters:
                @display("p=300,175");
           
           }
            configurator: IPv4NetworkConfigurator {
            parameters:
                @display("p=62,119");
                
                config=xml("<config>"+
  
    	"<interface hosts='host{1..2}' address='10.0.1.x' netmask='255.255.255.x'/>"+
    	"<interface hosts='host{5..6}' address='10.0.1.x' netmask='255.255.255.x'/>"+
	   	"<interface hosts='host{3..4}' address='10.0.2.x' netmask='255.255.255.x'/>"+

	   	"<interface hosts='switch*' address='10.0.1.x' netmask='255.255.255.x'/>"+

    	
   	 //  "<route hosts='*' destination='*' netmask='0.0.0.0' interface='eth0' />"+
                  
    	 	
    	 //	 "<interface name='eth*' address='192.168.1.x' netmask='x.x.x.x'/>"+
    	// 	 "<interface hosts='edge2'  address='192.168.2.x' netmask='x.x.x.x'/>"+
    	 	 	
  //  	"<interface hosts='host2' address='10.0.1.x' netmask='255.255.255.x'/>"+
 //   	"<interface hosts='host3' address='10.0.1.x' netmask='255.255.255.x'/>"+
  //  	"<interface hosts='host4' address='10.0.1.x' netmask='255.255.255.x'/>"+
   // 	"<interface hosts='host5' address='10.0.1.x' netmask='255.255.255.x'/>"+
   // 	"<interface hosts='host1' address='10.0.1.x' netmask='255.255.255.x'/>"+
    	
    	"</config>");
			    
                @display("p=62,119");
        
                
        }
           
 connections allowunconnected:   
 //for i=0..numhosts-1 {
 	       host1.ethg++ <--> cable <--> switch1.ethg++;
 	       host2.ethg++ <--> cable <--> switch1.ethg++;
 	       host5.ethg++ <--> cable <--> switch1.ethg++;
 	       host6.ethg++ <--> cable <--> switch1.ethg++;
 	       
 	       host3.ethg++ <--> cable <--> switch2.ethg++;
 	       host4.ethg++ <--> cable <--> switch2.ethg++;

 	       switch1.ethg++ <--> cable <--> switch2.ethg++;
 	                                   
 //}   
 	 //    for i=0..lambdasEdge {
      //      switch1.obsOut[i] -->  switch2.obsIn[i];
       //     switch2.obsOut[i] -->  switch1.obsIn[i];
        //}
           
}

