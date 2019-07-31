//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/messages/OBS_BurstControlPacket.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "OBS_BurstControlPacket_m.h"

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




Register_Class(OBS_BurstControlPacket);

OBS_BurstControlPacket::OBS_BurstControlPacket(const char *name, int kind) : cPacket(name,kind)
{
    this->burstifierId_var = -1;
    this->numSeq_var = -1;
    this->senderId_var = -1;
    this->burstSize_var = -1;
    this->burstSizeFast_var = -1;
    this->burstSizeSlow_var = -1;
    this->StartTimeSlow_var = -1;
    this->StartTimeFast_var = -1;
    this->EndTimeSlow_var = -1;
    this->EndTimeFast_var = -1;
    this->burstId_var = -1;
    this->slowChannel_var = -1;
    this->fastChannel_var = -1;
    this->destNetworkAddr_var = 0;
    this->srcNetworkAddr_var = 0;
    this->bidirectional_var = false;
}

OBS_BurstControlPacket::OBS_BurstControlPacket(const OBS_BurstControlPacket& other) : cPacket(other)
{
    copy(other);
}

OBS_BurstControlPacket::~OBS_BurstControlPacket()
{
}

OBS_BurstControlPacket& OBS_BurstControlPacket::operator=(const OBS_BurstControlPacket& other)
{
    if (this==&other) return *this;
    cPacket::operator=(other);
    copy(other);
    return *this;
}

void OBS_BurstControlPacket::copy(const OBS_BurstControlPacket& other)
{
    this->burstifierId_var = other.burstifierId_var;
    this->numSeq_var = other.numSeq_var;
    this->senderId_var = other.senderId_var;
    this->burstSize_var = other.burstSize_var;
    this->burstSizeFast_var = other.burstSizeFast_var;
    this->burstSizeSlow_var = other.burstSizeSlow_var;
    this->StartTimeSlow_var = other.StartTimeSlow_var;
    this->StartTimeFast_var = other.StartTimeFast_var;
    this->EndTimeSlow_var = other.EndTimeSlow_var;
    this->EndTimeFast_var = other.EndTimeFast_var;
    this->burstId_var = other.burstId_var;
    this->slowChannel_var = other.slowChannel_var;
    this->fastChannel_var = other.fastChannel_var;
    this->destNetworkAddr_var = other.destNetworkAddr_var;
    this->srcNetworkAddr_var = other.srcNetworkAddr_var;
    this->bidirectional_var = other.bidirectional_var;
}

void OBS_BurstControlPacket::parsimPack(cCommBuffer *b)
{
    cPacket::parsimPack(b);
    doPacking(b,this->burstifierId_var);
    doPacking(b,this->numSeq_var);
    doPacking(b,this->senderId_var);
    doPacking(b,this->burstSize_var);
    doPacking(b,this->burstSizeFast_var);
    doPacking(b,this->burstSizeSlow_var);
    doPacking(b,this->StartTimeSlow_var);
    doPacking(b,this->StartTimeFast_var);
    doPacking(b,this->EndTimeSlow_var);
    doPacking(b,this->EndTimeFast_var);
    doPacking(b,this->burstId_var);
    doPacking(b,this->slowChannel_var);
    doPacking(b,this->fastChannel_var);
    doPacking(b,this->destNetworkAddr_var);
    doPacking(b,this->srcNetworkAddr_var);
    doPacking(b,this->bidirectional_var);
}

void OBS_BurstControlPacket::parsimUnpack(cCommBuffer *b)
{
    cPacket::parsimUnpack(b);
    doUnpacking(b,this->burstifierId_var);
    doUnpacking(b,this->numSeq_var);
    doUnpacking(b,this->senderId_var);
    doUnpacking(b,this->burstSize_var);
    doUnpacking(b,this->burstSizeFast_var);
    doUnpacking(b,this->burstSizeSlow_var);
    doUnpacking(b,this->StartTimeSlow_var);
    doUnpacking(b,this->StartTimeFast_var);
    doUnpacking(b,this->EndTimeSlow_var);
    doUnpacking(b,this->EndTimeFast_var);
    doUnpacking(b,this->burstId_var);
    doUnpacking(b,this->slowChannel_var);
    doUnpacking(b,this->fastChannel_var);
    doUnpacking(b,this->destNetworkAddr_var);
    doUnpacking(b,this->srcNetworkAddr_var);
    doUnpacking(b,this->bidirectional_var);
}

int OBS_BurstControlPacket::getBurstifierId() const
{
    return burstifierId_var;
}

void OBS_BurstControlPacket::setBurstifierId(int burstifierId)
{
    this->burstifierId_var = burstifierId;
}

int OBS_BurstControlPacket::getNumSeq() const
{
    return numSeq_var;
}

