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

#include "EdgeDestinationQueue.h"

Define_Module(EdgeDestinationQueue);

EdgeDestinationQueue::~EdgeDestinationQueue(){
   while(routingTable.length() > 0){
      delete routingTable.pop();
   }
   routingTable.clear();

}

void EdgeDestinationQueue::initialize(){
	FILE* routingFile = fopen(par("routeTableFile"),"r");
   if(routingFile == NULL)
	   opp_error("Cannot open forwarding file");

   routingTable.setName("routingTable");
int i=0;
   char* routeString = (char*)calloc(1500,sizeof(char));
   while(fgets(routeString,1500,routingFile) != NULL){
         //Ignore lines which begin with '#'. They're comments
         if(routeString[0] == '#') continue;
         //For some reason fgets does an 'extra' reading after the last element. Try to avoid this 'ghost' element reading
         if(strcmp(routeString,"\n") != 0){
             EdgeDestinationQueueEntry* entry = new EdgeDestinationQueueEntry();
            //Use a tokenizer object to analyze string
            cStringTokenizer tokenizer(routeString);
            //Routing table format:
            const char *token = tokenizer.nextToken();
            token = tokenizer.nextToken();
            //inPort

            entry->setDestNetworkAddr(token);
            token = tokenizer.nextToken();

            entry->setSubNetAddr(token);
            token = tokenizer.nextToken();
            entry->setSrcNetworkAddr(token);

            entry->setQueueNo(i);

           // entry->setStart_port(atoi(token));

            //EV << "Entry Destination: " << entry->getDestNetworkAddr();
            //EV << "Entry Subnet Address: " << entry->getSubNetAddr();
            //EV << "Entry Queue No: " << entry->getQueueNo();
            //EV << "Entry Source Network Address: " << entry->getSrcNetworkAddr();

            //Insert into 'routing' table                
            routingTable.insert(entry);
            i++;
        //    //EV << routingTable ;

         }
      }


   free(routeString);
   fclose(routingFile);

 //  for(cQueue::Iterator iter_list(routingTable,1) ; !iter_list.end() ; iter_list--){//back-front
   //      CoreRoutingTableEntry *item = (CoreRoutingTableEntry*) iter_list();
     //    //EV<<"Testing Dest in BCP"<<item->getDestNetworkAddr();
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
EdgeDestinationQueueEntry *EdgeDestinationQueue::getEntry(const char *destNetworkAddr){
    Enter_Method_Silent();
    EdgeDestinationQueueEntry *item;

   for(cQueue::Iterator iter_list(routingTable,1) ; !iter_list.end() ; iter_list--){//back-front
      item = (EdgeDestinationQueueEntry*) iter_list();

//      //EV<<"Testing Dest in File "<<destNetworkAddr;
  //    //EV<<"Testing Dest in BCP"<<item->getDestNetworkAddr();

      if(strcmp(destNetworkAddr,item->getDestNetworkAddr()) == 0 )
          return item;
   }
   return NULL;
}

EdgeDestinationQueueEntry *EdgeDestinationQueue::getQueue(const char *destAddr){
    Enter_Method_Silent();
    EdgeDestinationQueueEntry *item;

   for(cQueue::Iterator iter_list(routingTable,1) ; !iter_list.end() ; iter_list--){//back-front
      item = (EdgeDestinationQueueEntry*) iter_list();

      if ((IsIPInRange(destAddr,item->getDestNetworkAddr(),item->getSubNetAddr())))
      {
          return item;
      }
//      EV<<"Testing Dest in File "<<destNetworkAddr;
  //    EV<<"Testing Dest in BCP"<<item->getDestNetworkAddr();

    //  if(strcmp(destAddr,item->getDestNetworkAddr()) == 0 )
      //    return item->dup();
   }
   return NULL;
}

const char *EdgeDestinationQueue::getDestinationNetworkAddress(const char *destAddr){

          char *cstr = strdup(destAddr);
          char *token ;
          token = strtok(cstr,".");
          string temp ;
          int i=0;
          while(token != NULL){
            ///  EV <<"Token " << token;
              if (i<3){
                  temp += token ;
                  temp += "." ;}
              else
                  temp += "0";
              token = strtok (NULL, ".");
              i++;
          }
          free(token);
          free(cstr);
          return temp.c_str();

}



uint32_t EdgeDestinationQueue::IPToUInt(const std::string ip) {
    int a, b, c, d;
    uint32_t addr = 0;

    if (sscanf(ip.c_str(), "%d.%d.%d.%d", &a, &b, &c, &d) != 4)
        return 0;

    addr = a << 24;
    addr |= b << 16;
    addr |= c << 8;
    addr |= d;
    return addr;
}
/*
void test(const std::string ip, const std::string network, const std::string mask, bool expected) {
    if (IsIPInRange(ip, network, mask) != expected) {
        printf("Failed! %s %s %s %s\n", ip.c_str(), network.c_str(), mask.c_str(), expected ? "True" : "False");
    } else {
        printf("Success! %s %s %s %s\n", ip.c_str(), network.c_str(), mask.c_str(), expected ? "True" : "False");
    }
}


int main(int argc, char **argv) {
    std::string ip(argv[1]);

    test("192.168.1.1", "192.168.1.0", "255.255.255.0", true);
    test("192.168.1.1", "192.168.1.2", "255.255.255.255", false);
    test("192.168.1.3", "192.168.1.2", "255.255.255.255", false);

    test("220.1.1.22", "192.168.1.0", "255.255.255.0", false);
    test("220.1.1.22", "220.1.1.22", "255.255.255.255", true);
    test("220.1.1.22", "220.1.1.23", "255.255.255.255", false);
    test("220.1.1.22", "220.1.1.21", "255.255.255.255", false);

    test("0.0.0.1", "0.0.0.0", "0.0.0.0", true);
    test("192.168.1.2", "10.0.0.1", "255.255.255.255", false);

    return 0;
}
*/
bool EdgeDestinationQueue::IsIPInRange(const std::string ip, const std::string network, const std::string mask) {
    uint32_t ip_addr = IPToUInt(ip);
    uint32_t network_addr = IPToUInt(network);
    uint32_t mask_addr = IPToUInt(mask);

    uint32_t net_lower = (network_addr & mask_addr);
    uint32_t net_upper = (net_lower | (~mask_addr));

    if (ip_addr >= net_lower &&
        ip_addr <= net_upper)
        return true;
    return false;
}


