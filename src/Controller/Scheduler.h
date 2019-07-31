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

#ifndef __OBSMODULES_MODIFIED_SCHEDULER_H_
#define __OBSMODULES_MODIFIED_SCHEDULER_H_

#include <omnetpp.h>
#include <Configure_m.h>
#include <Horizon.h>
#include "OBS_BurstControlPacket_m.h"
#include "CoreRoutingTableEntry_m.h"
#include "CoreRoutingTable.h"
#include "Connection_m.h"


/**
 * TODO - Generated class
 */
class Scheduler : public cSimpleModule
{
  private:
    simtime_t switchTimeSlowSwitch; //!< Control unit processing time for each BCP.

    simtime_t maxmsglength; //!< Control unit processing time for each BCP.
    simtime_t maxShortBurstlength; //!< Control unit processing time for each BCP.

    const char *fastSwitchAddress;
    const char *controllerAddress;
    const char *slowSwitchAddress;

    simtime_t switchTimeFastSwitch; //!< Offset between burst arrival and channel setting order.
    simtime_t reqeustCompletionTime; //!< Offset between burst arrival and channel setting order.

    int numChannelFastSwitch; // Number of output data channels (control channel not included).
    int numChannelSlowSwitch; // Number of output data channels (control channel not included).

    Horizon *gatesHorizonSlowSwitch; //!< Pointer to output horizon.
    Horizon *gatesHorizonFastSwitch; //!< Pointer to output horizon.
    CoreRoutingTable *routingTableSlowSwitch; //!< Pointer to routing table.
    CoreRoutingTable *routingTableFastSwitch; //!< Pointer to routing table.

    static simsignal_t dupcpdel;
    static simsignal_t controlpacketscheduled;


    static simsignal_t algo1Sig;
    static simsignal_t algo2Sig;
    static simsignal_t algo3Sig;
    static simsignal_t algo4Sig;
    static simsignal_t algo5Sig;
    static simsignal_t algo6Sig;
    static simsignal_t algo7Sig;
    static simsignal_t algo8Sig;
    static simsignal_t algo9Sig;
    static simsignal_t algo10Sig;

    static simsignal_t algo11Sig;
    static simsignal_t algo12Sig;
    static simsignal_t algo13Sig;
    static simsignal_t algo14Sig;
    static simsignal_t algo15Sig;
    static simsignal_t algo16Sig;
    static simsignal_t algo17Sig;
    static simsignal_t algo18Sig;
    static simsignal_t algo19Sig;
    static simsignal_t algo20Sig;

    //OBS_BurstControlPacket *bcp;
    //Configure *confslow ;
    //Configure *conffast;
  //  int numPortsFast; //!< Number of data channels.
    cPar *maxmessageLengthPar;

    double shortBurstLength;

    double shortBurstSize; //!< Burst maximum size.

  //  int numPortsSlow; //!< Number of data channels.

    int arrivalPort;
    int ToRID;

    const char *destinationAddress;
    const char *sourceNetworkAddress;

    int starting_PortFast ;

    int starting_PortSlow;

    double dataRate; //!< Optical channel data rate.
    double dataRateFast; //!< Optical channel data rate.

    double processingTime;
    double guardTime;
    simtime_t sendInterval;

    simtime_t timeout;
    simtime_t idleTime;


    int fastchannelinputoxc ;
    int slowchannelinputoxc;

    int fastchanneloutputoxc;
    int slowchanneloutputoxc ;


    int fastchannelinput ;
    int slowchannelinput ;


    int fastchannelinputbid ;
    int slowchannelinputbid ;

    int BCPFastChannelSelected;
    int BCPSlowChannelSelected ;

    int BCPBidirectionalFastChannelSelected;
    int BCPBidirectionalSlowChannelSelected ;


    simtime_t fastchanneloutputhorizon ;
    simtime_t slowchanneloutputhorizon;
    simtime_t fastchannelinputhorizon ;
    simtime_t slowchannelinputhorizon;
    simtime_t latestslowhorizon;
    simtime_t latestfasthorizon;
    simtime_t faststart;
    simtime_t slowstart;
    long burstLength ;
    long burstLengthInBits ;
    simtime_t burstLengthInTime ;
    simtime_t burstLengthInTimeFast ;


    simtime_t propagationTime; //!< Control unit processing time for each BCP.

    int cpd;

    int algo1,algo2,algo3,algo4,algo5,algo6,algo7,algo8,algo9,algo10,algo11,algo12,algo13,algo14;

    simtime_t scheduledhorizon,scheduledhorizoninput,latestconnection,latestconnectionfast;

    int scheduledchannelinputoxc,scheduledchannelinput,scheduledchanneloutput, scheduledchanneloutputoxc;

    int latestconnectionportslow,latestconnectionportfast;


    bool schedule ;
  protected:
    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
    virtual ~Scheduler();


};

#endif