void OBS_BurstControlPacket::setNumSeq(int numSeq)
{
    this->numSeq_var = numSeq;
}

int OBS_BurstControlPacket::getSenderId() const
{
    return senderId_var;
}

void OBS_BurstControlPacket::setSenderId(int senderId)
{
    this->senderId_var = senderId;
}

int OBS_BurstControlPacket::getBurstSize() const
{
    return burstSize_var;
}

void OBS_BurstControlPacket::setBurstSize(int burstSize)
{
    this->burstSize_var = burstSize;
}

int OBS_BurstControlPacket::getBurstSizeFast() const
{
    return burstSizeFast_var;
}

void OBS_BurstControlPacket::setBurstSizeFast(int burstSizeFast)
{
    this->burstSizeFast_var = burstSizeFast;
}

int OBS_BurstControlPacket::getBurstSizeSlow() const
{
    return burstSizeSlow_var;
}

void OBS_BurstControlPacket::setBurstSizeSlow(int burstSizeSlow)
{
    this->burstSizeSlow_var = burstSizeSlow;
}

simtime_t OBS_BurstControlPacket::getStartTimeSlow() const
{
    return StartTimeSlow_var;
}

void OBS_BurstControlPacket::setStartTimeSlow(simtime_t StartTimeSlow)
{
    this->StartTimeSlow_var = StartTimeSlow;
}

simtime_t OBS_BurstControlPacket::getStartTimeFast() const
{
    return StartTimeFast_var;
}

void OBS_BurstControlPacket::setStartTimeFast(simtime_t StartTimeFast)
{
    this->StartTimeFast_var = StartTimeFast;
}

simtime_t OBS_BurstControlPacket::getEndTimeSlow() const
{
    return EndTimeSlow_var;
}

void OBS_BurstControlPacket::setEndTimeSlow(simtime_t EndTimeSlow)
{
    this->EndTimeSlow_var = EndTimeSlow;
}

simtime_t OBS_BurstControlPacket::getEndTimeFast() const
{
    return EndTimeFast_var;
}

void OBS_BurstControlPacket::setEndTimeFast(simtime_t EndTimeFast)
{
    this->EndTimeFast_var = EndTimeFast;
}

int OBS_BurstControlPacket::getBurstId() const
{
    return burstId_var;
}

void OBS_BurstControlPacket::setBurstId(int burstId)
{
    this->burstId_var = burstId;
}

int OBS_BurstControlPacket::getSlowChannel() const
{
    return slowChannel_var;
}

void OBS_BurstControlPacket::setSlowChannel(int slowChannel)
{
    this->slowChannel_var = slowChannel;
}

int OBS_BurstControlPacket::getFastChannel() const
{
    return fastChannel_var;
}

void OBS_BurstControlPacket::setFastChannel(int fastChannel)
{
    this->fastChannel_var = fastChannel;
}

const char * OBS_BurstControlPacket::getDestNetworkAddr() const
{
    return destNetworkAddr_var.c_str();
}

void OBS_BurstControlPacket::setDestNetworkAddr(const char * destNetworkAddr)
{
    this->destNetworkAddr_var = destNetworkAddr;
}

const char * OBS_BurstControlPacket::getSrcNetworkAddr() const
{
    return srcNetworkAddr_var.c_str();
}

void OBS_BurstControlPacket::setSrcNetworkAddr(const char * srcNetworkAddr)
{
    this->srcNetworkAddr_var = srcNetworkAddr;
}

bool OBS_BurstControlPacket::getBidirectional() const
{
    return bidirectional_var;
}

void OBS_BurstControlPacket::setBidirectional(bool bidirectional)
{
    this->bidirectional_var = bidirectional;
}

class OBS_BurstControlPacketDescriptor : public cClassDescriptor
{
  public:
    OBS_BurstControlPacketDescriptor();
    virtual ~OBS_BurstControlPacketDescriptor();

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

Register_ClassDescriptor(OBS_BurstControlPacketDescriptor);

OBS_BurstControlPacketDescriptor::OBS_BurstControlPacketDescriptor() : cClassDescriptor("OBS_BurstControlPacket", "cPacket")
{
}

OBS_BurstControlPacketDescriptor::~OBS_BurstControlPacketDescriptor()
{
}

bool OBS_BurstControlPacketDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<OBS_BurstControlPacket *>(obj)!=NULL;
}

const char *OBS_BurstControlPacketDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int OBS_BurstControlPacketDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 16+basedesc->getFieldCount(object) : 16;
}

unsigned int OBS_BurstControlPacketDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
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
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<16) ? fieldTypeFlags[field] : 0;
}

