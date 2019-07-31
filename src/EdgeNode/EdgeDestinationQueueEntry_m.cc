//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/EdgeNode/EdgeDestinationQueueEntry.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "EdgeDestinationQueueEntry_m.h"

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




Register_Class(EdgeDestinationQueueEntry);

EdgeDestinationQueueEntry::EdgeDestinationQueueEntry() : cObject()
{
    this->queueNo_var = -1;
    this->destNetworkAddr_var = 0;
    this->subNetAddr_var = 0;
    this->srcNetworkAddr_var = 0;
}

EdgeDestinationQueueEntry::EdgeDestinationQueueEntry(const EdgeDestinationQueueEntry& other) : cObject(other)
{
    copy(other);
}

EdgeDestinationQueueEntry::~EdgeDestinationQueueEntry()
{
}

EdgeDestinationQueueEntry& EdgeDestinationQueueEntry::operator=(const EdgeDestinationQueueEntry& other)
{
    if (this==&other) return *this;
    cObject::operator=(other);
    copy(other);
    return *this;
}

void EdgeDestinationQueueEntry::copy(const EdgeDestinationQueueEntry& other)
{
    this->queueNo_var = other.queueNo_var;
    this->destNetworkAddr_var = other.destNetworkAddr_var;
    this->subNetAddr_var = other.subNetAddr_var;
    this->srcNetworkAddr_var = other.srcNetworkAddr_var;
}

void EdgeDestinationQueueEntry::parsimPack(cCommBuffer *b)
{
    doPacking(b,this->queueNo_var);
    doPacking(b,this->destNetworkAddr_var);
    doPacking(b,this->subNetAddr_var);
    doPacking(b,this->srcNetworkAddr_var);
}

void EdgeDestinationQueueEntry::parsimUnpack(cCommBuffer *b)
{
    doUnpacking(b,this->queueNo_var);
    doUnpacking(b,this->destNetworkAddr_var);
    doUnpacking(b,this->subNetAddr_var);
    doUnpacking(b,this->srcNetworkAddr_var);
}

int EdgeDestinationQueueEntry::getQueueNo() const
{
    return queueNo_var;
}

void EdgeDestinationQueueEntry::setQueueNo(int queueNo)
{
    this->queueNo_var = queueNo;
}

const char * EdgeDestinationQueueEntry::getDestNetworkAddr() const
{
    return destNetworkAddr_var.c_str();
}

void EdgeDestinationQueueEntry::setDestNetworkAddr(const char * destNetworkAddr)
{
    this->destNetworkAddr_var = destNetworkAddr;
}

const char * EdgeDestinationQueueEntry::getSubNetAddr() const
{
    return subNetAddr_var.c_str();
}

void EdgeDestinationQueueEntry::setSubNetAddr(const char * subNetAddr)
{
    this->subNetAddr_var = subNetAddr;
}

const char * EdgeDestinationQueueEntry::getSrcNetworkAddr() const
{
    return srcNetworkAddr_var.c_str();
}

void EdgeDestinationQueueEntry::setSrcNetworkAddr(const char * srcNetworkAddr)
{
    this->srcNetworkAddr_var = srcNetworkAddr;
}

class EdgeDestinationQueueEntryDescriptor : public cClassDescriptor
{
  public:
    EdgeDestinationQueueEntryDescriptor();
    virtual ~EdgeDestinationQueueEntryDescriptor();

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

Register_ClassDescriptor(EdgeDestinationQueueEntryDescriptor);

EdgeDestinationQueueEntryDescriptor::EdgeDestinationQueueEntryDescriptor() : cClassDescriptor("EdgeDestinationQueueEntry", "cObject")
{
}

EdgeDestinationQueueEntryDescriptor::~EdgeDestinationQueueEntryDescriptor()
{
}

bool EdgeDestinationQueueEntryDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<EdgeDestinationQueueEntry *>(obj)!=NULL;
}

const char *EdgeDestinationQueueEntryDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int EdgeDestinationQueueEntryDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 4+basedesc->getFieldCount(object) : 4;
}

unsigned int EdgeDestinationQueueEntryDescriptor::getFieldTypeFlags(void *object, int field) const
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
    };
    return (field>=0 && field<4) ? fieldTypeFlags[field] : 0;
}

const char *EdgeDestinationQueueEntryDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "queueNo",
        "destNetworkAddr",
        "subNetAddr",
        "srcNetworkAddr",
    };
    return (field>=0 && field<4) ? fieldNames[field] : NULL;
}

int EdgeDestinationQueueEntryDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='q' && strcmp(fieldName, "queueNo")==0) return base+0;
    if (fieldName[0]=='d' && strcmp(fieldName, "destNetworkAddr")==0) return base+1;
    if (fieldName[0]=='s' && strcmp(fieldName, "subNetAddr")==0) return base+2;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcNetworkAddr")==0) return base+3;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *EdgeDestinationQueueEntryDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "string",
        "string",
        "string",
    };
    return (field>=0 && field<4) ? fieldTypeStrings[field] : NULL;
}

const char *EdgeDestinationQueueEntryDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int EdgeDestinationQueueEntryDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    EdgeDestinationQueueEntry *pp = (EdgeDestinationQueueEntry *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string EdgeDestinationQueueEntryDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    EdgeDestinationQueueEntry *pp = (EdgeDestinationQueueEntry *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getQueueNo());
        case 1: return oppstring2string(pp->getDestNetworkAddr());
        case 2: return oppstring2string(pp->getSubNetAddr());
        case 3: return oppstring2string(pp->getSrcNetworkAddr());
        default: return "";
    }
}

bool EdgeDestinationQueueEntryDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    EdgeDestinationQueueEntry *pp = (EdgeDestinationQueueEntry *)object; (void)pp;
    switch (field) {
        case 0: pp->setQueueNo(string2long(value)); return true;
        case 1: pp->setDestNetworkAddr((value)); return true;
        case 2: pp->setSubNetAddr((value)); return true;
        case 3: pp->setSrcNetworkAddr((value)); return true;
        default: return false;
    }
}

const char *EdgeDestinationQueueEntryDescriptor::getFieldStructName(void *object, int field) const
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
    };
    return (field>=0 && field<4) ? fieldStructNames[field] : NULL;
}

void *EdgeDestinationQueueEntryDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    EdgeDestinationQueueEntry *pp = (EdgeDestinationQueueEntry *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


