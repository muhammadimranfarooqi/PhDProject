//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/OpticalSwitch/Configure.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "Configure_m.h"

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




Register_Class(Configure);

Configure::Configure(const char *name, int kind) : cPacket(name,kind)
{
    this->inputgate_var = -1;
    this->outputgate_var = -1;
    this->starttime_var = -1;
    this->endtime_var = -1;
    this->end_var = false;
}

Configure::Configure(const Configure& other) : cPacket(other)
{
    copy(other);
}

Configure::~Configure()
{
}

Configure& Configure::operator=(const Configure& other)
{
    if (this==&other) return *this;
    cPacket::operator=(other);
    copy(other);
    return *this;
}

void Configure::copy(const Configure& other)
{
    this->inputgate_var = other.inputgate_var;
    this->outputgate_var = other.outputgate_var;
    this->starttime_var = other.starttime_var;
    this->endtime_var = other.endtime_var;
    this->end_var = other.end_var;
}

void Configure::parsimPack(cCommBuffer *b)
{
    cPacket::parsimPack(b);
    doPacking(b,this->inputgate_var);
    doPacking(b,this->outputgate_var);
    doPacking(b,this->starttime_var);
    doPacking(b,this->endtime_var);
    doPacking(b,this->end_var);
}

void Configure::parsimUnpack(cCommBuffer *b)
{
    cPacket::parsimUnpack(b);
    doUnpacking(b,this->inputgate_var);
    doUnpacking(b,this->outputgate_var);
    doUnpacking(b,this->starttime_var);
    doUnpacking(b,this->endtime_var);
    doUnpacking(b,this->end_var);
}

int Configure::getInputgate() const
{
    return inputgate_var;
}

void Configure::setInputgate(int inputgate)
{
    this->inputgate_var = inputgate;
}

int Configure::getOutputgate() const
{
    return outputgate_var;
}

void Configure::setOutputgate(int outputgate)
{
    this->outputgate_var = outputgate;
}

simtime_t Configure::getStarttime() const
{
    return starttime_var;
}

void Configure::setStarttime(simtime_t starttime)
{
    this->starttime_var = starttime;
}

simtime_t Configure::getEndtime() const
{
    return endtime_var;
}

void Configure::setEndtime(simtime_t endtime)
{
    this->endtime_var = endtime;
}

bool Configure::getEnd() const
{
    return end_var;
}

void Configure::setEnd(bool end)
{
    this->end_var = end;
}

class ConfigureDescriptor : public cClassDescriptor
{
  public:
    ConfigureDescriptor();
    virtual ~ConfigureDescriptor();

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

Register_ClassDescriptor(ConfigureDescriptor);

ConfigureDescriptor::ConfigureDescriptor() : cClassDescriptor("Configure", "cPacket")
{
}

ConfigureDescriptor::~ConfigureDescriptor()
{
}

bool ConfigureDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<Configure *>(obj)!=NULL;
}

const char *ConfigureDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int ConfigureDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 5+basedesc->getFieldCount(object) : 5;
}

unsigned int ConfigureDescriptor::getFieldTypeFlags(void *object, int field) const
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

const char *ConfigureDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "inputgate",
        "outputgate",
        "starttime",
        "endtime",
        "end",
    };
    return (field>=0 && field<5) ? fieldNames[field] : NULL;
}

int ConfigureDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='i' && strcmp(fieldName, "inputgate")==0) return base+0;
    if (fieldName[0]=='o' && strcmp(fieldName, "outputgate")==0) return base+1;
    if (fieldName[0]=='s' && strcmp(fieldName, "starttime")==0) return base+2;
    if (fieldName[0]=='e' && strcmp(fieldName, "endtime")==0) return base+3;
    if (fieldName[0]=='e' && strcmp(fieldName, "end")==0) return base+4;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *ConfigureDescriptor::getFieldTypeString(void *object, int field) const
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
        "simtime_t",
        "bool",
    };
    return (field>=0 && field<5) ? fieldTypeStrings[field] : NULL;
}

const char *ConfigureDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int ConfigureDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    Configure *pp = (Configure *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string ConfigureDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    Configure *pp = (Configure *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getInputgate());
        case 1: return long2string(pp->getOutputgate());
        case 2: return double2string(pp->getStarttime());
        case 3: return double2string(pp->getEndtime());
        case 4: return bool2string(pp->getEnd());
        default: return "";
    }
}

bool ConfigureDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    Configure *pp = (Configure *)object; (void)pp;
    switch (field) {
        case 0: pp->setInputgate(string2long(value)); return true;
        case 1: pp->setOutputgate(string2long(value)); return true;
        case 2: pp->setStarttime(string2double(value)); return true;
        case 3: pp->setEndtime(string2double(value)); return true;
        case 4: pp->setEnd(string2bool(value)); return true;
        default: return false;
    }
}

const char *ConfigureDescriptor::getFieldStructName(void *object, int field) const
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

void *ConfigureDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    Configure *pp = (Configure *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


