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

#include "Horizon.h"

Define_Module(Horizon);


Horizon::~Horizon(){
    //int i;
  // int numPorts = par("numPorts");
    //for(i=0;i<numPorts;i++)
      //free(horizon);
    free(horizonstarttime);
    free(horizonport);
    free(horizon);
    free(horizonconnectiontime);
  //  free(connection);

  //  delete horizon;
  //  delete horizonport;
  ///  delete horizonstarttime;

  //  free(portLambdas);
}

void Horizon::initialize()
{

    numPorts = par("numPorts");
    horizonport = (int*)calloc(numPorts,sizeof(int));
        int i;
        for(i=0;i<numPorts;i++){
            horizonport[i] = -1;
           WATCH(horizonport[i]);
        }

    horizon = (simtime_t*)calloc(numPorts,sizeof(simtime_t));
    for(int i=0;i<numPorts;i++){
          horizon[i] = 0;
          WATCH(horizon[i]);
    }

    horizonstarttime = (simtime_t*)calloc(numPorts,sizeof(simtime_t));
       for(int i=0;i<numPorts;i++){
             horizonstarttime[i] = 0;
             WATCH(horizonstarttime[i]);
       }
   horizonconnectiontime = (simtime_t*)calloc(numPorts,sizeof(simtime_t));
          for(int i=0;i<numPorts;i++){
              horizonconnectiontime[i] = 0;
                WATCH(horizonconnectiontime[i]);
          }

  /*  connection = new Connection *[numPorts] ;

    for(int i = 0; i < numPorts; i++)
            {
                connection[i] = new Connection();
                connection[i]->setInput_port(i);
            }

*/



    //horizonVec.reserve(numLambdas);

    //
}


int Horizon::findLatestConnection(int startinput, int startoutput,int startindex,int endindex){
    int min = startindex;
    int i;
    bool find=false;
    int j;

    double test = 0;


    for(i=startinput;i<startoutput;i++){

        for(j=startindex;j<endindex;j++){

            if(horizonport[i]==j && horizonport[j]==i && horizonconnectiontime[i]==horizonconnectiontime[j]){

           // if(connection[i]->getEnd_time()==connection[j]->getEnd_time() && connection[i]->getOutput_port()==j && connection[j]->getOutput_port()==i){
                //EV << "Testing Connection:";
                /*EV << " connection[i]->getEnd_time(): "<<connection[i]->getEnd_time() ;
                EV << " connection[j]->getEnd_time(): "<< connection[j]->getEnd_time() ;
                EV << " connection[i]->getOutput_port() :"<< connection[i]->getOutput_port() ;
                EV << " connection[j]->getOutput_port() :"<< connection[j]->getOutput_port() ;

                EV << " connection[i]->getStartTime() :"<< connection[i]->getStart_time();
                EV << " connection[j]->getStartTime() :"<< connection[j]->getStart_time() ;
*/
               // if(connection[j]->getEnd_time().dbl() <= test)
                if(horizonconnectiontime[j].dbl() >= test)

                {
                    find = true;
                    min = j;
        //            test = connection[j]->getEnd_time().dbl();
                    test = horizonconnectiontime[j].dbl();

                }

            }

        }

    }
    if (find)
          return min;
      else
          return -1;
  }

