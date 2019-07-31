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
import inet.nodes.ethernet.EtherSwitch;
import ned.DatarateChannel;



network TestStandardHost
{

parameters:
        int numhosts;
        types:
        channel cable extends DatarateChannel
        {
            datarate = 10Gbps;
            delay = 0.1us;
        }
submodules:
        host[numhosts]: StandardHost {
            parameters:
               
               @display("i=device/pc3");
        }
                
        switch: EtherSwitch {
            parameters:
                @display("p=200,175");
           
           }
            configurator: IPv4NetworkConfigurator {
            parameters:
                @display("p=62,119");
        }
           
 connections:   
 for i=0..numhosts-1 {
 	       host[i].ethg++ <--> cable <--> switch.ethg++;
 }   
 	    
 	      
           
           
}
