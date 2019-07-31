//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/EdgeNode/OBS_BurstifierInfo.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "OBS_BurstifierInfo_m.h"

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




Register_Class(OBS_BurstifierInfo);

OBS_BurstifierInfo::OBS_BurstifierInfo() : cObject()
{
    this->bidirectional_var = false;
    this->destNetworkAddr_var = 0;
    this->slowChannel_var = -1;
    this->srcNetworkAddr_var = 0;
    this->fastChannel_var = -1;
    this->StartTimeSlow_var = -1;
    this->StartTimeFast_var = -1;
}

OBS_BurstifierInfo::OBS_BurstifierInfo(const OBS_BurstifierInfo& other) : cObject(other)
{
    copy(other);
}

OBS_BurstifierInfo::~OBS_BurstifierInfo()
{
}

OBS_BurstifierInfo& OBS_BurstifierInfo::operator=(const OBS_BurstifierInfo& other)
{
    if (this==&other) return *this;
    cObject::operator=(other);
    copy(other);
    return *this;
}

void OBS_BurstifierInfo::copy(const OBS_BurstifierInfo& other)
{
    this->bidirectional_var = other.bidirectional_var;
    this->destNetworkAddr_var = other.destNetworkAddr_var;
    this->slowChannel_var = other.slowChannel_var;
    this->srcNetworkAddr_var = other.srcNetworkAddr_var;
    this->fastChannel_var = other.fastChannel_var;
    this->StartTimeSlow_var = other.StartTimeSlow_var;
    this->StartTimeFast_var = other.StartTimeFast_var;
}

void OBS_BurstifierInfo::parsimPack(cCommBuffer *b)
{
    doPacking(b,this->bidirectional_var);
    doPacking(b,this->destNetworkAddr_var);
    doPacking(b,this->slowChannel_var);
    doPacking(b,this->srcNetworkAddr_var);
    doPacking(b,this->fastChannel_var);
    doPacking(b,this->StartTimeSlow_var);
    doPacking(b,this->StartTimeFast_var);
}

void OBS_BurstifierInfo::parsimUnpack(cCommBuffer *b)
{
    doUnpacking(b,this->bidirectional_var);
    doUnpacking(b,this->destNetworkAddr_var);
    doUnpacking(b,this->slowChannel_var);
    doUnpacking(b,this->srcNetworkAddr_var);
    doUnpacking(b,this->fastChannel_var);
    doUnpacking(b,this->StartTimeSlow_var);
    doUnpacking(b,this->StartTimeFast_var);
}

bool OBS_BurstifierInfo::getBidirectional() const
{
    return bidirectional_var;
}

void OBS_BurstifierInfo::setBidirectional(bool bidirectional)
{
    this->bidirectional_var = bidirectional;
}

const char * OBS_BurstifierInfo::getDestNetworkAddr() const
{
    return destNetworkAddr_var.c_str();
}

void OBS_BurstifierInfo::setDestNetworkAddr(const char * destNetworkAddr)
{
    this->destNetworkAddr_var = destNetworkAddr;
}

int OBS_BurstifierInfo::getSlowChannel() const
{
    return slowChannel_var;
}

void OBS_BurstifierInfo::setSlowChannel(int slowChannel)
{
    this->slowChannel_var = slowChannel;
}

const char * OBS_BurstifierInfo::getSrcNetworkAddr() const
{
    return srcNetworkAddr_var.c_str();
}

void OBS_BurstifierInfo::setSrcNetworkAddr(const char * srcNetworkAddr)
{
    this->srcNetworkAddr_var = srcNetworkAddr;
}

int OBS_BurstifierInfo::getFastChannel() const
{
    return fastChannel_var;
}

void OBS_BurstifierInfo::setFastChannel(int fastChannel)
{
    this->fastChannel_var = fastChannel;
}

simtime_t OBS_BurstifierInfo::getStartTimeSlow() const
{
    return StartTimeSlow_var;
}

void OBS_BurstifierInfo::setStartTimeSlow(simtime_t StartTimeSlow)
{
    this->StartTimeSlow_var = StartTimeSlow;
}

simtime_t OBS_BurstifierInfo::getStartTimeFast() const
{
    return StartTimeFast_var;
}

