//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/messages/OBS_Burst.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "OBS_Burst_m.h"

// Template rule which fires if a struct or class doesn't have operator<<
template<typename T>
std::ostream& operator<<(std::ostream& out,const T&) {return out;}

// Another default rule (prevents compiler from choosing base class' doPacking())
template<typename T>
void doPacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doPacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}

template<typename T>
void doUnpacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doUnpacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}




OBS_Burst_Base::OBS_Burst_Base(const char *name, int kind) : cPacket(name,kind)
{
    take(&(this->messages_var));
    this->numPackets_var = -1;
    this->burstifierId_var = -1;
    this->numSeq_var = -1;
    this->senderId_var = -1;
    this->destNetworkAddr_var = 0;
    this->srcNetworkAddr_var = 0;
    this->bidirectional_var = false;
    this->StartTimeSlow_var = -1;
    this->StartTimeFast_var = -1;
    this->slowChannel_var = -1;
    this->fastChannel_var = -1;
}

OBS_Burst_Base::OBS_Burst_Base(const OBS_Burst_Base& other) : cPacket(other)
{
    take(&(this->messages_var));
    copy(other);
}

OBS_Burst_Base::~OBS_Burst_Base()
{
    drop(&(this->messages_var));
}

OBS_Burst_Base& OBS_Burst_Base::operator=(const OBS_Burst_Base& other)
{
    if (this==&other) return *this;
    cPacket::operator=(other);
    copy(other);
    return *this;
}

void OBS_Burst_Base::copy(const OBS_Burst_Base& other)
{
    this->messages_var = other.messages_var;
    this->messages_var.setName(other.messages_var.getName());
    this->numPackets_var = other.numPackets_var;
    this->burstifierId_var = other.burstifierId_var;
    this->numSeq_var = other.numSeq_var;
    this->senderId_var = other.senderId_var;
    this->destNetworkAddr_var = other.destNetworkAddr_var;
    this->srcNetworkAddr_var = other.srcNetworkAddr_var;
    this->bidirectional_var = other.bidirectional_var;
    this->StartTimeSlow_var = other.StartTimeSlow_var;
    this->StartTimeFast_var = other.StartTimeFast_var;
    this->slowChannel_var = other.slowChannel_var;
    this->fastChannel_var = other.fastChannel_var;
}

void OBS_Burst_Base::parsimPack(cCommBuffer *b)
{
    cPacket::parsimPack(b);
    doPacking(b,this->messages_var);
    doPacking(b,this->numPackets_var);
    doPacking(b,this->burstifierId_var);
    doPacking(b,this->numSeq_var);
    doPacking(b,this->senderId_var);
    doPacking(b,this->destNetworkAddr_var);
    doPacking(b,this->srcNetworkAddr_var);
    doPacking(b,this->bidirectional_var);
    doPacking(b,this->StartTimeSlow_var);
    doPacking(b,this->StartTimeFast_var);
    doPacking(b,this->slowChannel_var);
    doPacking(b,this->fastChannel_var);
}

void OBS_Burst_Base::parsimUnpack(cCommBuffer *b)
{
    cPacket::parsimUnpack(b);
    doUnpacking(b,this->messages_var);
    doUnpacking(b,this->numPackets_var);
    doUnpacking(b,this->burstifierId_var);
    doUnpacking(b,this->numSeq_var);
    doUnpacking(b,this->senderId_var);
    doUnpacking(b,this->destNetworkAddr_var);
    doUnpacking(b,this->srcNetworkAddr_var);
    doUnpacking(b,this->bidirectional_var);
    doUnpacking(b,this->StartTimeSlow_var);
    doUnpacking(b,this->StartTimeFast_var);
    doUnpacking(b,this->slowChannel_var);
    doUnpacking(b,this->fastChannel_var);
}

cQueue& OBS_Burst_Base::getMessages()
{
    return messages_var;
}

