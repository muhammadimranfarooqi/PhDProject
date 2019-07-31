//
// Copyright (C) 2010-2013 Javier Armendariz Silva, Naiara Garcia Royo, Felix Espina Antolin
// Copyright (C) 2010-2013 Universidad Publica de Navarra
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

#include "OBS_BurstSender.h"
#include "string.h"
#include "IPv4ControlInfo.h"

Define_Module(OBS_BurstSender);


simsignal_t OBS_BurstSender::sentBurstsFastPathSignal = SIMSIGNAL_NULL;
simsignal_t OBS_BurstSender::sentBurstsSlowPathSignal = SIMSIGNAL_NULL;
simsignal_t OBS_BurstSender::sentControlPkSignal = SIMSIGNAL_NULL;
simsignal_t OBS_BurstSender::rcvdControlPkSignal = SIMSIGNAL_NULL;
simsignal_t OBS_BurstSender::rcvdControlPkBidSignal = SIMSIGNAL_NULL;
simsignal_t OBS_BurstSender::NegativeDelay = SIMSIGNAL_NULL;


//simsignal_t OBS_BurstSender::sentHalfBurstsFastPathSignal = SIMSIGNAL_NULL;
//simsignal_t OBS_BurstSender::sentHalfBurstsSlowPathSignal = SIMSIGNAL_NULL;

OBS_BurstSender::~OBS_BurstSender(){

    //scheduledBurst.removeAllBurst();

}

void OBS_BurstSender::initialize(){


    int i;
    for(i=0;i<gateSize("physSlow$i");i++){
           gate("physSlow$i",i)->setDeliverOnReceptionStart(true);
       }

    for(i=0;i<gateSize("physFast$i");i++){
               gate("physFast$i",i)->setDeliverOnReceptionStart(true);
           }


   sentBurstsFastPathSignal = registerSignal("sentBurstsFastPath");
   sentBurstsSlowPathSignal = registerSignal("sentBurstsSlowPath");
  // sentHalfBurstsFastPathSignal = registerSignal("sentHalfBurstsFastPath");
 //  sentHalfBurstsSlowPathSignal = registerSignal("sentHalfBurstsSlowPath");

   sentControlPkSignal = registerSignal("sentControlPk");
   rcvdControlPkSignal = registerSignal("rcvdControlPk");
   rcvdControlPkBidSignal = registerSignal("rcvdControlPkBid");
   NegativeDelay = registerSignal("NegativeDelay");


   cModule *parent = getParentModule();
   edgequeue = check_and_cast<EdgeDestinationQueue*>(parent->getSubmodule("edgeDestQueue"));

   numQueues = par("numQueues");

   //Pick up parameters from .ned

   numChannelFastSwitch = par("numChannelFastSwitch");
   numChannelSlowSwitch = par("numChannelSlowSwitch");

   sourceAddress = par("sourceAddress");
   controllerAddress = par("controllerAddress");

   dataRate = par("dataRate");


   BCPSize = par("BCPSize");
   guardTime = par("guardTime");

   /*
   maxSchedBurstSize = par("maxSchedBurstSize");

   int maxSchedBurstSizeInBits = maxSchedBurstSize*8;
   scheduledBurst.setMaxSize(maxSchedBurstSizeInBits);
   scheduledBurst.setMaxElems((int)par("maxSchedBurstElems"));
*/
   testing = par("testing");

  /* control_is_busy = false;


   waitingBCP.setName("waitingBCPs");

 //  burstSent = 0;

   burstDroppedByQueue = 0;*/
//   burstRecv = 0;
//   WATCH(burstRecv);


   // 'testing' flag allows this module to work as a standalone getModule(independent of BurstAssembler/EdgeNode)
   // If testing is false prevents this module to try to register its interface
   if(testing == false){
        interfaceEntry = registerInterface(dataRate);

        // prepare to fire notifications
        nb = NotificationBoardAccess().get();
     }
   //burstSize.setName("burstSize");

}

