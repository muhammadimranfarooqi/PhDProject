//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/EdgeNode/EdgeDestinationQueueEntry.msg.
//

#ifndef _EDGEDESTINATIONQUEUEENTRY_M_H_
#define _EDGEDESTINATIONQUEUEENTRY_M_H_

#include <omnetpp.h>

// opp_msgc version check
#define MSGC_VERSION 0x0403
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of opp_msgc: 'make clean' should help.
#endif



/**
 * Class generated from <tt>src/EdgeNode/EdgeDestinationQueueEntry.msg</tt> by opp_msgc.
 * <pre>
 * class EdgeDestinationQueueEntry
 * {
 *       int queueNo = -1; 
 *       string destNetworkAddr; 
 *       string subNetAddr;
 *       string srcNetworkAddr; 
 *        
 *       
 * }
 * </pre>
 */
class EdgeDestinationQueueEntry : public ::cObject
{
  protected:
    int queueNo_var;
    opp_string destNetworkAddr_var;
    opp_string subNetAddr_var;
    opp_string srcNetworkAddr_var;

  private:
    void copy(const EdgeDestinationQueueEntry& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const EdgeDestinationQueueEntry&);

  public:
    EdgeDestinationQueueEntry();
    EdgeDestinationQueueEntry(const EdgeDestinationQueueEntry& other);
    virtual ~EdgeDestinationQueueEntry();
    EdgeDestinationQueueEntry& operator=(const EdgeDestinationQueueEntry& other);
    virtual EdgeDestinationQueueEntry *dup() const {return new EdgeDestinationQueueEntry(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual int getQueueNo() const;
    virtual void setQueueNo(int queueNo);
    virtual const char * getDestNetworkAddr() const;
    virtual void setDestNetworkAddr(const char * destNetworkAddr);
    virtual const char * getSubNetAddr() const;
    virtual void setSubNetAddr(const char * subNetAddr);
    virtual const char * getSrcNetworkAddr() const;
    virtual void setSrcNetworkAddr(const char * srcNetworkAddr);
};

inline void doPacking(cCommBuffer *b, EdgeDestinationQueueEntry& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, EdgeDestinationQueueEntry& obj) {obj.parsimUnpack(b);}


#endif // _EDGEDESTINATIONQUEUEENTRY_M_H_