//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/messages/OBS_BurstControlPacket.msg.
//

#ifndef _OBS_BURSTCONTROLPACKET_M_H_
#define _OBS_BURSTCONTROLPACKET_M_H_

#include <omnetpp.h>

// opp_msgc version check
#define MSGC_VERSION 0x0403
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of opp_msgc: 'make clean' should help.
#endif



/**
 * Class generated from <tt>src/messages/OBS_BurstControlPacket.msg</tt> by opp_msgc.
 * <pre>
 * packet OBS_BurstControlPacket 
 * {
 *  
 *     int burstifierId = -1; 
 *     int numSeq = -1; 
 * 
 *     int senderId = -1; 
 * 
 * 	int burstSize = -1;
 *     int burstSizeFast = -1; 
 *     int burstSizeSlow = -1; 
 *     simtime_t StartTimeSlow = -1;
 *     simtime_t StartTimeFast = -1;
 * 
 *     simtime_t EndTimeSlow = -1;
 *     simtime_t EndTimeFast = -1;
 * 
 *   
 *     int burstId = -1;
 *     int slowChannel = -1; 
 *     int fastChannel = -1; 
 *     string destNetworkAddr; 
 *     string srcNetworkAddr; 
 *     
 *     bool bidirectional = false; 
 *     
 *   
 *   
 *     
 * }
 * </pre>
 */
class OBS_BurstControlPacket : public ::cPacket
{
  protected:
    int burstifierId_var;
    int numSeq_var;
    int senderId_var;
    int burstSize_var;
    int burstSizeFast_var;
    int burstSizeSlow_var;
    simtime_t StartTimeSlow_var;
    simtime_t StartTimeFast_var;
    simtime_t EndTimeSlow_var;
    simtime_t EndTimeFast_var;
    int burstId_var;
    int slowChannel_var;
    int fastChannel_var;
    opp_string destNetworkAddr_var;
    opp_string srcNetworkAddr_var;
    bool bidirectional_var;

  private:
    void copy(const OBS_BurstControlPacket& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const OBS_BurstControlPacket&);

  public:
    OBS_BurstControlPacket(const char *name=NULL, int kind=0);
    OBS_BurstControlPacket(const OBS_BurstControlPacket& other);
    virtual ~OBS_BurstControlPacket();
    OBS_BurstControlPacket& operator=(const OBS_BurstControlPacket& other);
    virtual OBS_BurstControlPacket *dup() const {return new OBS_BurstControlPacket(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual int getBurstifierId() const;
    virtual void setBurstifierId(int burstifierId);
    virtual int getNumSeq() const;
    virtual void setNumSeq(int numSeq);
    virtual int getSenderId() const;
    virtual void setSenderId(int senderId);
    virtual int getBurstSize() const;
    virtual void setBurstSize(int burstSize);
    virtual int getBurstSizeFast() const;
    virtual void setBurstSizeFast(int burstSizeFast);
    virtual int getBurstSizeSlow() const;
    virtual void setBurstSizeSlow(int burstSizeSlow);
    virtual simtime_t getStartTimeSlow() const;
    virtual void setStartTimeSlow(simtime_t StartTimeSlow);
    virtual simtime_t getStartTimeFast() const;
    virtual void setStartTimeFast(simtime_t StartTimeFast);
    virtual simtime_t getEndTimeSlow() const;
    virtual void setEndTimeSlow(simtime_t EndTimeSlow);
    virtual simtime_t getEndTimeFast() const;
    virtual void setEndTimeFast(simtime_t EndTimeFast);
    virtual int getBurstId() const;
    virtual void setBurstId(int burstId);
    virtual int getSlowChannel() const;
    virtual void setSlowChannel(int slowChannel);
    virtual int getFastChannel() const;
    virtual void setFastChannel(int fastChannel);
    virtual const char * getDestNetworkAddr() const;
    virtual void setDestNetworkAddr(const char * destNetworkAddr);
    virtual const char * getSrcNetworkAddr() const;
    virtual void setSrcNetworkAddr(const char * srcNetworkAddr);
    virtual bool getBidirectional() const;
    virtual void setBidirectional(bool bidirectional);
};

inline void doPacking(cCommBuffer *b, OBS_BurstControlPacket& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, OBS_BurstControlPacket& obj) {obj.parsimUnpack(b);}


#endif // _OBS_BURSTCONTROLPACKET_M_H_
