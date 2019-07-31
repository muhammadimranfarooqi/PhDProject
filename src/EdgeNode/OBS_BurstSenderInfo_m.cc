//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/EdgeNode/OBS_BurstSenderInfo.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "OBS_BurstSenderInfo_m.h"

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




Register_Class(OBS_BurstSenderInfo);

OBS_BurstSenderInfo::OBS_BurstSenderInfo() : cObject()
{
    this->burstId_var = -1;
    this->burstifierId_var = -1;
    this->numSeq_var = -1;
    this->slowChannel_var = -1;
    this->fastChannel_var = -1;
    this->destNetworkAddr_var = 0;
    this->srcNetworkAddr_var = 0;
}

OBS_BurstSenderInfo::OBS_BurstSenderInfo(const OBS_BurstSenderInfo& other) : cObject(other)
{
    copy(other);
}

OBS_BurstSenderInfo::~OBS_BurstSenderInfo()
{
}

OBS_BurstSenderInfo& OBS_BurstSenderInfo::operator=(const OBS_BurstSenderInfo& other)
{
    if (this==&other) return *this;
    cObject::operator=(other);
    copy(other);
    return *this;
}

void OBS_BurstSenderInfo::copy(const OBS_BurstSenderInfo& other)
{
    this->burstId_var = other.burstId_var;
    this->burstifierId_var = other.burstifierId_var;
    this->numSeq_var = other.numSeq_var;
    this->slowChannel_var = other.slowChannel_var;
    this->fastChannel_var = other.fastChannel_var;
    this->destNetworkAddr_var = other.destNetworkAddr_var;
    this->srcNetworkAddr_var = other.srcNetworkAddr_var;
}

void OBS_BurstSenderInfo::parsimPack(cCommBuffer *b)
{
    doPacking(b,this->burstId_var);
    doPacking(b,this->burstifierId_var);
    doPacking(b,this->numSeq_var);
    doPacking(b,this->slowChannel_var);
    doPacking(b,this->fastChannel_var);
    doPacking(b,this->destNetworkAddr_var);
    doPacking(b,this->srcNetworkAddr_var);
}

void OBS_BurstSenderInfo::parsimUnpack(cCommBuffer *b)
{
    doUnpacking(b,this->burstId_var);
    doUnpacking(b,this->burstifierId_var);
    doUnpacking(b,this->numSeq_var);
    doUnpacking(b,this->slowChannel_var);
    doUnpacking(b,this->fastChannel_var);
    doUnpacking(b,this->destNetworkAddr_var);
    doUnpacking(b,this->srcNetworkAddr_var);
}

int OBS_BurstSenderInfo::getBurstId() const
{
    return burstId_var;
}

void OBS_BurstSenderInfo::setBurstId(int burstId)
{
    this->burstId_var = burstId;
}

int OBS_BurstSenderInfo::getBurstifierId() const
{
    return burstifierId_var;
}

void OBS_BurstSenderInfo::setBurstifierId(int burstifierId)
{
    this->burstifierId_var = burstifierId;
}

int OBS_BurstSenderInfo::getNumSeq() const
{
    return numSeq_var;
}

void OBS_BurstSenderInfo::setNumSeq(int numSeq)
{
    this->numSeq_var = numSeq;
}

int OBS_BurstSenderInfo::getSlowChannel() const
{
    return slowChannel_var;
}

void OBS_BurstSenderInfo::setSlowChannel(int slowChannel)
{
    this->slowChannel_var = slowChannel;
}

int OBS_BurstSenderInfo::getFastChannel() const
{
    return fastChannel_var;
}

void OBS_BurstSenderInfo::setFastChannel(int fastChannel)
{
    this->fastChannel_var = fastChannel;
}

const char * OBS_BurstSenderInfo::getDestNetworkAddr() const
{
    return destNetworkAddr_var.c_str();
}

void OBS_BurstSenderInfo::setDestNetworkAddr(const char * destNetworkAddr)
{
    this->destNetworkAddr_var = destNetworkAddr;
}