int Horizon::findDirectConnection(int startinput, int startoutput,int startindex,int endindex){
    int min = startindex;
    int i;
    bool find=false;
    int j;

    double test = 999999999;


    for(i=startinput;i<startoutput;i++){

        for(j=startindex;j<endindex;j++){

            if(horizonport[i]==j && horizonport[j]==i && horizon[i]==horizon[j]){

           // if(connection[i]->getEnd_time()==connection[j]->getEnd_time() && connection[i]->getOutput_port()==j && connection[j]->getOutput_port()==i){
                //EV << "Testing Connection:";
                /*EV << " connection[i]->getEnd_time(): "<<connection[i]->getEnd_time() ;
                EV << " connection[j]->getEnd_time(): "<< connection[j]->getEnd_time() ;
                EV << " connection[i]->getOutput_port() :"<< connection[i]->getOutput_port() ;
                EV << " connection[j]->getOutput_port() :"<< connection[j]->getOutput_port() ;

                EV << " connection[i]->getStartTime() :"<< connection[i]->getStart_time();
                EV << " connection[j]->getStartTime() :"<< connection[j]->getStart_time() ;
*/
               // if(connection[j]->getEnd_time().dbl() <= test)
                if(horizon[j].dbl() <= test)

                {
                    find = true;
                    min = j;
        //            test = connection[j]->getEnd_time().dbl();
                    test = horizon[j].dbl();

                }

            }

        }

    }
/*
    for(i=startindex;i<endindex;i++){
        EV << "Port No:" <<i << " Output Port" <<connection[i]->getOutput_port();
        EV << "Connection i:" <<i <<" End Time: "<< connection[i]->getEnd_time();
        EV << "Connection min:" <<min <<" End Time: " <<connection[min]->getEnd_time();
           if(connection[min]->getEnd_time() >= connection[i]->getEnd_time() && (connection[i]->getOutput_port() >= startinput && connection[i]->getOutput_port() <= startoutput )){
               EV << "Testing Connection:";
               min = i;
               find = true;
           }
    }

    */
    if (find)
        return min;
    else
        return -1;
}



int Horizon::findNearestHorizonDifferent(int startinput, int startoutput,int startindex,int endindex){
    int min = startindex;
    int i;
    int j;

    double test = 999999999;


    for(i=startinput;i<startoutput;i++){

        for(j=startindex;j<endindex;j++){

            if(horizonport[i]==j && horizonport[j]==i && horizon[i]==horizon[j]){
            }
            else{
                if(horizon[j].dbl() <= test)

                {
                    min = j;
                    test = horizon[j].dbl();
                }

            }

        }

    }
        return min;
}



int Horizon::findNearestHorizon(int startport,int endport){
   int min = startport;
   int i;

   for(i=startport;i<endport;i++){
       if(horizon[min] > horizon[i])
          min = i;
       }
/*
   for(i=startport;i<endport;i++){
          if(connection[min]->getEnd_time() > connection[i]->getEnd_time())
             min = i;
          }
*/
   return min;
}

void Horizon::updateHorizon(int inputport, int outputport, simtime_t startTime,simtime_t endTime,simtime_t currenttime){
   //Enter_Method("update %d,%d horizon",port);
   //horizon[port] = newTime;

  /* connection[inputport]->setOutput_port(outputport);
   connection[inputport]->setStart_time(startTime);
   connection[inputport]->setEnd_time(endTime);

   connection[outputport]->setOutput_port(inputport);
   connection[outputport]->setStart_time(startTime);
   connection[outputport]->setEnd_time(endTime);
*/
   horizon[inputport] = endTime;
   horizon[outputport] = endTime;

   horizonstarttime[inputport] = startTime;
   horizonstarttime[outputport] = startTime;

   horizonconnectiontime[inputport] = currenttime;
   horizonconnectiontime[outputport] = currenttime;


   horizonport[inputport] = outputport;
   horizonport[outputport] = inputport;


}

simtime_t Horizon::getHorizon(int port){
   Enter_Method("request %d,%d horizon",port);
   return horizon[port];
           //connection[port]->getEnd_time();

}

simtime_t Horizon::getConnectionTime(int port){
   Enter_Method("request %d,%d horizon",port);
   return horizonconnectiontime[port];
           //connection[port]->getEnd_time();

}

simtime_t Horizon::getHorizonStart(int port){
   Enter_Method("request %d,%d horizon",port);
   return horizonstarttime[port];
          // connection[port]->getStart_time();
}

int Horizon::getOutputPort(int port){
   Enter_Method("request %d,%d horizon",port);
   return horizonport[port];
          // connection[port]->getOutput_port();
}
