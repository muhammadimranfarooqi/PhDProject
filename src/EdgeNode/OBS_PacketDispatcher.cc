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

#include "OBS_PacketDispatcher.h"
#include "IPv4Datagram.h"
Define_Module(OBS_PacketDispatcher);
simsignal_t OBS_PacketDispatcher::sentPkSignal = SIMSIGNAL_NULL;


OBS_PacketDispatcher::~OBS_PacketDispatcher(){
	 //  if (numQueues != 0){
	   //   free(rules);
	  // }
	//   free(edgequeue);
	 //  free(tempqueu);

	  // delete edgequeue;
	  // delete tempqueu;

}

// Open dispatcherRules file, read all rules and create DispatcherRule objects for each one.
void OBS_PacketDispatcher::initialize(){

    cModule *parent = getParentModule();
    edgequeue = check_and_cast<EdgeDestinationQueue*>(parent->getSubmodule("edgeDestQueue"));
    sentPkSignal = registerSignal("sentPk");


 //!< Dispatcher rules.

   numQueues = par("numQueues");

   droppedPacket = 0;
   WATCH(droppedPacket);

   //initialize the statistic variables
   //end of initialization

   /*
   if (numQueues != 0){
	   rules = (OBS_DispatcherRule*)calloc(numQueues,sizeof(OBS_DispatcherRule));
	   //read one line at a time and create the associated rule for every queue
	   char *line = (char*)calloc(1500,sizeof(char)); // Due to this line, we are limited to a maximum of 1500 chars for each line 
	   int i=0;

	   const char* rulesFile = par("dispatcherRules");

	   //If rules file name is empty, show an error message and stop the simulation
	   if(strlen(rulesFile) == 0){
		   opp_error("Rules file not defined");
	   }

	   FILE *ruleFile = fopen(rulesFile,"r");
	 
	   if(ruleFile != NULL){
		   //NOTE: fgets reads until a \n character is found
		  while(fgets(line,1500,ruleFile) != NULL){
		     if(strcmp(line,"\n") != 0 && line[0] != '#'){ //Ignore comments (lines beginning with #)
		        rules[i] = OBS_DispatcherRule(line);
		        i++;
		     }
		  }
	   }
	   else{
		   opp_error("Cannot open rules file");
	   }

	   fclose(ruleFile);
	   //here, i must be equal than numQueues. If not, surely there's a error.
	   if(!(i == numQueues)){
		   printf("(OBS_PacketDispatcher) WARNING: Dispatcher rules number didn't match with PacketBurstifier modules.\n");
	   }
	   free(line);
   }*/
}

// When a packet arrives, it is compared to all rules. If it match to any rule, send it to the corresponding output gate. If not, discard it.
void OBS_PacketDispatcher::handleMessage(cMessage *msg){
   
   IPv4Datagram *pkt = check_and_cast<IPv4Datagram *> (msg);
   //register incoming packet
   //end of register

   tempqueu = edgequeue->getQueue(pkt->getDestAddress().str(true).c_str());

   //Check if the packet matches any rule. It will be sent to the first gate where the rule matches.
   //for(i=0;i < numQueues;i++){
     // if(rules[i].match(msg)){

      // int q = tempqueu1->getQueueNo();

     if (tempqueu->getQueueNo()!=-1){
         emit(sentPkSignal, pkt);

         send(pkt,"out",tempqueu->getQueueNo());



         return;
      }
   //}
   //If packet doesn't match any rule, discard it.
     delete pkt;
   //count discarded packet
   droppedPacket++;   
}

void OBS_PacketDispatcher::finish(){
   recordScalar("Dropped Packets at Dispatcher",droppedPacket);
}
