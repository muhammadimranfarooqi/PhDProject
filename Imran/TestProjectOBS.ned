package datacenterssimulation.Imran;

import datacenterssimulation.src.EdgeNode.OBS_EdgeNode;
import inet.nodes.inet.StandardHost;
import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import ned.DatarateChannel;


network TestProjectOBS
{
    parameters:
        int lambdasEdge1; //Number of data channels in the fiber connecting edge1 and core1
        int lambdasEdge2; //Number of data channels in the fiber connecting edge1 and core1
        int lambdasCore; //Number of data channels in the fiber connecting core1 and core2
         types:
        channel cable extends DatarateChannel
        {
            datarate = 10Gbps;
            delay = 0.1us;
        }
    submodules:
        host1: StandardHost {
            parameters:
                routingFile = "H1.irt";
                @display("p=46,112");
        }
        host2: StandardHost {
            parameters:
                routingFile = "H2.irt";
                @display("p=48,272");
        }
        host3: StandardHost {
            parameters:
                routingFile = "H3.irt";
                @display("p=639,120");
        }
        host4: StandardHost {
            parameters:
                routingFile = "H4.irt";
                @display("p=636,264");
        }
        edge1: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules.dat";
                routingTable.routingFile = "Edge1.irt";
                @display("p=159,112");
        }
        edge2: OBS_EdgeNode {
            parameters:
                obs.assembler.dispatcher.dispatcherRules = "DispatcherRules.dat";
                routingTable.routingFile = "Edge2.irt";
                @display("p=359,112");
       }
         
    connections:
        //Connections between hosts and Edge Nodes
        host1.ethg++ <--> cable <--> edge1.ethIO++;

        host2.ethg++ <--> cable <--> edge1.ethIO++;

        host3.ethg++ <--> cable <--> edge2.ethIO++;

        host4.ethg++ <--> cable <--> edge2.ethIO++;

        //Core 1 connections
        
         
}
