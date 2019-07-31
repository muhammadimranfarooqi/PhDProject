//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/EdgeNode/OBS_ScheduledBurstItem.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "OBS_ScheduledBurstItem_m.h"

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




Register_Class(OBS_ScheduledBurstItem);

OBS_ScheduledBurstItem::OBS_ScheduledBurstItem(const char *name, int kind) : cPacket(name,kind)
{
    this->listIndex_var = -1;
    this->burstId_var = -1;
    this->sendTime_var = -1;
}

OBS_ScheduledBurstItem::OBS_ScheduledBurstItem(const OBS_ScheduledBurstItem& other) : cPacket(other)
{
    copy(other);
}

OBS_ScheduledBurstItem::~OBS_ScheduledBurstItem()
{
}

OBS_ScheduledBurstItem& OBS_ScheduledBurstItem::operator=(const OBS_ScheduledBurstItem& other)
{
    if (this==&other) return *this;
    cPacket::operator=(other);
    copy(other);
    return *this;
}

void OBS_ScheduledBurstItem::copy(const OBS_ScheduledBurstItem& other)
{
    this->listIndex_var = other.listIndex_var;
    this->burstId_var = other.burstId_var;
    this->sendTime_var = other.sendTime_var;
}

void OBS_ScheduledBurstItem::parsimPack(cCommBuffer *b)
{
    cPacket::parsimPack(b);
    doPacking(b,this->listIndex_var);
    doPacking(b,this->burstId_var);
    doPacking(b,this->sendTime_var);
}

void OBS_ScheduledBurstItem::parsimUnpack(cCommBuffer *b)
{
    cPacket::parsimUnpack(b);
    doUnpacking(b,this->listIndex_var);
    doUnpacking(b,this->burstId_var);
    doUnpacking(b,this->sendTime_var);
}

int OBS_ScheduledBurstItem::getListIndex() const
{
    return listIndex_var;
}

void OBS_ScheduledBurstItem::setListIndex(int listIndex)
{
    this->listIndex_var = listIndex;
}

int OBS_ScheduledBurstItem::getBurstId() const
{
    return burstId_var;
}

void OBS_ScheduledBurstItem::setBurstId(int burstId)
{
    this->burstId_var = burstId;
}

simtime_t OBS_ScheduledBurstItem::getSendTime() const
{
    return sendTime_var;
}

void OBS_ScheduledBurstItem::setSendTime(simtime_t sendTime)
{
    this->sendTime_var = sendTime;
}

class OBS_ScheduledBurstItemDescriptor : public cClassDescriptor
{
  public:
    OBS_ScheduledBurstItemDescriptor();
    virtual ~OBS_ScheduledBurstItemDescriptor();

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

Register_ClassDescriptor(OBS_ScheduledBurstItemDescriptor);

OBS_ScheduledBurstItemDescriptor::OBS_ScheduledBurstItemDescriptor() : cClassDescriptor("OBS_ScheduledBurstItem", "cPacket")
{
}

OBS_ScheduledBurstItemDescriptor::~OBS_ScheduledBurstItemDescriptor()
{
}

bool OBS_ScheduledBurstItemDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<OBS_ScheduledBurstItem *>(obj)!=NULL;
}

const char *OBS_ScheduledBurstItemDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int OBS_ScheduledBurstItemDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 3+basedesc->getFieldCount(object) : 3;
}

unsigned int OBS_ScheduledBurstItemDescriptor::getFieldTypeFlags(void *object, int field) const
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
    };
    return (field>=0 && field<3) ? fieldTypeFlags[field] : 0;
}

const char *OBS_ScheduledBurstItemDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "listIndex",
        "burstId",
        "sendTime",
    };
    return (field>=0 && field<3) ? fieldNames[field] : NULL;
}

int OBS_ScheduledBurstItemDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='l' && strcmp(fieldName, "listIndex")==0) return base+0;
    if (fieldName[0]=='b' && strcmp(fieldName, "burstId")==0) return base+1;
    if (fieldName[0]=='s' && strcmp(fieldName, "sendTime")==0) return base+2;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *OBS_ScheduledBurstItemDescriptor::getFieldTypeString(void *object, int field) const
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
        "simtime_t",
    };
    return (field>=0 && field<3) ? fieldTypeStrings[field] : NULL;
}

const char *OBS_ScheduledBurstItemDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int OBS_ScheduledBurstItemDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    OBS_ScheduledBurstItem *pp = (OBS_ScheduledBurstItem *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string OBS_ScheduledBurstItemDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_ScheduledBurstItem *pp = (OBS_ScheduledBurstItem *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getListIndex());
        case 1: return long2string(pp->getBurstId());
        case 2: return double2string(pp->getSendTime());
        default: return "";
    }
}

bool OBS_ScheduledBurstItemDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    OBS_ScheduledBurstItem *pp = (OBS_ScheduledBurstItem *)object; (void)pp;
    switch (field) {
        case 0: pp->setListIndex(string2long(value)); return true;
        case 1: pp->setBurstId(string2long(value)); return true;
        case 2: pp->setSendTime(string2double(value)); return true;
        default: return false;
    }
}

const char *OBS_ScheduledBurstItemDescriptor::getFieldStructName(void *object, int field) const
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
    };
    return (field>=0 && field<3) ? fieldStructNames[field] : NULL;
}

void *OBS_ScheduledBurstItemDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    OBS_ScheduledBurstItem *pp = (OBS_ScheduledBurstItem *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


