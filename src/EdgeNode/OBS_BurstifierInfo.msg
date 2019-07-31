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

//cplusplus {{
//#include "IPv4Address.h"
//}}


//class noncobject IPv4Address;

// Additional burst control info included in OBS_PacketBurstifier and OBS_FileBurstifier.
class OBS_BurstifierInfo
{
      bool bidirectional = false; // Destination label.
      string destNetworkAddr; //!< Destination address (isSet[5]).
      int slowChannel = -1; // Assigned lambda.
      string srcNetworkAddr; //!< Destination address (isSet[5]).

      
      int fastChannel = -1; // Assigned lambda.
	  simtime_t StartTimeSlow = -1;
	  simtime_t StartTimeFast = -1;
      
}
