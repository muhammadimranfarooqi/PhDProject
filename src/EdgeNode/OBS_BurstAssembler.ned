//
// Copyright (C) 2010-2012 Javier Armendariz Silva, Naiara Garcia Royo
// Copyright (C) 2010-2012 Universidad Publica de Navarra
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

//
// This module groups packets into optical bursts and generates signalling messages (BCP).
//
// Check submodule pages for more details.
//
module OBS_BurstAssembler
{
    parameters:
        
        int numChannelFastSwitch; // Number of output data channels (control channel not included).
        int numChannelSlowSwitch; // Number of output data channels (control channel not included).     
        int numPacketBurstifiers; // Number of OBS_PacketBurstifier modules present in the module.

        @display("bgb=522,413");
    gates:
        input in; // Electronic input

   //     output outfast[]; //Optical output
     //   output outslow[]; //Optical output

        inout physSlow[];
        inout physFast[];
  

        input controlIn;
        output controlOut;
        
        output senderin;

    submodules:
        dispatcher: OBS_PacketDispatcher {
            parameters:
                numQueues = numPacketBurstifiers;
                @display("p=72,208;i=block/classifier");
            gates:
                out[numPacketBurstifiers];
        }
        packetBurstifier[numPacketBurstifiers]: OBS_PacketBurstifier {
            parameters:
                @display("i=block/queue;q=burstifierQueue");
        }
        sender: OBS_BurstSender {
            parameters:
                numQueues = numPacketBurstifiers;
                numChannelFastSwitch = numChannelFastSwitch;
                numChannelSlowSwitch = numChannelSlowSwitch;


                @display("p=405,188;i=block/process;q=ScheduledBursts");
            gates:
                in[numPacketBurstifiers];
                outburstifier[numPacketBurstifiers];
       //         outfast[numChannelFastSwitch];
         //       outslow[numChannelSlowSwitch];
        }

        edgeDestQueue: EdgeDestinationQueue {
            parameters:
                @display("p=220,100;q=l2queue;i=block/table");

        }

    connections:
        // Connect the input with the dispatcher
        in --> dispatcher.in;

        controlIn --> sender.controlIn;
        sender.controlOut --> controlOut;


        // Connect OBS_PacketBurstifiers first
        for i=0..numPacketBurstifiers-1 {
            dispatcher.out[i] --> packetBurstifier[i].in;
            packetBurstifier[i].out --> sender.in[i];
            packetBurstifier[i].insender <-- sender.outburstifier[i];
           
        }

        
        // Connect OBS_BurstSender to module's output
        for i=0..numChannelFastSwitch-1 {
            //sender.outfast[i] --> outfast++;
            physFast++ <--> sender.physFast++;
            
        }
        
        sender.outdisassembler --> senderin;
        
        for i=0..numChannelSlowSwitch-1 {
            //sender.outslow[i] --> outslow++;
            physSlow++ <--> sender.physSlow++;
            
        }
}