const char * OBS_BurstSenderInfo::getSrcNetworkAddr() const
{
    return srcNetworkAddr_var.c_str();
}

void OBS_BurstSenderInfo::setSrcNetworkAddr(const char * srcNetworkAddr)
{
    this->srcNetworkAddr_var = srcNetworkAddr;
}

class OBS_BurstSenderInfoDescriptor : public cClassDescriptor
{
  public:
    OBS_BurstSenderInfoDescriptor();
    virtual ~OBS_BurstSenderInfoDescriptor();

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

Register_ClassDescriptor(OBS_BurstSenderInfoDescriptor);

OBS_BurstSenderInfoDescriptor::OBS_BurstSenderInfoDescriptor() : cClassDescriptor("OBS_BurstSenderInfo", "cObject")
{
}

OBS_BurstSenderInfoDescriptor::~OBS_BurstSenderInfoDescriptor()
{
}

bool OBS_BurstSenderInfoDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<OBS_BurstSenderInfo *>(obj)!=NULL;
}

const char *OBS_BurstSenderInfoDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int OBS_BurstSenderInfoDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 7+basedesc->getFieldCount(object) : 7;
}

unsigned int OBS_BurstSenderInfoDescriptor::getFieldTypeFlags(void *object, int field) const
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

const char *OBS_BurstSenderInfoDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "burstId",
        "burstifierId",
        "numSeq",
        "slowChannel",
        "fastChannel",
        "destNetworkAddr",
        "srcNetworkAddr",
    };
    return (field>=0 && field<7) ? fieldNames[field] : NULL;
}

int OBS_BurstSenderInfoDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstId")==0) return base+0;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstifierId")==0) return base+1;
    if (fieldName[0]=='n' && strcmp(fieldName, "numSeq")==0) return base+2;
    if (fieldName[0]=='s' && strcmp(fieldName, "slowChannel")==0) return base+3;
    if (fieldName[0]=='f' && strcmp(fieldName, "fastChannel")==0) return base+4;
    if (fieldName[0]=='d' && strcmp(fieldName, "destNetworkAddr")==0) return base+5;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcNetworkAddr")==0) return base+6;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *OBS_BurstSenderInfoDescriptor::getFieldTypeString(void *object, int field) const
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
        "string",
        "string",
    };
    return (field>=0 && field<7) ? fieldTypeStrings[field] : NULL;
}

const char *OBS_BurstSenderInfoDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int OBS_BurstSenderInfoDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstSenderInfo *pp = (OBS_BurstSenderInfo *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string OBS_BurstSenderInfoDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstSenderInfo *pp = (OBS_BurstSenderInfo *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getBurstId());
        case 1: return long2string(pp->getBurstifierId());
        case 2: return long2string(pp->getNumSeq());
        case 3: return long2string(pp->getSlowChannel());
        case 4: return long2string(pp->getFastChannel());
        case 5: return oppstring2string(pp->getDestNetworkAddr());
        case 6: return oppstring2string(pp->getSrcNetworkAddr());
        default: return "";
    }
}

bool OBS_BurstSenderInfoDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstSenderInfo *pp = (OBS_BurstSenderInfo *)object; (void)pp;
    switch (field) {
        case 0: pp->setBurstId(string2long(value)); return true;
        case 1: pp->setBurstifierId(string2long(value)); return true;
        case 2: pp->setNumSeq(string2long(value)); return true;
        case 3: pp->setSlowChannel(string2long(value)); return true;
        case 4: pp->setFastChannel(string2long(value)); return true;
        case 5: pp->setDestNetworkAddr((value)); return true;
        case 6: pp->setSrcNetworkAddr((value)); return true;
        default: return false;
    }
}

const char *OBS_BurstSenderInfoDescriptor::getFieldStructName(void *object, int field) const
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

void *OBS_BurstSenderInfoDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_BurstSenderInfo *pp = (OBS_BurstSenderInfo *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


