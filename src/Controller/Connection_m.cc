//
// Generated file, do not edit! Created by opp_msgc 4.3 from src/Controller/Connection.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "Connection_m.h"

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




Register_Class(Connection);

Connection::Connection() : cObject()
{
    this->start_time_var = -1;
    this->end_time_var = -1;
    this->input_port_var = -1;
    this->output_port_var = -1;
}

Connection::Connection(const Connection& other) : cObject(other)
{
    copy(other);
}

Connection::~Connection()
{
}

Connection& Connection::operator=(const Connection& other)
{
    if (this==&other) return *this;
    cObject::operator=(other);
    copy(other);
    return *this;
}

void Connection::copy(const Connection& other)
{
    this->start_time_var = other.start_time_var;
    this->end_time_var = other.end_time_var;
    this->input_port_var = other.input_port_var;
    this->output_port_var = other.output_port_var;
}

void Connection::parsimPack(cCommBuffer *b)
{
    doPacking(b,this->start_time_var);
    doPacking(b,this->end_time_var);
    doPacking(b,this->input_port_var);
    doPacking(b,this->output_port_var);
}

void Connection::parsimUnpack(cCommBuffer *b)
{
    doUnpacking(b,this->start_time_var);
    doUnpacking(b,this->end_time_var);
    doUnpacking(b,this->input_port_var);
    doUnpacking(b,this->output_port_var);
}

simtime_t Connection::getStart_time() const
{
    return start_time_var;
}

void Connection::setStart_time(simtime_t start_time)
{
    this->start_time_var = start_time;
}

simtime_t Connection::getEnd_time() const
{
    return end_time_var;
}

void Connection::setEnd_time(simtime_t end_time)
{
    this->end_time_var = end_time;
}

int Connection::getInput_port() const
{
    return input_port_var;
}

void Connection::setInput_port(int input_port)
{
    this->input_port_var = input_port;
}

int Connection::getOutput_port() const
{
    return output_port_var;
}

void Connection::setOutput_port(int output_port)
{
    this->output_port_var = output_port;
}

class ConnectionDescriptor : public cClassDescriptor
{
  public:
    ConnectionDescriptor();
    virtual ~ConnectionDescriptor();

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

Register_ClassDescriptor(ConnectionDescriptor);

ConnectionDescriptor::ConnectionDescriptor() : cClassDescriptor("Connection", "cObject")
{
}

ConnectionDescriptor::~ConnectionDescriptor()
{
}

bool ConnectionDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<Connection *>(obj)!=NULL;
}

const char *ConnectionDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int ConnectionDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 4+basedesc->getFieldCount(object) : 4;
}

unsigned int ConnectionDescriptor::getFieldTypeFlags(void *object, int field) const
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

const char *ConnectionDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "start_time",
        "end_time",
        "input_port",
        "output_port",
    };
    return (field>=0 && field<4) ? fieldNames[field] : NULL;
}

int ConnectionDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='s' && strcmp(fieldName, "start_time")==0) return base+0;
    if (fieldName[0]=='e' && strcmp(fieldName, "end_time")==0) return base+1;
    if (fieldName[0]=='i' && strcmp(fieldName, "input_port")==0) return base+2;
    if (fieldName[0]=='o' && strcmp(fieldName, "output_port")==0) return base+3;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *ConnectionDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "simtime_t",
        "simtime_t",
        "int",
        "int",
    };
    return (field>=0 && field<4) ? fieldTypeStrings[field] : NULL;
}

const char *ConnectionDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
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

int ConnectionDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    Connection *pp = (Connection *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string ConnectionDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    Connection *pp = (Connection *)object; (void)pp;
    switch (field) {
        case 0: return double2string(pp->getStart_time());
        case 1: return double2string(pp->getEnd_time());
        case 2: return long2string(pp->getInput_port());
        case 3: return long2string(pp->getOutput_port());
        default: return "";
    }
}

bool ConnectionDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    Connection *pp = (Connection *)object; (void)pp;
    switch (field) {
        case 0: pp->setStart_time(string2double(value)); return true;
        case 1: pp->setEnd_time(string2double(value)); return true;
        case 2: pp->setInput_port(string2long(value)); return true;
        case 3: pp->setOutput_port(string2long(value)); return true;
        default: return false;
    }
}

const char *ConnectionDescriptor::getFieldStructName(void *object, int field) const
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

void *ConnectionDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    Connection *pp = (Connection *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