void OBS_Burst_Base::setMessages(const cQueue& messages)
{
    this->messages_var = messages;
}

int OBS_Burst_Base::getNumPackets() const
{
    return numPackets_var;
}

void OBS_Burst_Base::setNumPackets(int numPackets)
{
    this->numPackets_var = numPackets;
}

int OBS_Burst_Base::getBurstifierId() const
{
    return burstifierId_var;
}

void OBS_Burst_Base::setBurstifierId(int burstifierId)
{
    this->burstifierId_var = burstifierId;
}

int OBS_Burst_Base::getNumSeq() const
{
    return numSeq_var;
}

void OBS_Burst_Base::setNumSeq(int numSeq)
{
    this->numSeq_var = numSeq;
}

int OBS_Burst_Base::getSenderId() const
{
    return senderId_var;
}

void OBS_Burst_Base::setSenderId(int senderId)
{
    this->senderId_var = senderId;
}

const char * OBS_Burst_Base::getDestNetworkAddr() const
{
    return destNetworkAddr_var.c_str();
}

void OBS_Burst_Base::setDestNetworkAddr(const char * destNetworkAddr)
{
    this->destNetworkAddr_var = destNetworkAddr;
}

const char * OBS_Burst_Base::getSrcNetworkAddr() const
{
    return srcNetworkAddr_var.c_str();
}

void OBS_Burst_Base::setSrcNetworkAddr(const char * srcNetworkAddr)
{
    this->srcNetworkAddr_var = srcNetworkAddr;
}

bool OBS_Burst_Base::getBidirectional() const
{
    return bidirectional_var;
}

void OBS_Burst_Base::setBidirectional(bool bidirectional)
{
    this->bidirectional_var = bidirectional;
}

simtime_t OBS_Burst_Base::getStartTimeSlow() const
{
    return StartTimeSlow_var;
}

void OBS_Burst_Base::setStartTimeSlow(simtime_t StartTimeSlow)
{
    this->StartTimeSlow_var = StartTimeSlow;
}

simtime_t OBS_Burst_Base::getStartTimeFast() const
{
    return StartTimeFast_var;
}

void OBS_Burst_Base::setStartTimeFast(simtime_t StartTimeFast)
{
    this->StartTimeFast_var = StartTimeFast;
}

int OBS_Burst_Base::getSlowChannel() const
{
    return slowChannel_var;
}

void OBS_Burst_Base::setSlowChannel(int slowChannel)
{
    this->slowChannel_var = slowChannel;
}

int OBS_Burst_Base::getFastChannel() const
{
    return fastChannel_var;
}

void OBS_Burst_Base::setFastChannel(int fastChannel)
{
    this->fastChannel_var = fastChannel;
}

class OBS_BurstDescriptor : public cClassDescriptor
{
  public:
    OBS_BurstDescriptor();
    virtual ~OBS_BurstDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(OBS_BurstDescriptor);

OBS_BurstDescriptor::OBS_BurstDescriptor() : cClassDescriptor("OBS_Burst", "cPacket")
{
}

OBS_BurstDescriptor::~OBS_BurstDescriptor()
{
}

bool OBS_BurstDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<OBS_Burst_Base *>(obj)!=NULL;
}

const char *OBS_BurstDescriptor::getProperty(const char *propertyname) const
{
    if (!strcmp(propertyname,"customize")) return "true";
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int OBS_BurstDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 12+basedesc->getFieldCount(object) : 12;
}

unsigned int OBS_BurstDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISCOMPOUND | FD_ISCOBJECT | FD_ISCOWNEDOBJECT,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<12) ? fieldTypeFlags[field] : 0;
}

const char *OBS_BurstDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "messages",
        "numPackets",
        "burstifierId",
        "numSeq",
        "senderId",
        "destNetworkAddr",
        "srcNetworkAddr",
        "bidirectional",
        "StartTimeSlow",
        "StartTimeFast",
        "slowChannel",
        "fastChannel",
    };
    return (field>=0 && field<12) ? fieldNames[field] : NULL;
}

