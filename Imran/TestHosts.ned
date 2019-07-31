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
import ned.DatarateChannel;
import inet.nodes.inet.StandardHost;
import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;


channel cable extends DatarateChannel
{
    parameters:
        delay = 0.1us;
        datarate = 10Gbps;
}

//
// TODO auto-generated type
//
network TestHosts
{
submodules:
        host[1]: StandardHost {
            parameters:
               
        }
        hostr: StandardHost {
            parameters:
               
                @display("p=48,272");
        }
        
    
       configurator: IPv4NetworkConfigurator {
            
            }
           
 connections:      
 	    
 	       for i=0..1-1 {
 	       host[i].pppg++ <--> cable <--> hostr.pppg++;
           
           }
}
