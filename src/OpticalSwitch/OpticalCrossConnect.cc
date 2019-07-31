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

#include "OpticalCrossConnect.h"

#include "opp_utils.h"
#include "IInterfaceTable.h"
#include "InterfaceTableAccess.h"
#include "IPassiveQueue.h"
#include "NotificationBoard.h"
#include "NotifierConsts.h"

#include "INETDefs.h"

#include "PPPFrame_m.h"
#include "TxNotifDetails.h"
#include "INotifiable.h"
#include "OBS_Burst.h"

Define_Module(OpticalCrossConnect);
simsignal_t OpticalCrossConnect::rcvdPkSignal = SIMSIGNAL_NULL;
simsignal_t OpticalCrossConnect::dropPkConfSignal = SIMSIGNAL_NULL;
simsignal_t OpticalCrossConnect::dropPkCongSignal = SIMSIGNAL_NULL;



OpticalCrossConnect::~OpticalCrossConnect(){
	free(schedulingTable);
    cancelAndDelete(timeout_msg);


}

void OpticalCrossConnect::initialize(){
    timeout_msg = new cMessage("timeout");

   // All input gates initialized to -1
   schedulingTable = (int*)calloc(gateSize("phys$i"),sizeof(int));
   int i;
   for(i=0;i<gateSize("phys$i");i++){
      schedulingTable[i] = -1;
      gate("phys$i",i)->setDeliverOnReceptionStart(true);
      WATCH(schedulingTable[i]);
   }

   rcvdPkSignal = registerSignal("rcvdPk");
   dropPkCongSignal = registerSignal("dropPkCongestion");
   dropPkConfSignal = registerSignal("dropPkNotConf");

   ThroughputVec.setName("ThroughputVector");
   ThroughputVec2.setName("ThroughputVector2");

   Throughput.setName("Throughput");

   ThroughputInterval.setName("ThroughputInterval");

   scheduleAt(simTime(),timeout_msg);


}

void OpticalCrossConnect::handleMessage(cMessage *msg){

    if(msg->isSelfMessage()){ //If a self-message is received...
         //Assemble the burst and restart the variables
         cancelEvent(msg);
         ThroughputVec2.record((ThroughputInterval.getSum()*8/simTime())/(1024*1024*1024));
         ThroughputVec.record((Throughput.getSum()*8/simTime())/(1024*1024*1024));

         ThroughputInterval.clearResult();
         scheduleAt(simTime()+0.05,timeout_msg);

    }
    else{
        if(!timeout_msg->isScheduled()){
            scheduleAt(simTime()+0.05,timeout_msg);
       }


   //Pretty easy algorithm: check if input gate has a scheduled connection and send the message to assigned output gate.
   cGate *gate = msg->getArrivalGate();

   //EV << "Configuration Message Delay" << msg->getArrivalTime()-msg->getCreationTime();
   //EV << "Arrival Gate Index" << gate->getIndex();

   if(schedulingTable[gate->getIndex()] == -1)
   {
       emit(dropPkConfSignal, msg);
       delete msg; // Output gate not assigned. Drop burst

   }

   else{

       emit(rcvdPkSignal, msg);


       // remember the output gate now, to speed up send()


   /*    if(simTime()< gateHalf("phys", cGate::OUTPUT,gate->getIndex())->getTransmissionChannel()->getTransmissionFinishTime())
       {
           delete msg; // Output gate not assigned. Drop burst
           emit(dropPkSignal, msg);

       }
       else{*/

       simtime_t txfinishTime = gateHalf("phys", cGate::OUTPUT,schedulingTable[gate->getIndex()])->getTransmissionChannel()->getTransmissionFinishTime();
       //EV << "Outgoing gate Index" << schedulingTable[gate->getIndex()];
       //EV << "txfinishTime" << txfinishTime;
       //EV << "Current Time:" << simTime();

       if(simTime()<txfinishTime){
           emit(dropPkCongSignal, msg);

           delete msg; // Output gate not assigned. Drop burst

           //EV << "Message Deleted:";

       }
       else{
           OBS_Burst *arrivedMsg = check_and_cast < OBS_Burst *> (msg);
           Throughput.collect(arrivedMsg->getByteLength());
           ThroughputInterval.collect(arrivedMsg->getByteLength());

           send(msg,"phys$o",schedulingTable[gate->getIndex()]);
       }
   }
    }

 //  send(msg,"out",5);
}

void OpticalCrossConnect::setGate(int inGate,int outGate){
   Enter_Method("programming gate connection %d -> %d",inGate,outGate);

 //  if(schedulingTable[inGate] != -1) opp_error("Attempting to schedule an already scheduled input channel. Channel id: %d",inGate);
   schedulingTable[inGate] = outGate;
}

void OpticalCrossConnect::unsetGate(int inGate){
   Enter_Method("unprogramming gate %d",inGate);
   schedulingTable[inGate] = -1;
}
