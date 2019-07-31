//
// Copyright (C) 2010-2012 Javier Armendariz Silva, Naiara Garcia Royo
// Copyright (C) 2010-2012 Universidad Publica de Navarra
//
// This file is part of OBSModules.
//
// OBSModules is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// OBSModules is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with OBSModules.  If not, see <http://www.gnu.org/licenses/>.
//

//Also known as BCP. Control Message for OBS transmissions.
//
//The kind field identifies the class of this message:
//
// - <b>kind 1</b>: Optical BCP beginning
// - <b>kind 2</b>: Optical BCP end
// - <b>kind 3</b>: Electrical BCP (used on OBS_CoreControlUnit)
//import inet.networklayer.ipv4.IPv4Datagram;

//cplusplus {{
//#include "IPv4Datagram.h"
//#include "IPv4Datagram_m.h"
//}}
//class IPv4Datagram;

packet OBS_BurstControlPacket //extends IPv4Datagram
{
 
    int burstifierId = -1; //Burstifier id
    int numSeq = -1; //Sequence number into packet burstifier

    int senderId = -1; //Burst sender identifier. Not used as a Id

	int burstSize = -1;
    int burstSizeFast = -1; // Associated burst size
    int burstSizeSlow = -1; // Associated burst size
    simtime_t StartTimeSlow = -1;
    simtime_t StartTimeFast = -1;

    simtime_t EndTimeSlow = -1;
    simtime_t EndTimeFast = -1;

  
    int burstId = -1;
    int slowChannel = -1; // Assigned lambda.
    int fastChannel = -1; // Destination label.
    string destNetworkAddr; //!< Destination address (isSet[5]).
    string srcNetworkAddr; //!< Destination address (isSet[5]).
    
    bool bidirectional = false; // Destination label.
    
  
  
    
}