void OBS_BurstifierInfo::setStartTimeFast(simtime_t StartTimeFast)
{
    this->StartTimeFast_var = StartTimeFast;
}

class OBS_BurstifierInfoDescriptor : public cClassDescriptor
{
  public:
    OBS_BurstifierInfoDescriptor();
    virtual ~OBS_BurstifierInfoDescriptor();

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

Register_ClassDescriptor(OBS_BurstifierInfoDescriptor);

OBS_BurstifierInfoDescriptor::OBS_BurstifierInfoDescriptor() : cClassDescriptor("OBS_BurstifierInfo", "cObject")
{
}

OBS_BurstifierInfoDescriptor::~OBS_BurstifierInfoDescriptor()
{
}

bool OBS_BurstifierInfoDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<OBS_BurstifierInfo *>(obj)!=NULL;
}

const char *OBS_BurstifierInfoDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int OBS_BurstifierInfoDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 7+basedesc->getFieldCount(object) : 7;
}

unsigned int OBS_BurstifierInfoDescriptor::getFieldTypeFlags(void *object, int field) const
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
    };
    return (field>=0 && field<7) ? fieldTypeFlags[field] : 0;
}

const char *OBS_BurstifierInfoDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "bidirectional",
        "destNetworkAddr",
        "slowChannel",
        "srcNetworkAddr",
        "fastChannel",
        "StartTimeSlow",
        "StartTimeFast",
    };
    return (field>=0 && field<7) ? fieldNames[field] : NULL;
}

int OBS_BurstifierInfoDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='b' && strcmp(fieldName, "bidirectional")==0) return base+0;
    if (fieldName[0]=='d' && strcmp(fieldName, "destNetworkAddr")==0) return base+1;
    if (fieldName[0]=='s' && strcmp(fieldName, "slowChannel")==0) return base+2;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcNetworkAddr")==0) return base+3;
    if (fieldName[0]=='f' && strcmp(fieldName, "fastChannel")==0) return base+4;
    if (fieldName[0]=='S' && strcmp(fieldName, "StartTimeSlow")==0) return base+5;
    if (fieldName[0]=='S' && strcmp(fieldName, "StartTimeFast")==0) return base+6;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *OBS_BurstifierInfoDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "bool",
        "string",
        "int",
        "string",
        "int",
        "simtime_t",
        "simtime_t",
    };
    return (field>=0 && field<7) ? fieldTypeStrings[field] : NULL;
}

const char *OBS_BurstifierInfoDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int OBS_BurstifierInfoDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstifierInfo *pp = (OBS_BurstifierInfo *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string OBS_BurstifierInfoDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstifierInfo *pp = (OBS_BurstifierInfo *)object; (void)pp;
    switch (field) {
        case 0: return bool2string(pp->getBidirectional());
        case 1: return oppstring2string(pp->getDestNetworkAddr());
        case 2: return long2string(pp->getSlowChannel());
        case 3: return oppstring2string(pp->getSrcNetworkAddr());
        case 4: return long2string(pp->getFastChannel());
        case 5: return double2string(pp->getStartTimeSlow());
        case 6: return double2string(pp->getStartTimeFast());
        default: return "";
    }
}

bool OBS_BurstifierInfoDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstifierInfo *pp = (OBS_BurstifierInfo *)object; (void)pp;
    switch (field) {
        case 0: pp->setBidirectional(string2bool(value)); return true;
        case 1: pp->setDestNetworkAddr((value)); return true;
        case 2: pp->setSlowChannel(string2long(value)); return true;
        case 3: pp->setSrcNetworkAddr((value)); return true;
        case 4: pp->setFastChannel(string2long(value)); return true;
        case 5: pp->setStartTimeSlow(string2double(value)); return true;
        case 6: pp->setStartTimeFast(string2double(value)); return true;
        default: return false;
    }
}

const char *OBS_BurstifierInfoDescriptor::getFieldStructName(void *object, int field) const
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
    };
    return (field>=0 && field<7) ? fieldStructNames[field] : NULL;
}

void *OBS_BurstifierInfoDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstifierInfo *pp = (OBS_BurstifierInfo *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


