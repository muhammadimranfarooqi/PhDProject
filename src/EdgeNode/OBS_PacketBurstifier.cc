//
// Copyright (C) 2010-2012 Javier Armendariz Silva, Naiara Garcia Royo, Felix Espina Antolin
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

#include "OBS_PacketBurstifier.h"
#include "IPv4ControlInfo.h"

Define_Module(OBS_PacketBurstifier);

OBS_PacketBurstifier::~OBS_PacketBurstifier(){
       burstContent.clear();
       cancelAndDelete(timeout_msg);
       //free (tempMsg);
       //free(edgequeue);
       //free(tempqueu);
    /*   delete tempMsg;
       delete edgequeue;
       delete tempqueu;
*/
}

// Initialize all variables.
void OBS_PacketBurstifier::initialize(){
    cModule *parent = getParentModule();
    edgequeue = check_and_cast<EdgeDestinationQueue*>(parent->getSubmodule("edgeDestQueue"));
   
   //Initialize everything from ned parameters
   timeout = par("timeout");
   maxSize = par("maxSize");
   numPackets = par("numPackets");
   overflowLastPacket = par("overflowLastPacket");

   cteHeader = par("cteHeader");
   varHeader = par("varHeader");


   //Initialize queue
   burstContent.setName("burstifierQueue");

   //Initialize counters
   int cteHeaderInBits = cteHeader*8;
   burstBits = cteHeaderInBits;
   numBurstPackets = 0;

   //Create timeout message
   timeout_msg = new cMessage("timeout");

   //statistics
   recvPackSizeVec.setName("burstifierInPacketSize");
   avgPacketTime.setName("avgPacketTime");
   recvPackSize.setName("recvPackSize");
   queuedTime.setName("queuedTime");
   burstCounter = 0;

   recordScalar("my ID",getId());

   WATCH(burstSizeBytes);
   OBS_BurstControlPacket *bcp;

   WATCH(burstBits);
   WATCH(burstCounter);
   WATCH(firstPacket_t);




}