const char *OBS_BurstControlPacketDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "burstifierId",
        "numSeq",
        "senderId",
        "burstSize",
        "burstSizeFast",
        "burstSizeSlow",
        "StartTimeSlow",
        "StartTimeFast",
        "EndTimeSlow",
        "EndTimeFast",
        "burstId",
        "slowChannel",
        "fastChannel",
        "destNetworkAddr",
        "srcNetworkAddr",
        "bidirectional",
    };
    return (field>=0 && field<16) ? fieldNames[field] : NULL;
}

int OBS_BurstControlPacketDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstifierId")==0) return base+0;
    if (fieldName[0]=='n' && strcmp(fieldName, "numSeq")==0) return base+1;
    if (fieldName[0]=='s' && strcmp(fieldName, "senderId")==0) return base+2;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstSize")==0) return base+3;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstSizeFast")==0) return base+4;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstSizeSlow")==0) return base+5;
    if (fieldName[0]=='S' && strcmp(fieldName, "StartTimeSlow")==0) return base+6;
    if (fieldName[0]=='S' && strcmp(fieldName, "StartTimeFast")==0) return base+7;
    if (fieldName[0]=='E' && strcmp(fieldName, "EndTimeSlow")==0) return base+8;
    if (fieldName[0]=='E' && strcmp(fieldName, "EndTimeFast")==0) return base+9;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstId")==0) return base+10;
    if (fieldName[0]=='s' && strcmp(fieldName, "slowChannel")==0) return base+11;
    if (fieldName[0]=='f' && strcmp(fieldName, "fastChannel")==0) return base+12;
    if (fieldName[0]=='d' && strcmp(fieldName, "destNetworkAddr")==0) return base+13;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcNetworkAddr")==0) return base+14;
    if (fieldName[0]=='b' && strcmp(fieldName, "bidirectional")==0) return base+15;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *OBS_BurstControlPacketDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "simtime_t",
        "simtime_t",
        "simtime_t",
        "simtime_t",
        "int",
        "int",
        "int",
        "string",
        "string",
        "bool",
    };
    return (field>=0 && field<16) ? fieldTypeStrings[field] : NULL;
}

const char *OBS_BurstControlPacketDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int OBS_BurstControlPacketDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstControlPacket *pp = (OBS_BurstControlPacket *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string OBS_BurstControlPacketDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstControlPacket *pp = (OBS_BurstControlPacket *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getBurstifierId());
        case 1: return long2string(pp->getNumSeq());
        case 2: return long2string(pp->getSenderId());
        case 3: return long2string(pp->getBurstSize());
        case 4: return long2string(pp->getBurstSizeFast());
        case 5: return long2string(pp->getBurstSizeSlow());
        case 6: return double2string(pp->getStartTimeSlow());
        case 7: return double2string(pp->getStartTimeFast());
        case 8: return double2string(pp->getEndTimeSlow());
        case 9: return double2string(pp->getEndTimeFast());
        case 10: return long2string(pp->getBurstId());
        case 11: return long2string(pp->getSlowChannel());
        case 12: return long2string(pp->getFastChannel());
        case 13: return oppstring2string(pp->getDestNetworkAddr());
        case 14: return oppstring2string(pp->getSrcNetworkAddr());
        case 15: return bool2string(pp->getBidirectional());
        default: return "";
    }
}

bool OBS_BurstControlPacketDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstControlPacket *pp = (OBS_BurstControlPacket *)object; (void)pp;
    switch (field) {
        case 0: pp->setBurstifierId(string2long(value)); return true;
        case 1: pp->setNumSeq(string2long(value)); return true;
        case 2: pp->setSenderId(string2long(value)); return true;
        case 3: pp->setBurstSize(string2long(value)); return true;
        case 4: pp->setBurstSizeFast(string2long(value)); return true;
        case 5: pp->setBurstSizeSlow(string2long(value)); return true;
        case 6: pp->setStartTimeSlow(string2double(value)); return true;
        case 7: pp->setStartTimeFast(string2double(value)); return true;
        case 8: pp->setEndTimeSlow(string2double(value)); return true;
        case 9: pp->setEndTimeFast(string2double(value)); return true;
        case 10: pp->setBurstId(string2long(value)); return true;
        case 11: pp->setSlowChannel(string2long(value)); return true;
        case 12: pp->setFastChannel(string2long(value)); return true;
        case 13: pp->setDestNetworkAddr((value)); return true;
        case 14: pp->setSrcNetworkAddr((value)); return true;
        case 15: pp->setBidirectional(string2bool(value)); return true;
        default: return false;
    }
}

const char *OBS_BurstControlPacketDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldStructNames[] = {
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
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    };
    return (field>=0 && field<16) ? fieldStructNames[field] : NULL;
}

void *OBS_BurstControlPacketDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstControlPacket *pp = (OBS_BurstControlPacket *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


