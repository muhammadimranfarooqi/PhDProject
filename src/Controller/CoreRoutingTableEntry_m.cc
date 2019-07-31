//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/Controller/CoreRoutingTableEntry.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "CoreRoutingTableEntry_m.h"

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




Register_Class(CoreRoutingTableEntry);

CoreRoutingTableEntry::CoreRoutingTableEntry() : cObject()
{
    this->ToRAddress_var = 0;
    this->destNetworkAddr_var = 0;
    this->start_port_var = -1;
    this->control_port_var = -1;
    this->control_switch_var = -1;
}

CoreRoutingTableEntry::CoreRoutingTableEntry(const CoreRoutingTableEntry& other) : cObject(other)
{
    copy(other);
}

CoreRoutingTableEntry::~CoreRoutingTableEntry()
{
}

CoreRoutingTableEntry& CoreRoutingTableEntry::operator=(const CoreRoutingTableEntry& other)
{
    if (this==&other) return *this;
    cObject::operator=(other);
    copy(other);
    return *this;
}

void CoreRoutingTableEntry::copy(const CoreRoutingTableEntry& other)
{
    this->ToRAddress_var = other.ToRAddress_var;
    this->destNetworkAddr_var = other.destNetworkAddr_var;
    this->start_port_var = other.start_port_var;
    this->control_port_var = other.control_port_var;
    this->control_switch_var = other.control_switch_var;
}

void CoreRoutingTableEntry::parsimPack(cCommBuffer *b)
{
    doPacking(b,this->ToRAddress_var);
    doPacking(b,this->destNetworkAddr_var);
    doPacking(b,this->start_port_var);
    doPacking(b,this->control_port_var);
    doPacking(b,this->control_switch_var);
}

void CoreRoutingTableEntry::parsimUnpack(cCommBuffer *b)
{
    doUnpacking(b,this->ToRAddress_var);
    doUnpacking(b,this->destNetworkAddr_var);
    doUnpacking(b,this->start_port_var);
    doUnpacking(b,this->control_port_var);
    doUnpacking(b,this->control_switch_var);
}

const char * CoreRoutingTableEntry::getToRAddress() const
{
    return ToRAddress_var.c_str();
}

void CoreRoutingTableEntry::setToRAddress(const char * ToRAddress)
{
    this->ToRAddress_var = ToRAddress;
}

const char * CoreRoutingTableEntry::getDestNetworkAddr() const
{
    return destNetworkAddr_var.c_str();
}

void CoreRoutingTableEntry::setDestNetworkAddr(const char * destNetworkAddr)
{
    this->destNetworkAddr_var = destNetworkAddr;
}

int CoreRoutingTableEntry::getStart_port() const
{
    return start_port_var;
}

void CoreRoutingTableEntry::setStart_port(int start_port)
{
    this->start_port_var = start_port;
}

int CoreRoutingTableEntry::getControl_port() const
{
    return control_port_var;
}

void CoreRoutingTableEntry::setControl_port(int control_port)
{
    this->control_port_var = control_port;
}

int CoreRoutingTableEntry::getControl_switch() const
{
    return control_switch_var;
}

void CoreRoutingTableEntry::setControl_switch(int control_switch)
{
    this->control_switch_var = control_switch;
}

class CoreRoutingTableEntryDescriptor : public cClassDescriptor
{
  public:
    CoreRoutingTableEntryDescriptor();
    virtual ~CoreRoutingTableEntryDescriptor();

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

Register_ClassDescriptor(CoreRoutingTableEntryDescriptor);

CoreRoutingTableEntryDescriptor::CoreRoutingTableEntryDescriptor() : cClassDescriptor("CoreRoutingTableEntry", "cObject")
{
}

CoreRoutingTableEntryDescriptor::~CoreRoutingTableEntryDescriptor()
{
}

bool CoreRoutingTableEntryDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<CoreRoutingTableEntry *>(obj)!=NULL;
}

const char *CoreRoutingTableEntryDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int CoreRoutingTableEntryDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 5+basedesc->getFieldCount(object) : 5;
}

unsigned int CoreRoutingTableEntryDescriptor::getFieldTypeFlags(void *object, int field) const
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
    };
    return (field>=0 && field<5) ? fieldTypeFlags[field] : 0;
}

const char *CoreRoutingTableEntryDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "ToRAddress",
        "destNetworkAddr",
        "start_port",
        "control_port",
        "control_switch",
    };
    return (field>=0 && field<5) ? fieldNames[field] : NULL;
}

int CoreRoutingTableEntryDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='T' && strcmp(fieldName, "ToRAddress")==0) return base+0;
    if (fieldName[0]=='d' && strcmp(fieldName, "destNetworkAddr")==0) return base+1;
    if (fieldName[0]=='s' && strcmp(fieldName, "start_port")==0) return base+2;
    if (fieldName[0]=='c' && strcmp(fieldName, "control_port")==0) return base+3;
    if (fieldName[0]=='c' && strcmp(fieldName, "control_switch")==0) return base+4;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *CoreRoutingTableEntryDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "string",
        "string",
        "int",
        "int",
        "int",
    };
    return (field>=0 && field<5) ? fieldTypeStrings[field] : NULL;
}

const char *CoreRoutingTableEntryDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int CoreRoutingTableEntryDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    CoreRoutingTableEntry *pp = (CoreRoutingTableEntry *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string CoreRoutingTableEntryDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    CoreRoutingTableEntry *pp = (CoreRoutingTableEntry *)object; (void)pp;
    switch (field) {
        case 0: return oppstring2string(pp->getToRAddress());
        case 1: return oppstring2string(pp->getDestNetworkAddr());
        case 2: return long2string(pp->getStart_port());
        case 3: return long2string(pp->getControl_port());
        case 4: return long2string(pp->getControl_switch());
        default: return "";
    }
}

bool CoreRoutingTableEntryDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    CoreRoutingTableEntry *pp = (CoreRoutingTableEntry *)object; (void)pp;
    switch (field) {
        case 0: pp->setToRAddress((value)); return true;
        case 1: pp->setDestNetworkAddr((value)); return true;
        case 2: pp->setStart_port(string2long(value)); return true;
        case 3: pp->setControl_port(string2long(value)); return true;
        case 4: pp->setControl_switch(string2long(value)); return true;
        default: return false;
    }
}

const char *CoreRoutingTableEntryDescriptor::getFieldStructName(void *object, int field) const
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
    };
    return (field>=0 && field<5) ? fieldStructNames[field] : NULL;
}

void *CoreRoutingTableEntryDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    CoreRoutingTableEntry *pp = (CoreRoutingTableEntry *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