// Queue received packages and assemble bursts if any condition is met.
void OBS_PacketBurstifier::handleMessage(cMessage *msg){

   // if(strcmp(msg->getArrivalGate()->getName(),"insender")==0){

    if(dynamic_cast< OBS_BurstControlPacket *> (msg) != NULL){

        if(burstContent.empty()){

            if(timeout_msg->isScheduled())
                cancelEvent(timeout_msg); //Cancel current timeout and schedule a new one
                delete msg;

        }
        else{


            EV << "Arrival Gate: " << msg->getArrivalGate()->getName();
            //IPv4Datagram *bcptesting  = check_and_cast<IPv4Datagram *> (msg);
            //cPacket *bcppacket = bcptesting->decapsulate();
            OBS_BurstControlPacket *bcp = check_and_cast<OBS_BurstControlPacket *> (msg);
            EV << "Received message control bidirectional";

            IPv4Datagram *recvIP = check_and_cast <IPv4Datagram*> (burstContent.get(0));
             tempqueu = edgequeue->getQueue(recvIP->getDestAddress().str(true).c_str());






             if (bcp->getSlowChannel()!=-1 && bcp->getFastChannel()!=-1){
                 OBS_Burst *dividedBurstfast = new OBS_Burst("dividedBurstfast");
                 OBS_Burst *dividedBurstslow = new OBS_Burst("dividedBurstslow");
                 int fastburstsize = bcp->getBurstSizeFast();
                 int slowburstsize = bcp->getBurstSizeSlow();

                 int i=0;
                 while(!(burstContent.empty())){
                     tempMsg = check_and_cast <IPv4Datagram*> (burstContent.get(0));

                     //EV << "Testing contents: "<< tempMsg->getByteLength();

                     if(tempMsg->getByteLength()+dividedBurstfast->getByteLength()<=fastburstsize){
                     //if(dividedBurstfast->getByteLength()<=fastburstsize){
                       tempMsg = check_and_cast < IPv4Datagram *> (burstContent.pop());

                       dividedBurstfast->setBitLength(tempMsg->getBitLength()+dividedBurstfast->getBitLength());
                         dividedBurstfast->insertMessage(tempMsg);
                         i++;
                     }
                   else{break;}
                 }



                 dividedBurstfast->setNumPackets(i);
                 i=0;
                 while(!(burstContent.empty())){
                     tempMsg = check_and_cast <IPv4Datagram*> (burstContent.get(0));
                         if(tempMsg->getByteLength()+dividedBurstslow->getByteLength()<=slowburstsize){
                             tempMsg = check_and_cast < IPv4Datagram *> (burstContent.pop());
                             dividedBurstslow->setBitLength(tempMsg->getBitLength()+dividedBurstslow->getBitLength());
                             dividedBurstslow->insertMessage(tempMsg);
                             i++;
                     }
                         else{break;}

                 }
                 dividedBurstslow->setNumPackets(i);
                 //EV <<"Burst Size fast Burstifier"<<dividedBurstfast->getByteLength();
                 //EV <<"Burst Size slow Burstifier: "<<dividedBurstslow->getByteLength();
                 dividedBurstfast->setBurstifierId(getId());
                 dividedBurstfast->setNumSeq(burstCounter);
                 OBS_BurstifierInfo *info = new OBS_BurstifierInfo();
                 info->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                 info->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                 //info->setBidirectional(true);
                 info->setStartTimeFast(bcp->getStartTimeFast());
                 info->setFastChannel(bcp->getFastChannel());
                 dividedBurstfast->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                 dividedBurstfast->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                 //dividedBurstfast->setBidirectional(true);
                   burstCounter++;
                   dividedBurstfast->setControlInfo(info);
                   dividedBurstslow->setBurstifierId(getId());
                   dividedBurstslow->setNumSeq(burstCounter);
                   OBS_BurstifierInfo *info1 = new OBS_BurstifierInfo();
                   info1->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                   info1->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                   //info1->setBidirectional(true);
                   info1->setStartTimeSlow(bcp->getStartTimeSlow());
                   info1->setSlowChannel(bcp->getSlowChannel());
                   dividedBurstslow->setControlInfo(info1);
                   dividedBurstslow->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                   dividedBurstslow->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                   //dividedBurstslow->setBidirectional(true);

                   burstCounter++;

                   send(dividedBurstfast,"out");
                   send(dividedBurstslow,"out");

                   avgPacketTime.record((simTime() - firstPacket_t) - queuedTime.getMean());
             }

             else
                 if (bcp->getSlowChannel()==-1 && bcp->getFastChannel()!=-1){
                     OBS_Burst *burstfast = new OBS_Burst("BurstFast");
                     int fastburstsize = bcp->getBurstSizeFast();



                     int i=0;
                     while(!(burstContent.empty())){
                         tempMsg = check_and_cast <IPv4Datagram*> (burstContent.get(0));
                         if(tempMsg->getByteLength()+burstfast->getByteLength()<=fastburstsize){
                             tempMsg = check_and_cast < IPv4Datagram *> (burstContent.pop());
                             burstfast->setBitLength(tempMsg->getBitLength()+burstfast->getBitLength());
                             burstfast->insertMessage(tempMsg);
                             i++;
                         }
                         else{break;}
                     }

                     burstfast->setNumPackets(i);
                     //EV <<"Burst Size fast Burstifier"<<burstfast->getByteLength();
                     burstfast->setBurstifierId(getId());
                     burstfast->setNumSeq(burstCounter);
                     OBS_BurstifierInfo *info = new OBS_BurstifierInfo();
                     info->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                     info->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                     //info->setBidirectional(true);
                     info->setStartTimeFast(bcp->getStartTimeFast());
                     info->setFastChannel(bcp->getFastChannel());
                     burstfast->setControlInfo(info);
                     burstfast->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                     burstfast->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                     //burstfast->setBidirectional(true);


                     burstCounter++;
                     avgPacketTime.record((simTime() - firstPacket_t) - queuedTime.getMean());
                     send(burstfast,"out");

                 }
                 else if (bcp->getStartTimeSlow()!=-1 && bcp->getStartTimeFast()==-1){
                     OBS_Burst *burstslow = new OBS_Burst("BurstSlow");
                     int slowburstsize = bcp->getBurstSizeSlow();
                     IPv4Datagram *tempMsg;
                     int i=0;
                     while(!(burstContent.empty())){
                         tempMsg = check_and_cast <IPv4Datagram*> (burstContent.get(0));
                         if(tempMsg->getByteLength()+burstslow->getByteLength()<=slowburstsize){
                             tempMsg = check_and_cast < IPv4Datagram *> (burstContent.pop());
                             burstslow->setBitLength(tempMsg->getBitLength()+burstslow->getBitLength());
                             burstslow->insertMessage(tempMsg);
                             i++;
                         }
                         else{break;}
                     }
                     burstslow->setNumPackets(i);

                     //EV <<"Burst Size slow Burstifier"<<burstslow->getByteLength();

                      burstslow->setBurstifierId(getId());
                      burstslow->setNumSeq(burstCounter);

                      OBS_BurstifierInfo *info1 = new OBS_BurstifierInfo();
                      info1->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                      info1->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                     // info1->setBidirectional(true);
                      info1->setStartTimeSlow(bcp->getStartTimeSlow());
                      info1->setSlowChannel(bcp->getSlowChannel());
                      burstslow->setControlInfo(info1);
                      burstslow->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
                      burstslow->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
                      //burstslow->setBidirectional(true);
                      burstCounter++;
                      avgPacketTime.record((simTime() - firstPacket_t) - queuedTime.getMean());
                      send(burstslow,"out");
                 }
             delete bcp;

             if(burstContent.empty()){
                 if(timeout_msg->isScheduled())
                 cancelEvent(timeout_msg); //Cancel current timeout and schedule a new one
                 burstContent.clear();
                 numBurstPackets = 0;
                 int cteHeaderInBits = cteHeader*8;
                 burstBits = cteHeaderInBits;
                 firstPacket_t = 0;
          //       free (tempMsg);
             }
             else{
                 maxSize = par("maxSize");
                 timeout = par("timeout");
                 tempMsg = check_and_cast <IPv4Datagram*> (burstContent.get(0));
                 firstPacket_t = tempMsg->getArrivalTime();
                 if(timeout_msg->isScheduled())
                     cancelEvent(timeout_msg); //Cancel current timeout and schedule a new one
                 if(firstPacket_t+timeout<=simTime())
                     scheduleAt(simTime(),timeout_msg);
                 else{
                     scheduleAt(firstPacket_t+timeout,timeout_msg);
                 }
                     int cteHeaderInBits = cteHeader*8;
                     burstBits = cteHeaderInBits;
                     numBurstPackets=burstContent.length();
                     for (int i =0;i<burstContent.length();i++){
                         tempMsg = check_and_cast <IPv4Datagram*> (burstContent.get(i));
                         burstBits += tempMsg->getBitLength();
                     }
            //         EV <<"New Burst Bits"<< burstBits;
              //       EV <<"New Timeout"<< tempMsg->getArrivalTime()+timeout;
               //      free (tempMsg);

             }

        }
    }
    else

   if(msg->isSelfMessage()){ //If a self-message is received...
      //Assemble the burst and restart the variables
      cancelEvent(msg);
      if(!burstContent.empty())
          generateBCP();
      //assembleBurst();
   }
   else{
      IPv4Datagram *arrivedMsg = check_and_cast < IPv4Datagram *> (msg);

      //record incoming packet
      recvPackSizeVec.record(arrivedMsg->getByteLength());
      recvPackSize.collect(arrivedMsg->getByteLength());


      if(burstContent.empty()){ // If so, start timeout and initialize queue
          timeout = par("timeout");
          maxSize = par("maxSize");
          numBurstPackets = 0;
          int cteHeaderInBits = cteHeader*8;
          burstBits = cteHeaderInBits;
         scheduleAt(simTime()+timeout,timeout_msg); //Set the timeout
         //Register first packet arrival time
         firstPacket_t = simTime();            
      }

      bool overflowHappened = false;
           int maxSizeInBits = maxSize*8;
           int varHeaderInBits = varHeader*8;

   /*   else if (overflowHappened && !overflowLastPacket){ // Enter if burst assembly is needed before the packet is inserted into the queue
      //If queue is empty at this moment, display an error message because something weird happened :S
         if(burstContent.empty()) opp_error("Attempted to assemble a burst using an empty queue");
      //Assemble burst and restart counters
         assembleBurst();
         if(timeout_msg->isScheduled()) cancelEvent(timeout_msg); //Cancel current timeout and schedule a new one
         scheduleAt(simTime()+timeout,timeout_msg);
         firstPacket_t = simTime();
         //Calculate if overflow happens with the first message
         overflowHappened = false;
         if(((burstBits + arrivedMsg->getBitLength() + varHeaderInBits) > maxSizeInBits)) overflowHappened = true;
      }*/
      //Anyway, insert the current message into the queue
      queuedTime.collect(simTime() - firstPacket_t);
      burstContent.insert(msg);
      burstBits += arrivedMsg->getBitLength() + varHeaderInBits;
      numBurstPackets++;

      //If burst overflow is not allowed, but overflow happens when you insert the first message, show an error message
      if(overflowHappened && !overflowLastPacket) opp_error("Queue overflow happened inserting the first message and you don't allow Queue overflow (overflowLastPacket is false)");
      //If either overflow happened or maximum size/packets reached appending this message, assemble it now!
      if((overflowHappened || numBurstPackets == numPackets) || burstBits >= maxSizeInBits){
          generateBCP();
          //assembleBurst();
         if(timeout_msg->isScheduled()) cancelEvent(timeout_msg);
      }
   }
 }


