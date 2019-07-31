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

#include "BurstReceiver.h"

Define_Module(BurstReceiver);


simsignal_t BurstReceiver::rcvdPkSignal = SIMSIGNAL_NULL;
simsignal_t BurstReceiver::rcvdWrongBurstsSignal = SIMSIGNAL_NULL;

void BurstReceiver::initialize()
{
    // TODO - Generated method body
    cModule *parent = getParentModule();

    edgequeue = check_and_cast<EdgeDestinationQueue*>(parent->getSubmodule("assembler")->getSubmodule("edgeDestQueue"));


  //  recvBursts = 0;
    //fakeBursts.setName("fakeBurstSize");

    //listSize = 0;
    //VlistSize.setName("listSize");
    rcvdPkSignal = registerSignal("rcvdPk");

    rcvdWrongBurstsSignal = registerSignal("rcvdWrongBursts");


    //WATCH(recvBursts);
    int i;
    for(i=0;i<gateSize("inFast");i++){
        gate("inFast",i)->setDeliverOnReceptionStart(true);
    }

    for(i=0;i<gateSize("inSlow");i++){
           gate("inSlow",i)->setDeliverOnReceptionStart(true);
       }
    gate("assemblerin")->setDeliverOnReceptionStart(true);


    WATCH(rcvdPkSignal);
    WATCH(rcvdWrongBurstsSignal);
}

void BurstReceiver::handleMessage(cMessage *msg)
{
    // TODO - Generated method body
    if(dynamic_cast< OBS_Burst *> (msg) != NULL){

           OBS_Burst *recvBurst = check_and_cast < OBS_Burst*> (msg);

           tempqueu = edgequeue->getEntry(recvBurst->getSrcNetworkAddr());


           if(strcmp(tempqueu->getSrcNetworkAddr(),recvBurst->getDestNetworkAddr())!=0){


               emit(rcvdWrongBurstsSignal, msg);

           }




           if (recvBurst->isReceptionStart()){
               take(msg); //take ownership
               EV << "Testing Message " << msg;

               IPv4Datagram *tempPack;
               while(recvBurst->hasMessages()){ //Release packets until burstIni queue is empty
                   tempPack = check_and_cast < IPv4Datagram *> (recvBurst->retrieveMessage());
                   //: Send packets to an intermediate buffer so all packets won't be released to electrical network at the same time
                   send(tempPack->dup(),"out");
                }
               emit(rcvdPkSignal, msg);
           }
           else{
               delete recvBurst;
           }
       }
      // else{
       //    send(msg,"out");

   //    }
}
BurstReceiver::~BurstReceiver(){
   //Cleanup receivedBurst queue
       free(edgequeue);
       free(tempqueu);

}
