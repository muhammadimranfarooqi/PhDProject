//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

#include "Configurator.h"
#include <IPv4Datagram.h>

Define_Module(Configurator);
simsignal_t Configurator::rcvdConf = SIMSIGNAL_NULL;
simsignal_t Configurator::dropConf = SIMSIGNAL_NULL;
simsignal_t Configurator::rcvdLateConf = SIMSIGNAL_NULL;


Configurator::~Configurator(){


}
void Configurator::initialize()
{
    cModule *parent = getParentModule();


    oxc = check_and_cast<OpticalCrossConnect*>(parent->getSubmodule("OXC"));

    rcvdConf = registerSignal("rcvdConf");
    dropConf = registerSignal("dropConf");
    rcvdLateConf = registerSignal("rcvdLateConf");

    //   EV<< "OXC Module" <<parent->getSubmodule("OXC");

 //   oxc = check_and_cast<OpticalCrossConnect*>(parent->getSubmodule("OXC"));


}

void Configurator::handleMessage(cMessage *msg)
{

       //   EV << "Size: " << info->getByteLength();
       //  EV << "Size: " << info->getBitLength();
       //  EV << "Message: " << info;
       //  EV << "Delay Time: " << (simTime() - info->getCreationTime());

         if(msg->isSelfMessage()){
             Configure *info = check_and_cast <Configure*>(msg);
              if(info->getEnd()){
                  oxc->unsetGate(info->getInputgate());
                  oxc->unsetGate(info->getOutputgate());
                  cancelAndDelete(info);
              }
              else{
                  oxc->unsetGate(info->getInputgate());
                  oxc->unsetGate(info->getOutputgate());
                  oxc->setGate(info->getInputgate(),info->getOutputgate());
                  oxc->setGate(info->getOutputgate(),info->getInputgate());
                  if(msg->isScheduled())
                      cancelEvent(info);
                  info->setEnd(true);
                  scheduleAt(info->getEndtime(),info);
              }
         }

         else{
             IPv4Datagram *bcpip = check_and_cast<IPv4Datagram *> (msg);
             cPacket *bcppacket = bcpip->decapsulate();
             Configure *info = check_and_cast <Configure*>(bcppacket);

             if(simTime()>=info->getEndtime())
             {
                 emit(dropConf, info);
                 delete info;

             }

             else{
                 if(simTime()<=info->getStarttime()){
                     scheduleAt(info->getStarttime(),info);
                     emit(rcvdConf, info);
                 }
                 else{
                     scheduleAt(simTime(),info);
                     emit(rcvdLateConf, info);
                 }
             }
             delete bcpip;
         }





    // TODO - Generated method body
}


