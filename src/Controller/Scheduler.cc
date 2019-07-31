//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without //EVen the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

#include "Scheduler.h"
#include <IPv4Datagram.h>

Define_Module(Scheduler);

simsignal_t Scheduler::dupcpdel = SIMSIGNAL_NULL;
simsignal_t Scheduler::controlpacketscheduled = SIMSIGNAL_NULL;


simsignal_t Scheduler::algo1Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo2Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo3Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo4Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo5Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo6Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo7Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo8Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo9Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo10Sig = SIMSIGNAL_NULL;

simsignal_t Scheduler::algo11Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo12Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo13Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo14Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo15Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo16Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo17Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo18Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo19Sig = SIMSIGNAL_NULL;
simsignal_t Scheduler::algo20Sig = SIMSIGNAL_NULL;

void Scheduler::initialize()
{

    dupcpdel = registerSignal("dupcpdel");
    controlpacketscheduled = registerSignal("controlpacketscheduled");

    algo1Sig = registerSignal("algo1");
    algo2Sig = registerSignal("algo2");
    algo3Sig = registerSignal("algo3");
    algo4Sig = registerSignal("algo4");
    algo5Sig = registerSignal("algo5");
    algo6Sig = registerSignal("algo6");
    algo7Sig = registerSignal("algo7");
    algo8Sig = registerSignal("algo8");
    algo9Sig = registerSignal("algo9");
    algo10Sig = registerSignal("algo10");
    algo11Sig = registerSignal("algo11");
    algo12Sig = registerSignal("algo12");
    algo13Sig = registerSignal("algo13");
    algo14Sig = registerSignal("algo14");
    algo15Sig = registerSignal("algo15");
    algo16Sig = registerSignal("algo16");
    algo17Sig = registerSignal("algo17");
    algo18Sig = registerSignal("algo18");
    algo19Sig = registerSignal("algo19");
    algo20Sig = registerSignal("algo20");


    BCPFastChannelSelected =-1;
    BCPSlowChannelSelected =-1 ;

    BCPBidirectionalFastChannelSelected =-1;
    BCPBidirectionalSlowChannelSelected =-1 ;

    shortBurstSize = par("shortBurstSize"); //!< Burst maximum size.

    fastSwitchAddress = par("fastSwitchAddress");
    controllerAddress = par("controllerAddress");
    slowSwitchAddress = par("slowSwitchAddress");

    // TODO - Generated method body
    switchTimeSlowSwitch = par("switchTimeSlowSwitch");

    idleTime = par("idleTime");

    switchTimeFastSwitch = par("switchTimeFastSwitch");
    processingTime = par("processingTime");
    dataRate = par("dataRate");
    dataRateFast = par("dataRateFast");

    guardTime = par("guardTime");

    sendInterval = par("sendInterval");
    timeout = par("timeout");

    numChannelFastSwitch = par("numChannelFastSwitch"); // Number of output data channels (control channel not included).
    numChannelSlowSwitch = par("numChannelSlowSwitch"); // Number of output data channels (control channel not included).


    reqeustCompletionTime = switchTimeFastSwitch; //!< Offset between burst arrival and channel setting order.


    cModule *parent = getParentModule();

    gatesHorizonFastSwitch = check_and_cast<Horizon*>(parent->getSubmodule("horizonfastswitch"));
    gatesHorizonSlowSwitch = check_and_cast<Horizon*>(parent->getSubmodule("horizonslowswitch"));
    routingTableSlowSwitch = check_and_cast<CoreRoutingTable*>(parent->getSubmodule("RoutingTableSlowSwitch"));
    routingTableFastSwitch = check_and_cast<CoreRoutingTable*>(parent->getSubmodule("RoutingTableFastSwitch"));

    propagationTime= 0.000001;


    maxmessageLengthPar = &par("maxmessageLength");

    shortBurstLength = timeout.dbl()/(sendInterval.dbl())*maxmessageLengthPar->longValue();


    maxmsglength = maxmessageLengthPar->longValue()*8/dataRate;

   // maxShortBurstlength = shortBurstLength->longValue()*8/dataRate;

    WATCH (gatesHorizonSlowSwitch);
    WATCH(gatesHorizonSlowSwitch);
    WATCH (starting_PortFast) ;
    WATCH (arrivalPort) ;
    WATCH (ToRID) ;

    WATCH (destinationAddress) ;
    WATCH (sourceNetworkAddress) ;

    WATCH (starting_PortSlow);
    WATCH (fastchannelinputoxc) ;
    WATCH (slowchannelinputoxc);
    WATCH (fastchanneloutputoxc);
    WATCH (slowchanneloutputoxc );
    WATCH (fastchannelinput) ;
    WATCH (slowchannelinput) ;
    WATCH (fastchannelinputbid) ;
    WATCH (slowchannelinputbid) ;
    WATCH (fastchanneloutputhorizon) ;
    WATCH (slowchanneloutputhorizon);
    WATCH (fastchannelinputhorizon) ;
    WATCH (slowchannelinputhorizon);
    WATCH (latestslowhorizon);
    WATCH (latestfasthorizon);
    WATCH (faststart);
    WATCH (slowstart);
    WATCH (burstLength) ;
    WATCH (burstLengthInBits) ;
    WATCH (burstLengthInTime) ;

    WATCH (sendInterval) ;


    WATCH (burstLengthInTimeFast) ;

    WATCH (BCPFastChannelSelected);
    WATCH (BCPSlowChannelSelected) ;
    WATCH (BCPBidirectionalFastChannelSelected);
    WATCH (BCPBidirectionalSlowChannelSelected) ;

    algo1=0,algo2=0,algo3=0,algo4=0,algo5=0,algo6=0,algo7=0,algo8=0,algo9=0,algo10=0,algo11=0,algo12=0,algo13=0,algo14=0;

    WATCH (algo1) ;
    WATCH (algo2) ;
    WATCH (algo3) ;
    WATCH (algo4) ;
    WATCH (algo5) ;
    WATCH (algo6) ;
      WATCH (algo7) ;
      WATCH (algo8) ;
      WATCH (algo9) ;
      WATCH (algo10) ;
      WATCH (algo11) ;
      WATCH (algo12) ;
      WATCH (algo13) ;
      WATCH (algo14) ;

      WATCH(shortBurstSize);
      WATCH (cpd) ;

      WATCH (schedule)     ;
    scheduledhorizon=-1;
    scheduledhorizoninput=-1;

    WATCH (scheduledhorizon);

    WATCH (scheduledhorizoninput);

   scheduledchannelinputoxc=-1;
    scheduledchanneloutputoxc=-1;
    scheduledchannelinput=-1;
    scheduledchanneloutput=-1;



    schedule = false;

    WATCH (scheduledchannelinputoxc);
    WATCH(scheduledchanneloutputoxc);

    WATCH (scheduledchannelinput);
    WATCH (scheduledchanneloutput);
    cpd =0;

}

