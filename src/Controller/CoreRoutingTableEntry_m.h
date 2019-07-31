//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/Controller/CoreRoutingTableEntry.msg.
//

#ifndef _COREROUTINGTABLEENTRY_M_H_
#define _COREROUTINGTABLEENTRY_M_H_

#include <omnetpp.h>

// opp_msgc version check
#define MSGC_VERSION 0x0403
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of opp_msgc: 'make clean' should help.
#endif



/**
 * Class generated from <tt>src/Controller/CoreRoutingTableEntry.msg</tt> by opp_msgc.
 * <pre>
 * class CoreRoutingTableEntry
 * 
 * {
 *     string ToRAddress; 
 *     string destNetworkAddr; 
 *     int start_port = -1; 
 *     int control_port = -1; 
 *     int control_switch = -1; 
 *     
 *     }
 * </pre>
 */
class CoreRoutingTableEntry : public ::cObject
{
  protected:
    opp_string ToRAddress_var;
    opp_string destNetworkAddr_var;
    int start_port_var;
    int control_port_var;
    int control_switch_var;

  private:
    void copy(const CoreRoutingTableEntry& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const CoreRoutingTableEntry&);

  public:
    CoreRoutingTableEntry();
    CoreRoutingTableEntry(const CoreRoutingTableEntry& other);
    virtual ~CoreRoutingTableEntry();
    CoreRoutingTableEntry& operator=(const CoreRoutingTableEntry& other);
    virtual CoreRoutingTableEntry *dup() const {return new CoreRoutingTableEntry(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual const char * getToRAddress() const;
    virtual void setToRAddress(const char * ToRAddress);
    virtual const char * getDestNetworkAddr() const;
    virtual void setDestNetworkAddr(const char * destNetworkAddr);
    virtual int getStart_port() const;
    virtual void setStart_port(int start_port);
    virtual int getControl_port() const;
    virtual void setControl_port(int control_port);
    virtual int getControl_switch() const;
    virtual void setControl_switch(int control_switch);
};

inline void doPacking(cCommBuffer *b, CoreRoutingTableEntry& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, CoreRoutingTableEntry& obj) {obj.parsimUnpack(b);}


#endif // _COREROUTINGTABLEENTRY_M_H_