void OBS_PacketBurstifier::generateBCP(){




   IPv4Datagram *recvIP = check_and_cast <IPv4Datagram*> (burstContent.get(0));


   tempqueu = edgequeue->getQueue(recvIP->getDestAddress().str(true).c_str());

   OBS_BurstControlPacket *bcp = new OBS_BurstControlPacket("BCP");
   int id = rand();
   if(ev.isGUI())
       EV<< "Burst ID:" << id;

   bcp->setBurstId(id);
   bcp->setBurstifierId(getId());
   bcp->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
   bcp->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
   bcp->setBurstSize(burstBits/8);
   bcp->setReceptionStart(true);
   bcp->setNumSeq(burstCounter);

   //burstSizeBytes = burstBits/8;
   //emit(sentControlPkSignal, bcp);

   numBurstPackets = 0;
   int cteHeaderInBits = cteHeader*8;
   burstBits = cteHeaderInBits;
   firstPacket_t = 0;



   send(bcp,"out");

}
/*
void OBS_PacketBurstifier::assembleBurst(){
   // Record into avgPacketTime the average waiting time for all messages from this burst
   avgPacketTime.record((simTime() - firstPacket_t) - queuedTime.getMean());

   IPv4Datagram *recvIP = check_and_cast <IPv4Datagram*> (burstContent.pop());

      //EV<<"Destination Address"<<
     // char*  destnet = recvIP->getDestAddress().str(true);

   tempqueu = edgequeue->getQueue(recvIP->getDestAddress().str(true).c_str());

   //Create burst and insert queue contents
   OBS_Burst *assembledBurst = new OBS_Burst("assembledBurst");
   
   assembledBurst->setNumPackets(numBurstPackets);
   assembledBurst->setBitLength(burstBits);

   assembledBurst->setReceptionStart(true);
  // assembledBurst->setByteLength(burstBits/8);

   assembledBurst->setBurstifierId(getId());
   assembledBurst->setNumSeq(burstCounter);

   assembledBurst->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
   assembledBurst->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());


 //  OBS_BurstifierInfo *info = new OBS_BurstifierInfo();
//   info->setDestNetworkAddr(tempqueu->getDestNetworkAddr());
//   info->setSrcNetworkAddr(tempqueu->getSrcNetworkAddr());
   //info->setDestNetworkAddr()
//   assembledBurst->setControlInfo(info);

   //SenderID will be set once the burst arrives at the sender 
   burstCounter++;


   assembledBurst->insertMessage(recvIP);

   cMessage *tempMsg;
   while(!(burstContent.empty())){

       tempMsg = (cMessage*)burstContent.pop();
       assembledBurst->insertMessage(tempMsg);

   }



   //Cleanup
   burstContent.clear();
   numBurstPackets = 0;
   int cteHeaderInBits = cteHeader*8;
   burstBits = cteHeaderInBits;
   firstPacket_t = 0;
   //Burst finally assembled. Send to output gate
   send(assembledBurst,"out");
}
*/
void OBS_PacketBurstifier::finish(){
      recordScalar("Packets received",recvPackSize.getCount());
      recordScalar("Average packet size",recvPackSize.getMean());
      recordScalar("Average packet delay in queue",queuedTime.getMean());

      recordScalar("Packet size variance",recvPackSize.getVariance());
}
