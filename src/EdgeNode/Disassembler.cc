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

#include "Disassembler.h"

Define_Module(Disassembler);

simsignal_t Disassembler::rcvdPkSignal = SIMSIGNAL_NULL;
simsignal_t Disassembler::rcvdWrongBurstsSignal = SIMSIGNAL_NULL;


Disassembler::~Disassembler(){
   //Cleanup receivedBurst queue
 //      delete edgequeue;
  //     delete tempqueu;

}

void Disassembler::initialize(){
    dataRate = par("dataRate");

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

void Disassembler::handleMessage(cMessage *msg){

    if(dynamic_cast< OBS_Burst *> (msg) != NULL){

        OBS_Burst *recvBurst = check_and_cast < OBS_Burst*> (msg);

        tempqueu = edgequeue->getEntry(recvBurst->getSrcNetworkAddr());


        if(strcmp(tempqueu->getSrcNetworkAddr(),recvBurst->getDestNetworkAddr())!=0){


            emit(rcvdWrongBurstsSignal, msg);

        }






        if (recvBurst->isReceptionStart()){
            take(msg); //take ownership
            //EV << "Testing Message " << msg;

            simtime_t packetpropagation; //!< Offset between burst arrival and channel setting order.

            packetpropagation = simTime();

            while(recvBurst->hasMessages()){ //Release packets until burstIni queue is empty
                IPv4Datagram *tempPack;
                tempPack = check_and_cast < IPv4Datagram *> (recvBurst->retrieveMessage());
                packetpropagation += tempPack->getBitLength()/dataRate;
                //: Send packets to an intermediate buffer so all packets won't be released to electrical network at the same time
                sendDelayed(tempPack,packetpropagation-simTime(),"out");
               // send(tempPack,"out");
             }
            emit(rcvdPkSignal, msg);
            delete recvBurst;
        }
        else{
            delete recvBurst;
        }
    }
   // else{
    //    send(msg,"out");

//    }
}

void Disassembler::finish(){
  // recordScalar("received Bursts",recvBursts);
}