// Code taken from INET Router module. Register the OBS interface into the interface table among other things

void OBS_BurstSender::handleMessage(cMessage *msg){
   //declaration of variables used on every condition
  //OBS_BurstSenderInfo *info;

    //EV << " Message Arrival Gate " << msg->getArrivalGate()->getName();


    if(strcmp(msg->getArrivalGate()->getName(),"physFast$i")==0 || strcmp(msg->getArrivalGate()->getName(),"physSlow$i")==0){

        send(msg,"outdisassembler");
    }

    else{


        if(dynamic_cast< OBS_Burst *> (msg) != NULL){
           OBS_Burst *burst = check_and_cast<OBS_Burst *> (msg);
           burst->setSenderId(getId());
           OBS_BurstifierInfo *bid;
//             if(burst->getBidirectional()){
                 bid = check_and_cast <OBS_BurstifierInfo *> (burst->getControlInfo());

                 if(bid->getSlowChannel()!=-1){
                     /*
                     sendPacketTime = bid->getStartTimeSlow()-simTime();
                     while(burst->hasMessages()){
                         tempPack = check_and_cast < IPv4Datagram *> (burst->retrieveMessage());
                         sendDelayed(tempPack->dup(),sendPacketTime,"physSlow$o",bid->getSlowChannel());
                         sendPacketTime = sendPacketTime+((tempPack->getBitLength()+56)/dataRate);

                     }*/
                         burst->setReceptionStart(true);

                         if(bid->getStartTimeSlow()<simTime())
                         {
                             send(burst,"physSlow$o",bid->getSlowChannel());
                             emit(NegativeDelay, bid);
                         }
                         else
                         {
                             sendDelayed(burst,bid->getStartTimeSlow()-simTime(),"physSlow$o",bid->getSlowChannel());
                         }
                         emit(sentBurstsSlowPathSignal, burst);
                 }
                 if(bid->getFastChannel()!=-1){

                     /*
                     sendPacketTime = bid->getStartTimeFast()-simTime();
                     while(burst->hasMessages()){
                         tempPack = check_and_cast < IPv4Datagram *> (burst->retrieveMessage());
                         sendDelayed(tempPack->dup(),sendPacketTime,"physFast$o",bid->getFastChannel());
                         sendPacketTime = sendPacketTime+((tempPack->getBitLength()+56)/dataRate);

                     }*/ burst->setReceptionStart(true);

                         if(bid->getStartTimeFast()<simTime())


                             {
                             send(burst,"physFast$o",bid->getFastChannel());
                             emit(NegativeDelay, bid);

                             }

                         else
                         {
                             sendDelayed(burst,bid->getStartTimeFast()-simTime(),"physFast$o",bid->getFastChannel());
                         }
                         emit(sentBurstsFastPathSignal, burst);


                 }
             }
        /*
             else{
                   int pos=0;
                //   OBS_BurstSenderInfo *myinfo = new OBS_BurstSenderInfo();
                          // Fill myinfo (OBS_BurstSenderInfo) fields
                  //        myinfo->setBurstifierId(burst->getBurstifierId());
                    //      myinfo->setNumSeq(burst->getNumSeq());
                          //       myinfo->setAssignedLambda(wl);

                          //pos = scheduledBurst.insertBurst(burst, horizon[wl]);
                          pos = scheduledBurst.insertBurst(burst);//, horizon_fast[channelfast]);
                          //myinfo->setBurstId(pos);
                       //   OBS_BurstifierInfo *lInfo = (OBS_BurstifierInfo *) burst->removeControlInfo();
                          //myinfo->setLabel(lInfo->getLabel());
                         // myinfo->setDestNetworkAddr(lInfo->getDestNetworkAddr());
//                          myinfo->setSrcNetworkAddr(lInfo->getSrcNetworkAddr());
  //                        delete lInfo;
                          OBS_BurstControlPacket *bcp = new OBS_BurstControlPacket("BCP");
                          //Since iniBCP will be sent now, this time is: sendTime(burst) - current simTime
                          //Fill all BCP fields
                          bcp->setBurstId(pos);
                          bcp->setBurstifierId(burst->getBurstifierId());
                          bcp->setNumSeq(burst->getNumSeq());
                          bcp->setSenderId(getId());
                          bcp->setDestNetworkAddr(burst->getDestNetworkAddr());
                          bcp->setSrcNetworkAddr(burst->getSrcNetworkAddr());
                          bcp->setBurstSize(scheduledBurst.retrieveBurstSize(pos));
                          bcp->setReceptionStart(true);
                          emit(sentControlPkSignal, bcp);
                          send(bcp,"controlOut");
                         }
*/
   }


    if(dynamic_cast< IPv4Datagram *> (msg) != NULL){

        IPv4Datagram *bcpip = check_and_cast<IPv4Datagram *> (msg);
        cPacket *bcppacket = bcpip->decapsulate();
        OBS_BurstControlPacket *bcp = check_and_cast<OBS_BurstControlPacket *> (bcppacket);

        if (bcp->getBidirectional()){
                 tempqueu = edgequeue->getEntry(bcp->getSrcNetworkAddr());
                 emit(rcvdControlPkBidSignal, bcp);
             }
             else{
                 tempqueu = edgequeue->getEntry(bcp->getDestNetworkAddr());
                 emit(rcvdControlPkSignal, bcp);
             }
        send(bcp,"outburstifier",tempqueu->getQueueNo());
        delete bcpip;
    }
    else
        if(dynamic_cast< OBS_BurstControlPacket *> (msg) != NULL){
            OBS_BurstControlPacket *bcp = check_and_cast<OBS_BurstControlPacket *> (msg);
/*
       if(strcmp(msg->getArrivalGate()->getName(),"controlIn")==0){

           if (bcp->getBidirectional()){
               tempqueu = edgequeue->getEntry(bcp->getSrcNetworkAddr());
               emit(rcvdControlPkBidSignal, msg);
           }
           else{
               tempqueu = edgequeue->getEntry(bcp->getDestNetworkAddr());
               emit(rcvdControlPkSignal, msg);
           }
            send(bcp,"outburstifier",tempqueu->getQueueNo());

       }

       else{
*/
           bcp->setSenderId(getId());
           bcp->setByteLength(BCPSize);
           emit(sentControlPkSignal, bcp);
           IPv4Datagram *controlpacket = new IPv4Datagram("Control Packet");
           controlpacket->setTimestamp();
           //controlpacket->setByteLength(BCPSize);
           controlpacket->setSrcAddress(IPv4Address(sourceAddress));
           controlpacket->setDestAddress(IPv4Address(controllerAddress));
           controlpacket->setTimeToLive(10);
           controlpacket->encapsulate(bcp);
           send(controlpacket,"controlOut");

     //  }


       /*
           emit(rcvdControlPkSignal, msg);
              OBS_Burst *burst= scheduledBurst.retrieveBurst(bcp->getBurstId());

              //Fill burst fields
              burst->setName("Burst");
              burst->setBurstifierId(bcp->getBurstifierId());
              burst->setNumSeq(bcp->getNumSeq());

              EV << "Fast Channel: " <<bcp->getFastChannel();
              EV << "Slow Channel: " << bcp->getSlowChannel();
              EV << "Start Time Fast: " << bcp->getStartTimeFast();
              EV << "End Time Fast: " << bcp->getEndTimeFast();
              EV << "Start Time Fast: " << bcp->getStartTimeSlow();
              EV << "End Time Fast: " << bcp->getEndTimeSlow();


              if (bcp->getSlowChannel()!=-1 && bcp->getFastChannel()!=-1){


                  OBS_Burst *dividedBurstfast = new OBS_Burst("dividedBurstfast");
                  OBS_Burst *dividedBurstslow = new OBS_Burst("dividedBurstslow");

                  int fastburstsize = bcp->getBurstSizeFast();

                 // cMessage *tempMsg;
                  IPv4Datagram *tempMsg;

                  EV <<"Burst Size before extraction"<<burst->getByteLength();
                  EV <<"BCP Burst Size Fast: "<<bcp->getBurstSizeFast();
                  EV <<"BCP Burst Size Slow: "<<bcp->getBurstSizeSlow();


                  int i=0,j=0;

                  while (burst->hasMessages()){

                      tempMsg = check_and_cast < IPv4Datagram *> (burst->retrieveMessage());

                      if((tempMsg->getByteLength()+dividedBurstfast->getByteLength())<=fastburstsize){


                      //tempMsg = (cMessage*)burst->retrieveMessage();

                          dividedBurstfast->setBitLength(tempMsg->getBitLength()+dividedBurstfast->getBitLength());
                          dividedBurstfast->insertMessage(tempMsg);
                          i++;
                      }
                      else{

                          dividedBurstslow->setBitLength(tempMsg->getBitLength()+dividedBurstslow->getBitLength());
                          dividedBurstslow->insertMessage(tempMsg);
                          j++;
                      }

                  }
                  dividedBurstfast->setSrcNetworkAddr(burst->getSrcNetworkAddr());
                  dividedBurstfast->setDestNetworkAddr(burst->getDestNetworkAddr());

                  dividedBurstfast->setSenderId(getId());
                  dividedBurstslow->setSenderId(getId());
                  dividedBurstfast->setNumPackets(i);
                  dividedBurstslow->setNumPackets(j);
                  dividedBurstfast->setBurstifierId(bcp->getBurstifierId());
                  dividedBurstfast->setNumSeq(bcp->getNumSeq());
                  dividedBurstslow->setBurstifierId(bcp->getBurstifierId());
                  dividedBurstslow->setNumSeq(bcp->getNumSeq());
                  dividedBurstslow->setSrcNetworkAddr(burst->getSrcNetworkAddr());
                  dividedBurstslow->setDestNetworkAddr(burst->getDestNetworkAddr());



//                  EV <<"Burst Size fast"<<dividedBurstfast->getByteLength();
//                  EV <<"Burst Size slow: "<<dividedBurstslow->getByteLength();
/*
                  sendPacketTime = bcp->getStartTimeFast()-simTime();
                  while(dividedBurstfast->hasMessages()){
                       tempPack = check_and_cast < IPv4Datagram *> (dividedBurstfast->retrieveMessage());
                       sendDelayed(tempPack->dup(),sendPacketTime,"physFast$o",bcp->getFastChannel());
                       sendPacketTime = sendPacketTime+((tempPack->getBitLength()+56)/dataRate);
                  }

                  sendPacketTime = bcp->getStartTimeSlow()-simTime();
                  while(dividedBurstslow->hasMessages()){
                       tempPack = check_and_cast < IPv4Datagram *> (dividedBurstslow->retrieveMessage());
                       sendDelayed(tempPack->dup(),sendPacketTime,"physSlow$o",bcp->getSlowChannel());
                       sendPacketTime = sendPacketTime+((tempPack->getBitLength()+56)/dataRate);
                  }
*/
  /*                dividedBurstfast->setReceptionStart(true);
                  dividedBurstslow->setReceptionStart(true);
                  sendDelayed(dividedBurstfast,bcp->getStartTimeFast()-simTime(),"physFast$o",bcp->getFastChannel());
                  sendDelayed(dividedBurstslow,bcp->getStartTimeSlow()-simTime(),"physSlow$o",bcp->getSlowChannel());
                  emit(sentHalfBurstsFastPathSignal, dividedBurstfast);
                  emit(sentHalfBurstsSlowPathSignal, dividedBurstslow);

                  delete burst;

              }
              else
                  if (bcp->getSlowChannel()==-1 && bcp->getFastChannel()!=-1){
/*
                      sendPacketTime = bcp->getStartTimeFast()-simTime();
                        while(burst->hasMessages()){
                             tempPack = check_and_cast < IPv4Datagram *> (burst->retrieveMessage());
                             sendDelayed(tempPack->dup(),sendPacketTime,"physFast$o",bcp->getFastChannel());
                             sendPacketTime = sendPacketTime+((tempPack->getBitLength()+56)/dataRate);
                        }
                        */
      /*                burst->setReceptionStart(true);
                      sendDelayed(burst,bcp->getStartTimeFast()-simTime(),"physFast$o",bcp->getFastChannel());
                      emit(sentBurstsFastPathSignal, burst);


                  }
                  else if (bcp->getSlowChannel()!=-1 && bcp->getFastChannel()==-1){
/*
                      sendPacketTime = bcp->getStartTimeSlow()-simTime();
                      while(burst->hasMessages()){
                           tempPack = check_and_cast < IPv4Datagram *> (burst->retrieveMessage());
                           sendDelayed(tempPack->dup(),sendPacketTime,"physSlow$o",bcp->getSlowChannel());
                           sendPacketTime = sendPacketTime+((tempPack->getBitLength()+56)/dataRate);
                      }
                      */
        /*              burst->setReceptionStart(true);
                      sendDelayed(burst,bcp->getStartTimeSlow()-simTime(),"physSlow$o",bcp->getSlowChannel());
                      emit(sentBurstsSlowPathSignal, burst);
                  }


              scheduledBurst.removeBurst(bcp->getBurstId());

              delete msg;
              //Update the successful sends counter
            //  burstSent++;
//
              //update horizon value
//                    horizon[wl] = horizon[wl] + (burst->getBitLength()/dataRate) + guardTime;

                //Register horizon value
  //              horizonVec[wl]->record(horizon[wl]);
       }*/

    }
}