void Scheduler::handleMessage(cMessage *msg)
{


    fastchannelinput = -1 ;
       slowchannelinput = -1 ;


       fastchannelinputbid =  -1 ;
       slowchannelinputbid =  -1 ;


       fastchanneloutputhorizon = -1 ;
       slowchanneloutputhorizon = -1 ;

       fastchannelinputhorizon = -1 ;
       slowchannelinputhorizon = -1 ;

    ToRID = -1;
    schedule = false;

    destinationAddress=NULL;
    sourceNetworkAddress=NULL;
      scheduledhorizon=-1;
      scheduledchannelinputoxc=-1;
      scheduledchanneloutputoxc=-1;
      scheduledchannelinput=-1;
      scheduledchanneloutput=-1;

      scheduledhorizoninput=-1;

     BCPFastChannelSelected =-1;
     BCPSlowChannelSelected =-1 ;

     BCPBidirectionalFastChannelSelected =-1;
     BCPBidirectionalSlowChannelSelected =-1 ;

     latestconnection=-1;
     latestconnectionfast=-1;

     latestconnectionportslow=-1;
     latestconnectionportfast=-1;
    // TODO - Generated method body


     if(dynamic_cast< IPv4Datagram *> (msg) != NULL){

        IPv4Datagram *bcpip = check_and_cast<IPv4Datagram *> (msg);
        cPacket *bcppacket = bcpip->decapsulate();
        OBS_BurstControlPacket *bcp = check_and_cast<OBS_BurstControlPacket *> (bcppacket);


        delete bcpip;

        //bcp = check_and_cast<OBS_BurstControlPacket *> (msg);

          EV << "Destination Address" << bcp->getDestNetworkAddr();

          destinationAddress = bcp->getDestNetworkAddr();
          sourceNetworkAddress = bcp->getSrcNetworkAddr();
        //  arrivalPort = msg->getArrivalGate()->getIndex();

      //    CoreRoutingTableEntry *route1 = routingTableSlowSwitch->getEntry(bcp->getSrcNetworkAddr());
      //    CoreRoutingTableEntry *route2 = routingTableSlowSwitch->getEntry(bcp->getDestNetworkAddr());

     //     EV << route1->getControl_port();
     //     EV << route2->getControl_port();
      //    EV << route1->getToRAddress();
       //   EV << route2->getToRAddress();


        if(numChannelFastSwitch==0){
            CoreRoutingTableEntry *routeslow = routingTableSlowSwitch->getEntry(bcp->getDestNetworkAddr());

            CoreRoutingTableEntry *routeforsource = routingTableSlowSwitch->getEntry(bcp->getSrcNetworkAddr());
            if(routeforsource == NULL)
                opp_error("Error in routing table query (Scheduler id: %d)",getId());
            ToRID = routeforsource->getControl_port();

            if(routeslow == NULL)
                opp_error("Error in routing table query (Scheduler id: %d)",getId());
            starting_PortSlow = routeslow->getStart_port();
            latestconnectionportslow = gatesHorizonSlowSwitch->findLatestConnection(ToRID*numChannelSlowSwitch,ToRID*numChannelSlowSwitch+numChannelSlowSwitch,starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);

            bool cpduplicate=false;

                if(latestconnectionportslow!=-1){
                    latestconnection = gatesHorizonSlowSwitch->getConnectionTime(latestconnectionportslow);
                    if((latestconnection+5*processingTime+2*propagationTime) >=simTime())
                        cpduplicate = true;
                }
                if(cpduplicate){
                        emit(dupcpdel, bcp);
                        delete bcp;
                        cpd++;

                    }

                    else{

                        emit(controlpacketscheduled, bcp);
       scheduledchanneloutputoxc = gatesHorizonSlowSwitch->findDirectConnection(ToRID*numChannelSlowSwitch,ToRID*numChannelSlowSwitch+numChannelSlowSwitch,starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);
                     if (scheduledchanneloutputoxc!=-1){
                         scheduledhorizon =   gatesHorizonSlowSwitch->getHorizon(scheduledchanneloutputoxc);
                         scheduledchannelinputoxc =   gatesHorizonSlowSwitch->getOutputPort(scheduledchanneloutputoxc);
                         scheduledchannelinput = scheduledchannelinputoxc % numChannelSlowSwitch;
                         scheduledchanneloutput = scheduledchanneloutputoxc % numChannelSlowSwitch;
                         scheduledhorizoninput =   gatesHorizonSlowSwitch->getHorizon(scheduledchannelinputoxc);
                         if (simTime()>=scheduledhorizon)
                             scheduledhorizon = simTime();

                     }


                     slowchannelinputoxc =  gatesHorizonSlowSwitch->findNearestHorizonDifferent(starting_PortSlow,starting_PortSlow+numChannelSlowSwitch,ToRID*numChannelSlowSwitch,(ToRID*numChannelSlowSwitch)+numChannelSlowSwitch);
                     slowchanneloutputoxc =  gatesHorizonSlowSwitch->findNearestHorizonDifferent(ToRID*numChannelSlowSwitch,(ToRID*numChannelSlowSwitch)+numChannelSlowSwitch,starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);


//                     slowchannelinputoxc =  gatesHorizonSlowSwitch->findNearestHorizon(ToRID*numChannelSlowSwitch,(ToRID*numChannelSlowSwitch)+numChannelSlowSwitch);
  //                   slowchanneloutputoxc =  gatesHorizonSlowSwitch->findNearestHorizon(starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);
                     slowchannelinput = slowchannelinputoxc % numChannelSlowSwitch;
                     slowchannelinputbid =  slowchanneloutputoxc % numChannelSlowSwitch;
                     slowchanneloutputhorizon = gatesHorizonSlowSwitch->getHorizon(slowchanneloutputoxc);
                     slowchannelinputhorizon = gatesHorizonSlowSwitch->getHorizon(slowchannelinputoxc);

                     if(slowchanneloutputhorizon>=slowchannelinputhorizon)
                           latestslowhorizon = slowchanneloutputhorizon;
                       else
                           latestslowhorizon = slowchannelinputhorizon;

                        if (simTime()>=latestslowhorizon)
                            slowstart = simTime();
                        else
                            slowstart = latestslowhorizon;

                        burstLength = bcp->getBurstSize(); //Burst length
                        burstLengthInBits = burstLength*8; //Burst length in bits
                        burstLengthInTime = (burstLengthInBits/dataRate);
                        burstLengthInTimeFast = (burstLengthInBits/dataRateFast);


                        if(scheduledchanneloutputoxc!=-1 && scheduledhorizon== scheduledhorizoninput ){
                            if(scheduledhorizon <= (slowstart+switchTimeSlowSwitch)){

                       //         if(scheduledhorizon-simTime()>=switchTimeFastSwitch)
                         //            reqeustCompletionTime = guardTime;


                                Configure *confslow = new  Configure("confslow");
                                bcp->setStartTimeSlow(scheduledhorizon+reqeustCompletionTime);//+(guardTime/2));
                                bcp->setBurstSizeSlow(burstLength);
                                bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
                                bcp->setSlowChannel(scheduledchannelinput);
                                gatesHorizonSlowSwitch->updateHorizon(scheduledchannelinputoxc,scheduledchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());
                                confslow->setInputgate(scheduledchannelinputoxc);
                                confslow->setOutputgate(scheduledchanneloutputoxc);
                                confslow->setStarttime(bcp->getStartTimeSlow());
                                confslow->setEndtime(bcp->getEndTimeSlow());
                              //  EV<<" Current Time: "<<simTime() << "Fast Configuration Time: "<< bcp->getStartTimeSlow() <<"EndTimeSlow"<<bcp->getEndTimeSlow()<<" Confiugration message arrival time: " << simTime()+processingTime << "Burst Length Fast: " << bcp->getBurstSizeSlow();
//                                sendDelayed(confslow,processingTime,"configureOut",0);

                                //sendDelayed(bcp->dup(),processingTime,"out",0);

                                confslow->setByteLength(9);
                                IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                                controlpacketslow->setTimestamp();
                                controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                                controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                                controlpacketslow->setTimeToLive(10);
                                controlpacketslow->encapsulate(confslow);
                                sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                                IPv4Datagram *bcpsource = new IPv4Datagram("BCP Source");
                                bcpsource->setTimestamp();
                                bcpsource->setSrcAddress(IPv4Address(controllerAddress));
                                bcpsource->setDestAddress(IPv4Address(routeforsource->getToRAddress()));
                                bcpsource->setTimeToLive(10);
                                bcpsource->encapsulate(bcp->dup());
                                sendDelayed(bcpsource,processingTime,"out",routeforsource->getControl_switch());
                                bcp->setSlowChannel(scheduledchanneloutput);
                                bcp->setBidirectional(true);

                                IPv4Datagram *bcpdest = new IPv4Datagram("BCP Dest");
                                bcpdest->setTimestamp();
                                bcpdest->setSrcAddress(IPv4Address(controllerAddress));
                                bcpdest->setDestAddress(IPv4Address(routeslow->getToRAddress()));
                                bcpdest->setTimeToLive(10);
                                bcpdest->encapsulate(bcp);
                                sendDelayed(bcpdest,processingTime,"out",routeslow->getControl_switch());

                                algo1++;
                                emit(algo1Sig, bcp);

                            }
                            else{
                                Configure *confslow = new  Configure("confsl");
                                  bcp->setStartTimeSlow(slowstart+switchTimeSlowSwitch);//+(guardTime/2));
                                  bcp->setBurstSizeSlow(burstLength);
                                  bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
                                  bcp->setSlowChannel(slowchannelinput);
                                  gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());
                                  confslow->setInputgate(slowchannelinputoxc);
                                  confslow->setOutputgate(slowchanneloutputoxc);
                                  confslow->setStarttime(bcp->getStartTimeSlow());
                                  confslow->setEndtime(bcp->getEndTimeSlow());
//                                  sendDelayed(confslow,processingTime,"configureOut",0);
 //                                 sendDelayed(bcp->dup(),processingTime,"out",0);
                                //  bcp->setBidirectional(true);
   //                               sendDelayed(bcp,processingTime,"out",routeslow->getControl_port());

                                  confslow->setByteLength(9);
                                  IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                                  controlpacketslow->setTimestamp();
                                  controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                                  controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                                  controlpacketslow->setTimeToLive(10);
                                  controlpacketslow->encapsulate(confslow);
                                  sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                                  IPv4Datagram *bcpsource = new IPv4Datagram("BCP Source");
                                  bcpsource->setTimestamp();
                                  bcpsource->setSrcAddress(IPv4Address(controllerAddress));
                                  bcpsource->setDestAddress(IPv4Address(routeforsource->getToRAddress()));
                                  bcpsource->setTimeToLive(10);
                                  bcpsource->encapsulate(bcp->dup());
                                  sendDelayed(bcpsource,processingTime,"out",routeforsource->getControl_switch());
                                  bcp->setSlowChannel(slowchannelinputbid);
                                  bcp->setBidirectional(true);

                                  IPv4Datagram *bcpdest = new IPv4Datagram("BCP Dest");
                                  bcpdest->setTimestamp();
                                  bcpdest->setSrcAddress(IPv4Address(controllerAddress));
                                  bcpdest->setDestAddress(IPv4Address(routeslow->getToRAddress()));
                                  bcpdest->setTimeToLive(10);
                                  bcpdest->encapsulate(bcp);
                                  sendDelayed(bcpdest,processingTime,"out",routeslow->getControl_switch());


                                  algo2++;
                                  emit(algo2Sig, bcp);


                                }

                            }
                        else{
                            Configure *confslow = new  Configure("confsl");
                            bcp->setStartTimeSlow(slowstart+switchTimeSlowSwitch);//+(guardTime/2));
                            bcp->setBurstSizeSlow(burstLength);
                            bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
                            bcp->setSlowChannel(slowchannelinput);
                            gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());
                            confslow->setInputgate(slowchannelinputoxc);
                            confslow->setOutputgate(slowchanneloutputoxc);
                            confslow->setStarttime(bcp->getStartTimeSlow());
                            confslow->setEndtime(bcp->getEndTimeSlow());
//                            sendDelayed(confslow,processingTime,"configureOut",0);
//                            sendDelayed(bcp->dup(),processingTime,"out",0);
                            //bcp->setBidirectional(true);
//                            sendDelayed(bcp,processingTime,"out",routeslow->getControl_port());
                            confslow->setByteLength(9);
                            IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                            controlpacketslow->setTimestamp();
                            controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                            controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                            controlpacketslow->setTimeToLive(10);
                            controlpacketslow->encapsulate(confslow);
                            sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                            IPv4Datagram *bcpsource = new IPv4Datagram("BCP Source");
                            bcpsource->setTimestamp();
                            bcpsource->setSrcAddress(IPv4Address(controllerAddress));
                            bcpsource->setDestAddress(IPv4Address(routeforsource->getToRAddress()));
                            bcpsource->setTimeToLive(10);
                            bcpsource->encapsulate(bcp->dup());
                            sendDelayed(bcpsource,processingTime,"out",routeforsource->getControl_switch());
                            bcp->setSlowChannel(slowchannelinputbid);
                            bcp->setBidirectional(true);

                            IPv4Datagram *bcpdest = new IPv4Datagram("BCP Dest");
                            bcpdest->setTimestamp();
                            bcpdest->setSrcAddress(IPv4Address(controllerAddress));
                            bcpdest->setDestAddress(IPv4Address(routeslow->getToRAddress()));
                            bcpdest->setTimeToLive(10);
                            bcpdest->encapsulate(bcp);
                            sendDelayed(bcpdest,processingTime,"out",routeslow->getControl_switch());


                            algo3++;
                            emit(algo3Sig, bcp);

                        }





                }




        }

        if(numChannelSlowSwitch==0){
            CoreRoutingTableEntry *routefast = routingTableFastSwitch->getEntry(bcp->getDestNetworkAddr());
               if(routefast == NULL) opp_error("Error in routing table query (Scheduler id: %d)",getId());

               CoreRoutingTableEntry *routeforsource = routingTableFastSwitch->getEntry(bcp->getSrcNetworkAddr());
                        if(routeforsource == NULL)
                            opp_error("Error in routing table query (Scheduler id: %d)",getId());
                        ToRID = routeforsource->getControl_port();


               starting_PortFast = routefast->getStart_port();
               latestconnectionportfast = gatesHorizonFastSwitch->findLatestConnection(ToRID*numChannelFastSwitch,ToRID*numChannelFastSwitch+numChannelFastSwitch,starting_PortFast,starting_PortFast+numChannelFastSwitch);
               bool cpduplicate=false;
               if(latestconnectionportfast!=-1){
                   latestconnectionfast = gatesHorizonFastSwitch->getConnectionTime(latestconnectionportfast);
                   if((latestconnectionfast+2*processingTime+2*propagationTime) >=simTime())
                       cpduplicate = true;
               }
               if(cpduplicate){
                   delete bcp;
                   cpd++;
               }
               else{
                   fastchannelinputoxc =  gatesHorizonFastSwitch->findNearestHorizon(ToRID*numChannelFastSwitch,(ToRID*numChannelFastSwitch)+numChannelFastSwitch);
                   fastchanneloutputoxc =  gatesHorizonFastSwitch->findNearestHorizon(starting_PortFast,starting_PortFast+numChannelFastSwitch);
                   fastchannelinput = fastchannelinputoxc % numChannelFastSwitch;
                   fastchannelinputbid =  fastchanneloutputoxc % numChannelFastSwitch;
                   fastchanneloutputhorizon = gatesHorizonFastSwitch->getHorizon(fastchanneloutputoxc);
                   fastchannelinputhorizon = gatesHorizonFastSwitch->getHorizon(fastchannelinputoxc);

                   if(fastchanneloutputhorizon>=fastchannelinputhorizon)
                       latestfasthorizon = fastchanneloutputhorizon;
                   else
                       latestfasthorizon = fastchannelinputhorizon;


                   if (simTime()>=latestfasthorizon)
                          faststart = simTime();
                      else
                          faststart = latestfasthorizon;


                   burstLength = bcp->getBurstSize(); //Burst length
                   burstLengthInBits = burstLength*8; //Burst length in bits

                   burstLengthInTime = (burstLengthInBits/dataRate);
                   burstLengthInTimeFast = (burstLengthInBits/dataRateFast);

                  Configure *conffast = new  Configure("conffast");
                  bcp->setBurstSizeFast(burstLength);
                  bcp->setStartTimeFast(faststart+switchTimeFastSwitch);//+(guardTime/2));
                  bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
                  bcp->setFastChannel(fastchannelinput);
                  gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());
                  conffast->setInputgate(fastchannelinputoxc);
                  conffast->setOutputgate(fastchanneloutputoxc);
                  //    conf->setByteLength(9);
                  conffast->setStarttime(bcp->getStartTimeFast());
                  conffast->setEndtime(bcp->getEndTimeFast());
                  conffast->setByteLength(9);
                  IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
                  controlpacketfast->setTimestamp();
                  controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
                  controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
                  controlpacketfast->setTimeToLive(10);
                  controlpacketfast->encapsulate(conffast);
                  sendDelayed(controlpacketfast,processingTime,"configureOut",0);

               //   sendDelayed(conffast,processingTime,"configureOut",1);
                  IPv4Datagram *bcpsource = new IPv4Datagram("BCP Source");
                  bcpsource->setTimestamp();
                  bcpsource->setSrcAddress(IPv4Address(controllerAddress));
                  bcpsource->setDestAddress(IPv4Address(routeforsource->getToRAddress()));
                  bcpsource->setTimeToLive(10);
                  bcpsource->encapsulate(bcp->dup());
                  sendDelayed(bcpsource,processingTime,"out",routeforsource->getControl_switch());

//                  sendDelayed(bcp->dup(),processingTime,"out",ToRID);
                  bcp->setFastChannel(fastchannelinputbid);
                  bcp->setBidirectional(true);

                  IPv4Datagram *bcpdest = new IPv4Datagram("BCP Dest");
                  bcpdest->setTimestamp();
                  bcpdest->setSrcAddress(IPv4Address(controllerAddress));
                  bcpdest->setDestAddress(IPv4Address(routefast->getToRAddress()));
                  bcpdest->setTimeToLive(10);
                  bcpdest->encapsulate(bcp);
                  sendDelayed(bcpdest,processingTime,"out",routefast->getControl_switch());
              //    sendDelayed(bcp,processingTime,"out",routefast->getControl_port());
                  algo1++;
        }

        }

   if(numChannelSlowSwitch!=0 && numChannelFastSwitch!=0){

    CoreRoutingTableEntry *routefast = routingTableFastSwitch->getEntry(bcp->getDestNetworkAddr());
     if(routefast == NULL) opp_error("Error in routing table query (Scheduler id: %d)",getId());

     CoreRoutingTableEntry *routeforsource = routingTableFastSwitch->getEntry(bcp->getSrcNetworkAddr());
     if(routeforsource == NULL) opp_error("Error in routing table query (Scheduler id: %d)",getId());
     ToRID = routeforsource->getControl_port();


     CoreRoutingTableEntry *routeslow = routingTableSlowSwitch->getEntry(bcp->getDestNetworkAddr());
          if(routeslow == NULL) opp_error("Error in routing table query (Scheduler id: %d)",getId());

     starting_PortFast = routefast->getStart_port();
     starting_PortSlow = routeslow->getStart_port();



     ////EV << " Input Gate : "<< ToRID;
    // //EV << " Output Gate : "<< msg->getArrivalGate()->getIndex()+numChannelSlowSwitch;
     //EV << " Start port : "<< starting_PortSlow;
     //EV << " End port : "<< starting_PortSlow+numChannelSlowSwitch;


     latestconnectionportslow = gatesHorizonSlowSwitch->findLatestConnection(ToRID*numChannelSlowSwitch,ToRID*numChannelSlowSwitch+numChannelSlowSwitch,starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);
     latestconnectionportfast = gatesHorizonFastSwitch->findLatestConnection(ToRID*numChannelFastSwitch,ToRID*numChannelFastSwitch+numChannelFastSwitch,starting_PortFast,starting_PortFast+numChannelFastSwitch);

     bool cpduplicate=false;

     if(latestconnectionportslow!=-1){
         latestconnection = gatesHorizonSlowSwitch->getConnectionTime(latestconnectionportslow);
         if((latestconnection+5*processingTime+2*propagationTime) >=simTime())
             cpduplicate = true;

     }
     if(latestconnectionportfast!=-1){
             latestconnectionfast = gatesHorizonFastSwitch->getConnectionTime(latestconnectionportfast);
             if((latestconnectionfast+5*processingTime+2*propagationTime) >=simTime())
                 cpduplicate = true;

     }


     if(cpduplicate){
         emit(dupcpdel, bcp);
         delete bcp;
         cpd++;

     }

     else{

         emit(controlpacketscheduled, bcp);


     scheduledchanneloutputoxc = gatesHorizonSlowSwitch->findDirectConnection(ToRID*numChannelSlowSwitch,ToRID*numChannelSlowSwitch+numChannelSlowSwitch,starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);


     if (scheduledchanneloutputoxc!=-1){

         scheduledhorizon =   gatesHorizonSlowSwitch->getHorizon(scheduledchanneloutputoxc);
         scheduledchannelinputoxc =   gatesHorizonSlowSwitch->getOutputPort(scheduledchanneloutputoxc);
         scheduledchannelinput = scheduledchannelinputoxc % numChannelSlowSwitch;
         scheduledchanneloutput = scheduledchanneloutputoxc % numChannelSlowSwitch;
         //EV << " Scheduled Horizon : "<< scheduledhorizon;
         //EV << " Scheduled Channel Output OXC : "<< scheduledchanneloutputoxc;
         //EV << " Scheduled Channel Input OXC : "<< scheduledchannelinputoxc;
         //EV << " Scheduled Channel Input : "<< scheduledchannelinput;
         //EV << " Scheduled Channel Output : "<< scheduledchanneloutput;
         scheduledhorizoninput =   gatesHorizonSlowSwitch->getHorizon(scheduledchannelinputoxc);
         if (simTime()>=scheduledhorizon)
             scheduledhorizon = simTime();

     }

     fastchannelinputoxc =  gatesHorizonFastSwitch->findNearestHorizon(ToRID*numChannelFastSwitch,(ToRID*numChannelFastSwitch)+numChannelFastSwitch);
     fastchanneloutputoxc =  gatesHorizonFastSwitch->findNearestHorizon(starting_PortFast,starting_PortFast+numChannelFastSwitch);

     slowchannelinputoxc =  gatesHorizonSlowSwitch->findNearestHorizonDifferent(starting_PortSlow,starting_PortSlow+numChannelSlowSwitch,ToRID*numChannelSlowSwitch,(ToRID*numChannelSlowSwitch)+numChannelSlowSwitch);
     slowchanneloutputoxc =  gatesHorizonSlowSwitch->findNearestHorizonDifferent(ToRID*numChannelSlowSwitch,(ToRID*numChannelSlowSwitch)+numChannelSlowSwitch,starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);


//     slowchannelinputoxc =  gatesHorizonSlowSwitch->findNearestHorizon(ToRID*numChannelSlowSwitch,(ToRID*numChannelSlowSwitch)+numChannelSlowSwitch);
  //   slowchanneloutputoxc =  gatesHorizonSlowSwitch->findNearestHorizon(starting_PortSlow,starting_PortSlow+numChannelSlowSwitch);


     fastchannelinput = fastchannelinputoxc % numChannelFastSwitch;
     slowchannelinput = slowchannelinputoxc % numChannelSlowSwitch;


     fastchannelinputbid =  fastchanneloutputoxc % numChannelFastSwitch;
     slowchannelinputbid =  slowchanneloutputoxc % numChannelSlowSwitch;


     fastchanneloutputhorizon = gatesHorizonFastSwitch->getHorizon(fastchanneloutputoxc);
     slowchanneloutputhorizon = gatesHorizonSlowSwitch->getHorizon(slowchanneloutputoxc);

     fastchannelinputhorizon = gatesHorizonFastSwitch->getHorizon(fastchannelinputoxc);
     slowchannelinputhorizon = gatesHorizonSlowSwitch->getHorizon(slowchannelinputoxc);


  //   EV <<"slowchannelinputhorizon"<<slowchannelinputhorizon;
  //   EV <<"slowchanneloutputhorizon"<<slowchanneloutputhorizon;

     if(fastchanneloutputhorizon>=fastchannelinputhorizon)
         latestfasthorizon = fastchanneloutputhorizon;
     else
         latestfasthorizon = fastchannelinputhorizon;

     if(slowchanneloutputhorizon>=slowchannelinputhorizon)
           latestslowhorizon = slowchanneloutputhorizon;
       else
           latestslowhorizon = slowchannelinputhorizon;

     if (simTime()>=latestfasthorizon)
            faststart = simTime();
        else
            faststart = latestfasthorizon;

        if (simTime()>=latestslowhorizon)
            slowstart = simTime();
        else
            slowstart = latestslowhorizon;



    //    EV<<"slowchanneloutputhorizon"<<slowchanneloutputhorizon;
    //    EV<<"slowchannelinputhorizon"<<slowchannelinputhorizon;
     //   EV<<"LatestSlow HOrizon "<<latestslowhorizon;


     burstLength = bcp->getBurstSize(); //Burst length
     burstLengthInBits = burstLength*8; //Burst length in bits



     burstLengthInTime = (burstLengthInBits/dataRate);
     burstLengthInTimeFast = (burstLengthInBits/dataRateFast);


 //    EV << "Short Burst Length" << shortBurstLength;
 //    EV << "Burst Length" << burstLength;
 //    EV << "Burst Length in Time" << burstLengthInTime;
 //    EV << "Timeout" << timeout.dbl();
 //    EV << "Sendinterval" << sendInterval.dbl();
 //    EV << "MaxMsgLength" << maxmessageLengthPar->longValue();

  //   simtime_t BCPpropagationdelay = bcp->getArrivalTime()-bcp->getCreationTime();


     //EV << "Fast start horizon " << faststart;
     //EV << "Slow start horizon " << slowstart;





     if(scheduledchanneloutputoxc!=-1 && scheduledhorizon<=(slowstart+2*switchTimeSlowSwitch) ){

        if(scheduledhorizon-simTime()>=switchTimeFastSwitch)
                 reqeustCompletionTime = 2*guardTime;

         if(faststart-simTime()>=switchTimeFastSwitch)
               switchTimeFastSwitch = 2*guardTime;

      if((simTime()-latestslowhorizon)>= idleTime){
             Configure *confslow = new  Configure("confslow");
             gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,switchTimeSlowSwitch+slowstart,switchTimeSlowSwitch+slowstart+guardTime,simTime());
             confslow->setInputgate(slowchannelinputoxc);
             confslow->setOutputgate(slowchanneloutputoxc);
             confslow->setStarttime(switchTimeSlowSwitch+slowstart);
             confslow->setEndtime(switchTimeSlowSwitch+slowstart+guardTime);
             confslow->setByteLength(9);
             IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
             controlpacketslow->setTimestamp();
             controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
             controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
             controlpacketslow->setTimeToLive(10);
             controlpacketslow->encapsulate(confslow);
             sendDelayed(controlpacketslow,processingTime,"configureOut",1);
             emit(algo1Sig, bcp);

         }

         if(faststart<=scheduledhorizon){

                     if((faststart+burstLengthInTimeFast+switchTimeFastSwitch) <= scheduledhorizon){

                         Configure *conffast = new  Configure("conffast");
                         bcp->setBurstSizeFast(burstLength);
                         bcp->setStartTimeFast(faststart+switchTimeFastSwitch);//+(guardTime/2));
                         bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
                         bcp->setFastChannel(fastchannelinput);
                         gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());
                         conffast->setInputgate(fastchannelinputoxc);
                         conffast->setOutputgate(fastchanneloutputoxc);
                         //    conf->setByteLength(9);
                         conffast->setStarttime(bcp->getStartTimeFast());
                         conffast->setEndtime(bcp->getEndTimeFast());
                         conffast->setByteLength(9);
                         IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
                         controlpacketfast->setTimestamp();
                         controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
                         controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
                         controlpacketfast->setTimeToLive(10);
                         controlpacketfast->encapsulate(conffast);
                         sendDelayed(controlpacketfast,processingTime,"configureOut",0);
                       //  goto finished;
                         algo1++;
                         schedule=true;
                         emit(algo2Sig, bcp);

                     }
                     else{


                         if((faststart+switchTimeFastSwitch) >= scheduledhorizon){
                             Configure *confslow = new  Configure("confslow");
                             bcp->setStartTimeSlow(scheduledhorizon+reqeustCompletionTime);//+(guardTime/2));
                             bcp->setBurstSizeSlow(burstLength);
                             bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
                             bcp->setSlowChannel(scheduledchannelinput);
                             gatesHorizonSlowSwitch->updateHorizon(scheduledchannelinputoxc,scheduledchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());
                             confslow->setInputgate(scheduledchannelinputoxc);
                             confslow->setOutputgate(scheduledchanneloutputoxc);
                             confslow->setStarttime(bcp->getStartTimeSlow());
                             confslow->setEndtime(bcp->getEndTimeSlow());
                            // EV<<" Current Time: "<<simTime() << "Fast Configuration Time: "<< bcp->getStartTimeSlow() <<"EndTimeSlow"<<bcp->getEndTimeSlow()<<" Confiugration message arrival time: " << simTime()+processingTime << "Burst Length Fast: " << bcp->getBurstSizeSlow();
                             confslow->setByteLength(9);
                             IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                             controlpacketslow->setTimestamp();
                             controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                             controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                             controlpacketslow->setTimeToLive(10);
                             controlpacketslow->encapsulate(confslow);
                             sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                             algo2++;
                             schedule=true;
                             emit(algo3Sig, bcp);


                         }
                         else
                         {

                          Configure *conffast = new  Configure("conffast");
                          Configure *confslow = new  Configure("confslow");

                          simtime_t tempdiff = ((faststart+burstLengthInTimeFast+switchTimeFastSwitch) - (scheduledhorizon));// * dataRate /8;
                          long temp = tempdiff.dbl()*dataRateFast/8;
                          bcp->setBurstSizeFast(burstLength-temp);
                          bcp->setStartTimeFast(faststart+switchTimeFastSwitch);//+(guardTime/2));

                        //  EV<<" FastStart"<< faststart << "Burst Length in Time "<<burstLengthInTimeFast<<"SwitchTimeFastSwitch"<<switchTimeFastSwitch << "ScheduledHorizon" << scheduledhorizon;
                        //  EV<<"TempDiff: "<<tempdiff<< " Temp: "<<temp<< " Burst Length "<<  burstLength << " Current Time: "<<simTime() << "Fast Configuration Time: "<< bcp->getStartTimeFast() << " Confiugration message arrival time: " << simTime()+processingTime << "Burst Length Fast: " << bcp->getBurstSizeFast();

                          bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
                          bcp->setFastChannel(fastchannelinput);
                          gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());
                          conffast->setInputgate(fastchannelinputoxc);
                          conffast->setOutputgate(fastchanneloutputoxc);
                          //    conf->setByteLength(9);
                          conffast->setStarttime(bcp->getStartTimeFast());
                          conffast->setEndtime(bcp->getEndTimeFast());
                          conffast->setByteLength(9);
                          IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
                          controlpacketfast->setTimestamp();
                          controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
                          controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
                          controlpacketfast->setTimeToLive(10);
                          controlpacketfast->encapsulate(conffast);
                          sendDelayed(controlpacketfast,processingTime,"configureOut",0);


                          bcp->setStartTimeSlow(scheduledhorizon+reqeustCompletionTime);//+(guardTime/2));
                          bcp->setBurstSizeSlow(temp+maxmessageLengthPar->longValue());
                         // bcp->setBurstSizeSlow(burstLength);
                          bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
                          bcp->setSlowChannel(scheduledchannelinput);
                          gatesHorizonSlowSwitch->updateHorizon(scheduledchannelinputoxc,scheduledchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());

                         // EV<<" BurstLengthSlow" <<bcp->getBurstSizeSlow() <<"StartTimeSlow"<< bcp->getStartTimeSlow()<<"EndTimeSlow"<<bcp->getEndTimeSlow();
                          confslow->setInputgate(scheduledchannelinputoxc);
                          confslow->setOutputgate(scheduledchanneloutputoxc);
                          confslow->setStarttime(bcp->getStartTimeSlow());
                          confslow->setEndtime(bcp->getEndTimeSlow());
                          confslow->setByteLength(9);
                          IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                          controlpacketslow->setTimestamp();
                          controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                          controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                          controlpacketslow->setTimeToLive(10);
                          controlpacketslow->encapsulate(confslow);
                          sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                          algo3++;
                          schedule=true;
                          emit(algo4Sig, bcp);


                         }
                     }
                 }
                 else{
                     Configure *confslow = new  Configure("confslow");

                     bcp->setStartTimeSlow(scheduledhorizon+reqeustCompletionTime);//+(guardTime/2));
                     bcp->setBurstSizeSlow(burstLength);
                     bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
                     bcp->setSlowChannel(scheduledchannelinput);
                     gatesHorizonSlowSwitch->updateHorizon(scheduledchannelinputoxc,scheduledchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());
                     confslow->setInputgate(scheduledchannelinputoxc);
                     confslow->setOutputgate(scheduledchanneloutputoxc);
                     confslow->setStarttime(bcp->getStartTimeSlow());
                     confslow->setEndtime(bcp->getEndTimeSlow());
                     confslow->setByteLength(9);
                     IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                     controlpacketslow->setTimestamp();
                     controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                     controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                     controlpacketslow->setTimeToLive(10);
                     controlpacketslow->encapsulate(confslow);
                     sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                     algo4++;
                     schedule=true;
                     emit(algo5Sig, bcp);


                 }

        }
     if(!schedule){
     if(faststart-simTime()>=switchTimeFastSwitch)
           switchTimeFastSwitch = 2*guardTime;

         if(burstLength<=shortBurstSize)
         {
            Configure *conffast = new  Configure("conffast");
            bcp->setBurstSizeFast(burstLength);
            bcp->setStartTimeFast(faststart+switchTimeFastSwitch);//+(guardTime/2));
            bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
            bcp->setFastChannel(fastchannelinput);
            gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());
            conffast->setInputgate(fastchannelinputoxc);
            conffast->setOutputgate(fastchanneloutputoxc);

            conffast->setStarttime(bcp->getStartTimeFast());
            conffast->setEndtime(bcp->getEndTimeFast());
            conffast->setByteLength(9);
            IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
            controlpacketfast->setTimestamp();
            controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
            controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
            controlpacketfast->setTimeToLive(10);
            controlpacketfast->encapsulate(conffast);

            emit(algo6Sig, bcp);

            sendDelayed(controlpacketfast,processingTime,"configureOut",0);
          //  goto finished;
            schedule=true;
            if((simTime()-latestslowhorizon)>= idleTime){

          //  if(simTime()==slowstart){

               Configure *confslow = new  Configure("confslow");
               gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,switchTimeSlowSwitch+slowstart,switchTimeSlowSwitch+slowstart+guardTime,simTime());
               confslow->setInputgate(slowchannelinputoxc);
               confslow->setOutputgate(slowchanneloutputoxc);
               confslow->setStarttime(switchTimeSlowSwitch+slowstart);
               confslow->setEndtime(switchTimeSlowSwitch+slowstart+guardTime);

               confslow->setByteLength(9);
               IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
               controlpacketslow->setTimestamp();
               controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
               controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
               controlpacketslow->setTimeToLive(10);
               controlpacketslow->encapsulate(confslow);
               sendDelayed(controlpacketslow,processingTime,"configureOut",1);
               emit(algo7Sig, bcp);


           }

           }

     }



 if(!schedule){
     if(faststart-simTime()>=switchTimeFastSwitch)
           switchTimeFastSwitch = guardTime;

     emit(algo8Sig, bcp);

     //EV << "Inside Algo :";

     if(faststart<=slowstart){

         if((faststart+burstLengthInTimeFast+switchTimeFastSwitch) <= (switchTimeSlowSwitch+slowstart)){

             Configure *conffast = new  Configure("conffast");
             bcp->setBurstSizeFast(burstLength);
             bcp->setStartTimeFast(faststart+switchTimeFastSwitch);//+(guardTime/2));
             bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
             bcp->setFastChannel(fastchannelinput);
             gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());
             conffast->setInputgate(fastchannelinputoxc);
             conffast->setOutputgate(fastchanneloutputoxc);
             //    conf->setByteLength(9);
             conffast->setStarttime(bcp->getStartTimeFast());
             conffast->setEndtime(bcp->getEndTimeFast());
             conffast->setByteLength(9);
              IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
              controlpacketfast->setTimestamp();
              controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
              controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
              controlpacketfast->setTimeToLive(10);
              controlpacketfast->encapsulate(conffast);
              sendDelayed(controlpacketfast,processingTime,"configureOut",0);

              emit(algo9Sig, bcp);


              if((simTime()-latestslowhorizon)>= idleTime){
                  Configure *confslow = new  Configure("confslow");
                  gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,switchTimeSlowSwitch+slowstart,switchTimeSlowSwitch+slowstart+guardTime,simTime());
                  confslow->setInputgate(slowchannelinputoxc);
                  confslow->setOutputgate(slowchanneloutputoxc);
                  confslow->setStarttime(switchTimeSlowSwitch+slowstart);
                  confslow->setEndtime(switchTimeSlowSwitch+slowstart+guardTime);

                  confslow->setByteLength(9);
                  IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                  controlpacketslow->setTimestamp();
                  controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                  controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                  controlpacketslow->setTimeToLive(10);
                  controlpacketslow->encapsulate(confslow);
                  sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                  emit(algo10Sig, bcp);


              }

              algo10++;
         }
         else{

             Configure *conffast = new  Configure("conffast");
             Configure *confslow = new  Configure("confslow");

              simtime_t tempdiff = ((faststart+burstLengthInTimeFast+switchTimeFastSwitch) - (switchTimeSlowSwitch+slowstart));// * dataRate /8;
              long temp = tempdiff.dbl()*dataRateFast/8;
              bcp->setBurstSizeFast(burstLength-temp);
              bcp->setStartTimeFast(faststart+switchTimeFastSwitch);////+(guardTime/2))
              bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
              bcp->setFastChannel(fastchannelinput);
              gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());

              bcp->setStartTimeSlow(slowstart+switchTimeSlowSwitch);//+(guardTime/2));
              bcp->setBurstSizeSlow(temp+maxmessageLengthPar->longValue());
            //  bcp->setBurstSizeSlow(burstLength);
              bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
              bcp->setSlowChannel(slowchannelinput);
              gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());

              confslow->setInputgate(slowchannelinputoxc);
              confslow->setOutputgate(slowchanneloutputoxc);
              confslow->setStarttime(bcp->getStartTimeSlow());
              confslow->setEndtime(bcp->getEndTimeSlow());

                 //    conf->setByteLength(9);
              confslow->setByteLength(9);
              IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
              controlpacketslow->setTimestamp();
              controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
              controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
              controlpacketslow->setTimeToLive(10);
              controlpacketslow->encapsulate(confslow);
              sendDelayed(controlpacketslow,processingTime,"configureOut",1);
              conffast->setInputgate(fastchannelinputoxc);
              conffast->setOutputgate(fastchanneloutputoxc);
              conffast->setStarttime(bcp->getStartTimeFast());
              conffast->setEndtime(bcp->getEndTimeFast());
                         //    conf->setByteLength(9);


              conffast->setByteLength(9);
              IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
              controlpacketfast->setTimestamp();
              controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
              controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
              controlpacketfast->setTimeToLive(10);
              controlpacketfast->encapsulate(conffast);
              sendDelayed(controlpacketfast,processingTime,"configureOut",0);
              emit(algo11Sig, bcp);

              algo11++;

         }
     }
     else{

         if((slowstart+switchTimeSlowSwitch)<=(faststart+switchTimeFastSwitch)){


             Configure *confslow = new  Configure("confsl");
             bcp->setStartTimeSlow(slowstart+switchTimeSlowSwitch);//+(guardTime/2));
             bcp->setBurstSizeSlow(burstLength);
             bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
             bcp->setSlowChannel(slowchannelinput);
             gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());
             confslow->setInputgate(slowchannelinputoxc);
             confslow->setOutputgate(slowchanneloutputoxc);
             confslow->setStarttime(bcp->getStartTimeSlow());
             confslow->setEndtime(bcp->getEndTimeSlow());
             confslow->setByteLength(9);
             IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
             controlpacketslow->setTimestamp();
             controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
             controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
             controlpacketslow->setTimeToLive(10);
             controlpacketslow->encapsulate(confslow);
             sendDelayed(controlpacketslow,processingTime,"configureOut",1);
             algo12++;
            // schedule = true;
             emit(algo12Sig, bcp);

         }
         else{
               simtime_t tempdiff = ((faststart+burstLengthInTimeFast+switchTimeFastSwitch) - (switchTimeSlowSwitch+slowstart));// * dataRate /8;
               long temp = tempdiff.dbl()*dataRateFast/8;
               if (tempdiff<=0){
                   Configure *conffast = new  Configure("conffast");
                  bcp->setStartTimeFast(faststart+switchTimeFastSwitch);//+(guardTime/2));
                  bcp->setBurstSizeFast(burstLength);
                  bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
                  bcp->setFastChannel(fastchannelinput);
                  gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());
                  conffast->setInputgate(fastchannelinputoxc);
                  conffast->setOutputgate(fastchanneloutputoxc);
                  conffast->setStarttime(bcp->getStartTimeFast());
                  conffast->setEndtime(bcp->getEndTimeFast());
                  //    conf->setByteLength(9);
                  conffast->setByteLength(9);
                   IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
                   controlpacketfast->setTimestamp();
                   controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
                   controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
                   controlpacketfast->setTimeToLive(10);
                   controlpacketfast->encapsulate(conffast);
                   sendDelayed(controlpacketfast,processingTime,"configureOut",0);
                   emit(algo13Sig, bcp);

                   if((simTime()-latestslowhorizon)>= idleTime){
                       Configure *confslow = new  Configure("confslow");
                       gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,switchTimeSlowSwitch+slowstart,switchTimeSlowSwitch+slowstart+guardTime,simTime());
                       confslow->setInputgate(slowchannelinputoxc);
                       confslow->setOutputgate(slowchanneloutputoxc);
                       confslow->setStarttime(switchTimeSlowSwitch+slowstart);
                       confslow->setEndtime(switchTimeSlowSwitch+slowstart+guardTime);

                       confslow->setByteLength(9);
                       IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                       controlpacketslow->setTimestamp();
                       controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                       controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                       controlpacketslow->setTimeToLive(10);
                       controlpacketslow->encapsulate(confslow);
                       sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                       emit(algo14Sig, bcp);

                   }
                 algo13++;
             }
             else{
                 Configure *confslow = new  Configure("confsl");
                 Configure *conffast = new  Configure("conffast");

                   bcp->setBurstSizeFast(burstLength-temp);
                   bcp->setStartTimeFast(faststart+switchTimeFastSwitch);////+(guardTime/2))
                   bcp->setEndTimeFast(bcp->getStartTimeFast()+propagationTime+((bcp->getBurstSizeFast()+7)*8/dataRateFast)+guardTime);
                   bcp->setFastChannel(fastchannelinput);
                   gatesHorizonFastSwitch->updateHorizon(fastchannelinputoxc,fastchanneloutputoxc,bcp->getStartTimeFast(),bcp->getEndTimeFast(),simTime());

                   bcp->setStartTimeSlow(faststart+switchTimeSlowSwitch);//+(guardTime/2));
                   bcp->setBurstSizeSlow(temp+maxmessageLengthPar->longValue());
                  // bcp->setBurstSizeSlow(burstLength);
                   bcp->setEndTimeSlow(bcp->getStartTimeSlow()+propagationTime+((bcp->getBurstSizeSlow()+7)*8/dataRate)+guardTime);
                   bcp->setSlowChannel(slowchannelinput);
                   gatesHorizonSlowSwitch->updateHorizon(slowchannelinputoxc,slowchanneloutputoxc,bcp->getStartTimeSlow(),bcp->getEndTimeSlow(),simTime());

                   confslow->setInputgate(slowchannelinputoxc);
                   confslow->setOutputgate(slowchanneloutputoxc);
                   confslow->setStarttime(bcp->getStartTimeSlow());
                   confslow->setEndtime(bcp->getEndTimeSlow());

                      //    conf->setByteLength(9);
                   confslow->setByteLength(9);
                   IPv4Datagram *controlpacketslow = new IPv4Datagram("Control Slow");
                   controlpacketslow->setTimestamp();
                   controlpacketslow->setSrcAddress(IPv4Address(controllerAddress));
                   controlpacketslow->setDestAddress(IPv4Address(slowSwitchAddress));
                   controlpacketslow->setTimeToLive(10);
                   controlpacketslow->encapsulate(confslow);
                   sendDelayed(controlpacketslow,processingTime,"configureOut",1);
                   conffast->setInputgate(fastchannelinputoxc);
                   conffast->setOutputgate(fastchanneloutputoxc);
                   conffast->setStarttime(bcp->getStartTimeFast());
                   conffast->setEndtime(bcp->getEndTimeFast());
                              //    conf->setByteLength(9);
                   conffast->setByteLength(9);
                    IPv4Datagram *controlpacketfast = new IPv4Datagram("Control Fast");
                    controlpacketfast->setTimestamp();
                    controlpacketfast->setSrcAddress(IPv4Address(controllerAddress));
                    controlpacketfast->setDestAddress(IPv4Address(fastSwitchAddress));
                    controlpacketfast->setTimeToLive(10);
                    controlpacketfast->encapsulate(conffast);
                    sendDelayed(controlpacketfast,processingTime,"configureOut",0);
                   algo14++;
                   emit(algo15Sig, bcp);

             }

         }
     }
 }




     //EV << "Latest Fast Horizon :" << latestfasthorizon;
     //EV << "Latest Slow Horizon:" << latestslowhorizon;


       //EV << "Fast Channel BCP :" << bcp->getFastChannel();
       //EV << "Slow Channel BCP:" << bcp->getSlowChannel();
       //EV << "Fast Burst Size BCP:" << bcp->getBurstSizeFast();
       //EV << "Slow Burst Size BCP :" << bcp->getBurstSizeSlow();
       //EV << "Fast Burst Start BCP:" << bcp->getStartTimeFast();
       //EV << "Slow Burst Start BCP :" << bcp->getStartTimeSlow();

       //EV << "fastchannelinputoxc :" << fastchannelinputoxc;
       //EV << "fastchanneloutputoxc :" << fastchanneloutputoxc;

       //EV << "fastchannelinputoxc :" << fastchannelinputoxc;
       //EV << "fastchanneloutputoxc :" << fastchanneloutputoxc;

       //EV << "fastchannelinputhorizon :" << fastchannelinputhorizon;
       //EV << "fastchanneloutputhorizon :" << fastchanneloutputhorizon;

       //EV << "slowchannelinputhorizon :" << slowchannelinputhorizon;
       //EV << "slowchanneloutputhorizon :" << slowchanneloutputhorizon;


       BCPFastChannelSelected = bcp->getFastChannel();
       BCPSlowChannelSelected = bcp->getSlowChannel();



       IPv4Datagram *bcpsource = new IPv4Datagram("BCP Source");
       bcpsource->setTimestamp();
       bcpsource->setSrcAddress(IPv4Address(controllerAddress));
       bcpsource->setDestAddress(IPv4Address(routeforsource->getToRAddress()));
       bcpsource->setTimeToLive(10);
       bcpsource->encapsulate(bcp->dup());
       sendDelayed(bcpsource,processingTime,"out",routeforsource->getControl_switch());

    if(!schedule){
         if (bcp->getSlowChannel()!=-1){
             bcp->setSlowChannel(slowchannelinputbid);
             BCPBidirectionalSlowChannelSelected = slowchannelinputbid;
         }
         if (bcp->getFastChannel()!=-1){
             bcp->setFastChannel(fastchannelinputbid);
             BCPBidirectionalFastChannelSelected =fastchannelinputbid ;
         }
     }
     else{
         if (bcp->getSlowChannel()!=-1){
             bcp->setSlowChannel(scheduledchanneloutput);
             BCPBidirectionalSlowChannelSelected =scheduledchanneloutput ;
         }
         if (bcp->getFastChannel()!=-1){
             bcp->setFastChannel(fastchannelinputbid);
             BCPBidirectionalFastChannelSelected =fastchannelinputbid;
         }

     }
         //EV << "Fast Channel BCP bid :" << bcp->getFastChannel();
         //EV << "Slow Channel BCP bid:" << bcp->getSlowChannel();



         //EV << "Fast Burst Size BCP bid:" << bcp->getBurstSizeFast();
         //EV << "Slow Burst Size BCP bid:" << bcp->getBurstSizeSlow();



         //EV << "Fast Burst Start BCP bid:" << bcp->getStartTimeFast();
         //EV << "Slow Burst Start BCP bid:" << bcp->getStartTimeSlow();


   //      if(bcp->getSlowChannel()==-1)
    //         delete confslow;
    //     if(bcp->getFastChannel()==-1)
    //         delete conffast;

         bcp->setBidirectional(true);
         IPv4Datagram *bcpdest = new IPv4Datagram("BCP Dest");
         bcpdest->setTimestamp();
         bcpdest->setSrcAddress(IPv4Address(controllerAddress));
         bcpdest->setDestAddress(IPv4Address(routefast->getToRAddress()));
         bcpdest->setTimeToLive(10);
         bcpdest->encapsulate(bcp);
         sendDelayed(bcpdest,processingTime,"out",routefast->getControl_switch());
//         sendDelayed(bcp,processingTime,"out",routefast->getControl_port());
     }

   }
  }
 }

Scheduler::~Scheduler(){


     /*delete  gatesHorizonSlowSwitch;
    delete gatesHorizonFastSwitch;
    delete routingTableSlowSwitch;
    delete routingTableFastSwitch;
*/


}

