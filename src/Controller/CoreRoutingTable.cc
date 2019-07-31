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

#include "CoreRoutingTable.h"

Define_Module(CoreRoutingTable);

CoreRoutingTable::~CoreRoutingTable(){
   while(routingTable.length() > 0){
      delete routingTable.pop();
   }
   routingTable.clear();
}

void CoreRoutingTable::initialize(){
	FILE* routingFile = fopen(par("routeTableFile"),"r");
   if(routingFile == NULL)
	   opp_error("Cannot open forwarding file");

   routingTable.setName("routingTable");

   char* routeString = (char*)calloc(1500,sizeof(char));
   while(fgets(routeString,1500,routingFile) != NULL){
         //Ignore lines which begin with '#'. They're comments
         if(routeString[0] == '#') continue;
         //For some reason fgets does an 'extra' reading after the last element. Try to avoid this 'ghost' element reading
         if(strcmp(routeString,"\n") != 0){
            CoreRoutingTableEntry* entry = new CoreRoutingTableEntry();
            //Use a tokenizer object to analyze string
            cStringTokenizer tokenizer(routeString);
            //Routing table format:
            //inPort inColour inLabel outPort outColour outLabel
            //inPort and outPort don't support the wildcard *
            const char *token = tokenizer.nextToken();
            
            //inPort

            entry->setToRAddress(token);
            token = tokenizer.nextToken();
            entry->setDestNetworkAddr(token);
            token = tokenizer.nextToken();
            entry->setStart_port(atoi(token));
            token = tokenizer.nextToken();
            entry->setControl_port(atoi(token));
            token = tokenizer.nextToken();
            entry->setControl_switch(atoi(token));


        //    EV << "Entry " << entry->getDestNetworkAddr();
        //    EV << "Entry " << entry->getStart_port();

            //Insert into 'routing' table                
            routingTable.insert(entry);

        //    EV << routingTable ;

         }
      }


   free(routeString);
   fclose(routingFile);

 //  for(cQueue::Iterator iter_list(routingTable,1) ; !iter_list.end() ; iter_list--){//back-front
   //      CoreRoutingTableEntry *item = (CoreRoutingTableEntry*) iter_list();
     //    EV<<"Testing Dest in BCP"<<item->getDestNetworkAddr();
    // }
}

//Iterates through the routing table using an iterator and returns when a match is found
/*CoreRoutingTableEntry *CoreRoutingTable::getEntry(const char *destNetworkAddr,int start_port){
	Enter_Method_Silent();
   CoreRoutingTableEntry *item;

   for(cQueue::Iterator iter_list(routingTable,1) ; !iter_list.end() ; iter_list--){//back-front
      item = (CoreRoutingTableEntry*) iter_list();

      if(strcmp(destNetworkAddr,item->getDestNetworkAddr()) == 0 && item->getStart_port() == start_port )
          return item->dup();
   }
   return NULL;
}*/
CoreRoutingTableEntry *CoreRoutingTable::getEntry(const char *destNetworkAddr){
    Enter_Method_Silent();
   CoreRoutingTableEntry *item;

   for(cQueue::Iterator iter_list(routingTable,1) ; !iter_list.end() ; iter_list--){//back-front
      item = (CoreRoutingTableEntry*) iter_list();

//      EV<<"Testing Dest in File "<<destNetworkAddr;
  //    EV<<"Testing Dest in BCP"<<item->getDestNetworkAddr();

      if(strcmp(destNetworkAddr,item->getDestNetworkAddr()) == 0 )
          return item;
   }
   return NULL;
}