void OBS_BurstSender::finish(){
 //  recordScalar("burst sent",burstSent);
//   recordScalar("burst dropped by reaching Minimum Offset",burstDroppedByOffset);
 //  recordScalar("burst dropped by queue",burstDroppedByQueue);

}

//This method returns the first of the smallest lambdas available. Just a plain minimum algorithm
/*
int OBS_BurstSender::findNearestHorizonSlowSwitch(){
   int min = 0;
   int i;
   for(i=0;i<numChannelSlowSwitch;i++){
      if(horizon_slow[min] > horizon_slow[i])
         min = i;
   }
   return min;
}
int OBS_BurstSender::findNearestHorizonFastSwitch(){
   int min = 0;
   int i;
   for(i=0;i<numChannelFastSwitch;i++){
      if(horizon_fast[min] > horizon_fast[i])
         min = i;
   }
   return min;
}
*/

InterfaceEntry* OBS_BurstSender::registerInterface (double datarate){
    InterfaceEntry *e = new InterfaceEntry(this);

    const char * s = getParentModule()->getParentModule()->getFullName();
    std::string name;
    for (; *s; s++){
         if (isalnum(*s)){
             name += *s;
         }
    }
    e->setName(name.c_str());

    // data rate
    e->setDatarate(datarate);

    // generate a link-layer address to be used as interface token for IPv6
    InterfaceToken token(0, simulation.getUniqueNumber(), 64);
    e->setInterfaceToken(token);

    // MTU: typical values are 576 (Internet de facto), 1500 (Ethernet-friendly),
    // 4000 (on some point-to-point links), 4470 (Cisco routers default, FDDI compatible)
    e->setMtu(4470);

    // capabilities
    e->setMulticast(true);
    e->setPointToPoint(true);

    // add
    IInterfaceTable *ift = InterfaceTableAccess().getIfExists();
    if (ift)
    ift->addInterface(e);
    //Maybe this could be useful in the future...
//  e->setNodeOutputGateId(e->getNodeOutputGateId()-lambda*idInterfaz);
    //e->setNodeOutputGateId(e->getNodeOutputGateId()-lambda+1);

    return e;
}