int OBS_BurstDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='m' && strcmp(fieldName, "messages")==0) return base+0;
    if (fieldName[0]=='n' && strcmp(fieldName, "numPackets")==0) return base+1;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstifierId")==0) return base+2;
    if (fieldName[0]=='n' && strcmp(fieldName, "numSeq")==0) return base+3;
    if (fieldName[0]=='s' && strcmp(fieldName, "senderId")==0) return base+4;
    if (fieldName[0]=='d' && strcmp(fieldName, "destNetworkAddr")==0) return base+5;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcNetworkAddr")==0) return base+6;
    if (fieldName[0]=='b' && strcmp(fieldName, "bidirectional")==0) return base+7;
    if (fieldName[0]=='S' && strcmp(fieldName, "StartTimeSlow")==0) return base+8;
    if (fieldName[0]=='S' && strcmp(fieldName, "StartTimeFast")==0) return base+9;
    if (fieldName[0]=='s' && strcmp(fieldName, "slowChannel")==0) return base+10;
    if (fieldName[0]=='f' && strcmp(fieldName, "fastChannel")==0) return base+11;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *OBS_BurstDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "cQueue",
        "int",
        "int",
        "int",
        "int",
        "string",
        "string",
        "bool",
        "simtime_t",
        "simtime_t",
        "int",
        "int",
    };
    return (field>=0 && field<12) ? fieldTypeStrings[field] : NULL;
}

const char *OBS_BurstDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int OBS_BurstDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    OBS_Burst_Base *pp = (OBS_Burst_Base *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string OBS_BurstDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_Burst_Base *pp = (OBS_Burst_Base *)object; (void)pp;
    switch (field) {
        case 0: {std::stringstream out; out << pp->getMessages(); return out.str();}
        case 1: return long2string(pp->getNumPackets());
        case 2: return long2string(pp->getBurstifierId());
        case 3: return long2string(pp->getNumSeq());
        case 4: return long2string(pp->getSenderId());
        case 5: return oppstring2string(pp->getDestNetworkAddr());
        case 6: return oppstring2string(pp->getSrcNetworkAddr());
        case 7: return bool2string(pp->getBidirectional());
        case 8: return double2string(pp->getStartTimeSlow());
        case 9: return double2string(pp->getStartTimeFast());
        case 10: return long2string(pp->getSlowChannel());
        case 11: return long2string(pp->getFastChannel());
        default: return "";
    }
}

bool OBS_BurstDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    OBS_Burst_Base *pp = (OBS_Burst_Base *)object; (void)pp;
    switch (field) {
        case 1: pp->setNumPackets(string2long(value)); return true;
        case 2: pp->setBurstifierId(string2long(value)); return true;
        case 3: pp->setNumSeq(string2long(value)); return true;
        case 4: pp->setSenderId(string2long(value)); return true;
        case 5: pp->setDestNetworkAddr((value)); return true;
        case 6: pp->setSrcNetworkAddr((value)); return true;
        case 7: pp->setBidirectional(string2bool(value)); return true;
        case 8: pp->setStartTimeSlow(string2double(value)); return true;
        case 9: pp->setStartTimeFast(string2double(value)); return true;
        case 10: pp->setSlowChannel(string2long(value)); return true;
        case 11: pp->setFastChannel(string2long(value)); return true;
        default: return false;
    }
}

const char *OBS_BurstDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
        "cQueue",
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    };
    return (field>=0 && field<12) ? fieldStructNames[field] : NULL;
}

void *OBS_BurstDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_Burst_Base *pp = (OBS_Burst_Base *)object; (void)pp;
    switch (field) {
        case 0: return (void *)static_cast<cObject *>(&pp->getMessages()); break;
        default: return NULL;
    }
}


