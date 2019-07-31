//
// Copyright (C) 2010-2013 Felix Espina
// Copyright (C) 2010-2013 Universidad Publica de Navarra
//
// This file is part of DataCentersSimulation.
//
// DataCentersSimulation is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// DataCentersSimulation is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with DataCentersSimulation.  If not, see <http://www.gnu.org/licenses/>.
//

package datacenterssimulation.Examples.EdgeNodeExample;

import datacenterssimulation.src.Controller.*;
import datacenterssimulation.src.OpticalSwitch.*;

import datacenterssimulation.src.EdgeNode.OBS_EdgeNode;


import inet.nodes.inet.StandardHost;
import inet.nodes.inet.Router;

import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import ned.DatarateChannel;

network EdgeNodeExampleLarge
{
    parameters:

        int numChannelFastSwitch;
        int numChannelSlowSwitch;


    types:
        channel fiber extends DatarateChannel
        {
            datarate = 10Gbps;
            delay = 100ns;
        }
         channel fiber40 extends DatarateChannel
        {
            datarate = 40Gbps;
            delay = 100ns;
        }
   
    submodules:
      // Network 1 hosts

        network1host1: StandardHost {
            parameters:
                routingFile = "network/network1/H1.irt";
                //@display("p=500,100");
        }
        network1host2: StandardHost {
            parameters:
                routingFile = "network/network1/H2.irt";
                //@display("p=500,300");
        }
        network1host3: StandardHost {
            parameters:
                routingFile = "network/network1/H3.irt";
                //@display("p=500,500");
        }
        network1host4: StandardHost {
            parameters:
                routingFile = "network/network1/H4.irt";
                //@display("p=500,700");
        }
        network1host5: StandardHost {
            parameters:
                routingFile = "network/network1/H5.irt";
                //@display("p=500,900");
        }
        network1host6: StandardHost {
            parameters:
                routingFile = "network/network1/H6.irt";
                //@display("p=500,100");
        }
        network1host7: StandardHost {
            parameters:
                routingFile = "network/network1/H7.irt";
                //@display("p=500,300");
        }
        network1host8: StandardHost {
            parameters:
                routingFile = "network/network1/H8.irt";
                //@display("p=500,500");
        }
        network1host9: StandardHost {
            parameters:
                routingFile = "network/network1/H9.irt";
                //@display("p=500,700");
        }
        network1host10: StandardHost {
            parameters:
                routingFile = "network/network1/H10.irt";
                //@display("p=500,900");
        }

        network1host11: StandardHost {
            parameters:
                routingFile = "network/network1/H11.irt";
                //@display("p=500,100");
        }

        network1host12: StandardHost {
            parameters:
                routingFile = "network/network1/H12.irt";
                //@display("p=500,300");
        }
        network1host13: StandardHost {
            parameters:
                routingFile = "network/network1/H13.irt";
                //@display("p=500,500");
        }
        network1host14: StandardHost {
            parameters:
                routingFile = "network/network1/H14.irt";
                //@display("p=500,700");
        }
        network1host15: StandardHost {
            parameters:
                routingFile = "network/network1/H15.irt";
                //@display("p=500,900");
        }
        network1host16: StandardHost {
            parameters:
                routingFile = "network/network1/H16.irt";
                //@display("p=500,100");
        }
        network1host17: StandardHost {
            parameters:
                routingFile = "network/network1/H17.irt";
                //@display("p=500,300");
        }
        network1host18: StandardHost {
            parameters:
                routingFile = "network/network1/H18.irt";
                //@display("p=500,500");
        }
        network1host19: StandardHost {
            parameters:
                routingFile = "network/network1/H19.irt";
                //@display("p=500,700");
        }
        network1host20: StandardHost {
            parameters:
                routingFile = "network/network1/H20.irt";
                //@display("p=500,900");
        }
        network1host21: StandardHost {
            parameters:
                routingFile = "network/network1/H21.irt";
                //@display("p=500,100");
        }
        network1host22: StandardHost {
            parameters:
                routingFile = "network/network1/H22.irt";
                //@display("p=500,300");
        }
        network1host23: StandardHost {
            parameters:
                routingFile = "network/network1/H23.irt";
                //@display("p=500,500");
        }
        network1host24: StandardHost {
            parameters:
                routingFile = "network/network1/H24.irt";
                //@display("p=500,700");
        }
        network1host25: StandardHost {
            parameters:
                routingFile = "network/network1/H25.irt";
                //@display("p=500,900");
        }
        network1host26: StandardHost {
            parameters:
                routingFile = "network/network1/H26.irt";
                //@display("p=500,100");
        }
        network1host27: StandardHost {
            parameters:
                routingFile = "network/network1/H27.irt";
                //@display("p=500,300");
        }
        network1host28: StandardHost {
            parameters:
                routingFile = "network/network1/H28.irt";
                //@display("p=500,500");
        }
        network1host29: StandardHost {
            parameters:
                routingFile = "network/network1/H29.irt";
                //@display("p=500,700");
        }
        network1host30: StandardHost {
            parameters:
                routingFile = "network/network1/H30.irt";
                //@display("p=500,900");
        }
        network1host31: StandardHost {
            parameters:
                routingFile = "network/network1/H31.irt";
                //@display("p=500,100");
        }

        network1host32: StandardHost {
            parameters:
                routingFile = "network/network1/H32.irt";
                //@display("p=500,300");
        }
        network1host33: StandardHost {
            parameters:
                routingFile = "network/network1/H33.irt";
                //@display("p=500,500");
        }
        network1host34: StandardHost {
            parameters:
                routingFile = "network/network1/H34.irt";
                //@display("p=500,700");
        }
        network1host35: StandardHost {
            parameters:
                routingFile = "network/network1/H35.irt";
                //@display("p=500,900");
        }
        network1host36: StandardHost {
            parameters:
                routingFile = "network/network1/H36.irt";
                //@display("p=500,100");
        }
        network1host37: StandardHost {
            parameters:
                routingFile = "network/network1/H37.irt";
                //@display("p=500,300");
        }
        network1host38: StandardHost {
            parameters:
                routingFile = "network/network1/H38.irt";
                //@display("p=500,500");
        }
        network1host39: StandardHost {
            parameters:
                routingFile = "network/network1/H39.irt";
                //@display("p=500,700");
        }
        network1host40: StandardHost {
            parameters:
                routingFile = "network/network1/H40.irt";
                //@display("p=500,900");
        }



        network2host1: StandardHost {
            parameters:
                routingFile = "network/network2/H1.irt";
                //@display("p=5000,100");
        }
        network2host2: StandardHost {
            parameters:
                routingFile = "network/network2/H2.irt";
                //@display("p=5000,300");
        }
        network2host3: StandardHost {
            parameters:
                routingFile = "network/network2/H3.irt";
                //@display("p=5000,500");
        }
        network2host4: StandardHost {
            parameters:
                routingFile = "network/network2/H4.irt";
                //@display("p=5000,700");
        }
        network2host5: StandardHost {
            parameters:
                routingFile = "network/network2/H5.irt";
                //@display("p=5000,900");
        }
        network2host6: StandardHost {
            parameters:
                routingFile = "network/network2/H6.irt";
                //@display("p=5000,100");
        }
        network2host7: StandardHost {
            parameters:
                routingFile = "network/network2/H7.irt";
                //@display("p=5000,300");
        }
        network2host8: StandardHost {
            parameters:
                routingFile = "network/network2/H8.irt";
                //@display("p=5000,500");
        }
        network2host9: StandardHost {
            parameters:
                routingFile = "network/network2/H9.irt";
                //@display("p=5000,700");
        }
        network2host10: StandardHost {
            parameters:
                routingFile = "network/network2/H10.irt";
                //@display("p=5000,900");
        }
      network2host11: StandardHost {
            parameters:
                routingFile = "network/network2/H11.irt";
                //@display("p=5000,100");
        }
        network2host12: StandardHost {
            parameters:
                routingFile = "network/network2/H12.irt";
                //@display("p=5000,300");
        }
        network2host13: StandardHost {
            parameters:
                routingFile = "network/network2/H13.irt";
                //@display("p=5000,500");
        }
        network2host14: StandardHost {
            parameters:
                routingFile = "network/network2/H14.irt";
                //@display("p=5000,700");
        }
        network2host15: StandardHost {
            parameters:
                routingFile = "network/network2/H15.irt";
                //@display("p=5000,900");
        }
        network2host16: StandardHost {
            parameters:
                routingFile = "network/network2/H16.irt";
                //@display("p=5000,100");
        }
        network2host17: StandardHost {
            parameters:
                routingFile = "network/network2/H17.irt";
                //@display("p=5000,300");
        }
        network2host18: StandardHost {
            parameters:
                routingFile = "network/network2/H18.irt";
                //@display("p=5000,500");
        }
        network2host19: StandardHost {
            parameters:
                routingFile = "network/network2/H19.irt";
                //@display("p=5000,700");
        }
        network2host20: StandardHost {
            parameters:
                routingFile = "network/network2/H20.irt";
                //@display("p=5000,900");
        }
        network2host21: StandardHost {
            parameters:
                routingFile = "network/network2/H21.irt";
                //@display("p=5000,100");
        }
        network2host22: StandardHost {
            parameters:
                routingFile = "network/network2/H22.irt";
                //@display("p=5000,300");
        }
        network2host23: StandardHost {
            parameters:
                routingFile = "network/network2/H23.irt";
                //@display("p=5000,500");
        }
        network2host24: StandardHost {
            parameters:
                routingFile = "network/network2/H24.irt";
                //@display("p=5000,700");
        }
        network2host25: StandardHost {
            parameters:
                routingFile = "network/network2/H25.irt";
                //@display("p=5000,900");
        }
        network2host26: StandardHost {
            parameters:
                routingFile = "network/network2/H26.irt";
                //@display("p=5000,100");
        }
        network2host27: StandardHost {
            parameters:
                routingFile = "network/network2/H27.irt";
                //@display("p=5000,300");
        }
        network2host28: StandardHost {
            parameters:
                routingFile = "network/network2/H28.irt";
                //@display("p=5000,500");
        }
        network2host29: StandardHost {
            parameters:
                routingFile = "network/network2/H29.irt";
                //@display("p=5000,700");
        }
        network2host30: StandardHost {
            parameters:
                routingFile = "network/network2/H30.irt";
                //@display("p=5000,900");
        }
     network2host31: StandardHost {
            parameters:
                routingFile = "network/network2/H31.irt";
                //@display("p=5000,100");
        }
        network2host32: StandardHost {
            parameters:
                routingFile = "network/network2/H32.irt";
                //@display("p=5000,300");
        }
        network2host33: StandardHost {
            parameters:
                routingFile = "network/network2/H33.irt";
                //@display("p=5000,500");
        }
        network2host34: StandardHost {
            parameters:
                routingFile = "network/network2/H34.irt";
                //@display("p=5000,700");
        }
        network2host35: StandardHost {
            parameters:
                routingFile = "network/network2/H35.irt";
                //@display("p=5000,900");
        }
        network2host36: StandardHost {
            parameters:
                routingFile = "network/network2/H36.irt";
                //@display("p=5000,100");
        }
        network2host37: StandardHost {
            parameters:
                routingFile = "network/network2/H37.irt";
                //@display("p=5000,300");
        }
        network2host38: StandardHost {
            parameters:
                routingFile = "network/network2/H38.irt";
                //@display("p=5000,500");
        }
        network2host39: StandardHost {
            parameters:
                routingFile = "network/network2/H39.irt";
                //@display("p=5000,700");
        }
        network2host40: StandardHost {
            parameters:
                routingFile = "network/network2/H40.irt";
                //@display("p=5000,900");
        }


        network3host1: StandardHost {
            parameters:
                routingFile = "network/network3/H1.irt";
                //@display("p=5000,100");
        }
        network3host2: StandardHost {
            parameters:
                routingFile = "network/network3/H2.irt";
                //@display("p=5000,300");
        }
        network3host3: StandardHost {
            parameters:
                routingFile = "network/network3/H3.irt";
                //@display("p=5000,500");
        }
        network3host4: StandardHost {
            parameters:
                routingFile = "network/network3/H4.irt";
                //@display("p=5000,700");
        }
        network3host5: StandardHost {
            parameters:
                routingFile = "network/network3/H5.irt";
                //@display("p=5000,900");
        }
        network3host6: StandardHost {
            parameters:
                routingFile = "network/network3/H6.irt";
                //@display("p=5000,100");
        }
        network3host7: StandardHost {
            parameters:
                routingFile = "network/network3/H7.irt";
                //@display("p=5000,300");
        }
        network3host8: StandardHost {
            parameters:
                routingFile = "network/network3/H8.irt";
                //@display("p=5000,500");
        }
        network3host9: StandardHost {
            parameters:
                routingFile = "network/network3/H9.irt";
                //@display("p=5000,700");
        }
        network3host10: StandardHost {
            parameters:
                routingFile = "network/network3/H10.irt";
                //@display("p=5000,900");
        }



        network3host11: StandardHost {
            parameters:
                routingFile = "network/network3/H11.irt";
                //@display("p=5000,100");
        }
        network3host12: StandardHost {
            parameters:
                routingFile = "network/network3/H12.irt";
                //@display("p=5000,300");
        }
        network3host13: StandardHost {
            parameters:
                routingFile = "network/network3/H13.irt";
                //@display("p=5000,500");
        }
        network3host14: StandardHost {
            parameters:
                routingFile = "network/network3/H14.irt";
                //@display("p=5000,700");
        }
        network3host15: StandardHost {
            parameters:
                routingFile = "network/network3/H15.irt";
                //@display("p=5000,900");
        }
        network3host16: StandardHost {
            parameters:
                routingFile = "network/network3/H16.irt";
                //@display("p=5000,100");
        }
        network3host17: StandardHost {
            parameters:
                routingFile = "network/network3/H17.irt";
                //@display("p=5000,300");
        }
        network3host18: StandardHost {
            parameters:
                routingFile = "network/network3/H18.irt";
                //@display("p=5000,500");
        }
        network3host19: StandardHost {
            parameters:
                routingFile = "network/network3/H19.irt";
                //@display("p=5000,700");
        }
        network3host20: StandardHost {
            parameters:
                routingFile = "network/network3/H20.irt";
                //@display("p=5000,900");
        }






        network3host21: StandardHost {
            parameters:
                routingFile = "network/network3/H21.irt";
                //@display("p=5000,100");
        }
        network3host22: StandardHost {
            parameters:
                routingFile = "network/network3/H22.irt";
                //@display("p=5000,300");
        }
        network3host23: StandardHost {
            parameters:
                routingFile = "network/network3/H23.irt";
                //@display("p=5000,500");
        }
        network3host24: StandardHost {
            parameters:
                routingFile = "network/network3/H24.irt";
                //@display("p=5000,700");
        }
        network3host25: StandardHost {
            parameters:
                routingFile = "network/network3/H25.irt";
                //@display("p=5000,900");
        }
        network3host26: StandardHost {
            parameters:
                routingFile = "network/network3/H26.irt";
                //@display("p=5000,100");
        }
        network3host27: StandardHost {
            parameters:
                routingFile = "network/network3/H27.irt";
                //@display("p=5000,300");
        }
        network3host28: StandardHost {
            parameters:
                routingFile = "network/network3/H28.irt";
                //@display("p=5000,500");
        }
        network3host29: StandardHost {
            parameters:
                routingFile = "network/network3/H29.irt";
                //@display("p=5000,700");
        }
        network3host30: StandardHost {
            parameters:
                routingFile = "network/network3/H30.irt";
                //@display("p=5000,900");
        }


        network3host31: StandardHost {
            parameters:
                routingFile = "network/network3/H31.irt";
                //@display("p=5000,100");
        }
        network3host32: StandardHost {
            parameters:
                routingFile = "network/network3/H32.irt";
                //@display("p=5000,300");
        }
        network3host33: StandardHost {
            parameters:
                routingFile = "network/network3/H33.irt";
                //@display("p=5000,500");
        }
        network3host34: StandardHost {
            parameters:
                routingFile = "network/network3/H34.irt";
                //@display("p=5000,700");
        }
        network3host35: StandardHost {
            parameters:
                routingFile = "network/network3/H35.irt";
                //@display("p=5000,900");
        }
        network3host36: StandardHost {
            parameters:
                routingFile = "network/network3/H36.irt";
                //@display("p=5000,100");
        }
        network3host37: StandardHost {
            parameters:
                routingFile = "network/network3/H37.irt";
                //@display("p=5000,300");
        }
        network3host38: StandardHost {
            parameters:
                routingFile = "network/network3/H38.irt";
                //@display("p=5000,500");
        }
        network3host39: StandardHost {
            parameters:
                routingFile = "network/network3/H39.irt";
                //@display("p=5000,700");
        }
        network3host40: StandardHost {
            parameters:
                routingFile = "network/network3/H40.irt";
                //@display("p=5000,900");
        }




        network4host1: StandardHost {
            parameters:
                routingFile = "network/network4/H1.irt";
                //@display("p=500,100");
        }
        network4host2: StandardHost {
            parameters:
                routingFile = "network/network4/H2.irt";
                //@display("p=500,300");
        }
        network4host3: StandardHost {
            parameters:
                routingFile = "network/network4/H3.irt";
                //@display("p=500,500");
        }
        network4host4: StandardHost {
            parameters:
                routingFile = "network/network4/H4.irt";
                //@display("p=500,700");
        }
        network4host5: StandardHost {
            parameters:
                routingFile = "network/network4/H5.irt";
                //@display("p=500,900");
        }
        network4host6: StandardHost {
            parameters:
                routingFile = "network/network4/H6.irt";
                //@display("p=500,100");
        }
        network4host7: StandardHost {
            parameters:
                routingFile = "network/network4/H7.irt";
                //@display("p=500,300");
        }
        network4host8: StandardHost {
            parameters:
                routingFile = "network/network4/H8.irt";
                //@display("p=500,500");
        }
        network4host9: StandardHost {
            parameters:
                routingFile = "network/network4/H9.irt";
                //@display("p=500,700");
        }
        network4host10: StandardHost {
            parameters:
                routingFile = "network/network4/H10.irt";
                //@display("p=500,900");
        }
        network4host11: StandardHost {
            parameters:
                routingFile = "network/network4/H11.irt";
                //@display("p=500,100");
        }
        network4host12: StandardHost {
            parameters:
                routingFile = "network/network4/H12.irt";
                //@display("p=500,300");
        }
        network4host13: StandardHost {
            parameters:
                routingFile = "network/network4/H13.irt";
                //@display("p=500,500");
        }
        network4host14: StandardHost {
            parameters:
                routingFile = "network/network4/H14.irt";
                //@display("p=500,700");
        }
        network4host15: StandardHost {
            parameters:
                routingFile = "network/network4/H15.irt";
                //@display("p=500,900");
        }
        network4host16: StandardHost {
            parameters:
                routingFile = "network/network4/H16.irt";
                //@display("p=500,100");
        }
        network4host17: StandardHost {
            parameters:
                routingFile = "network/network4/H17.irt";
                //@display("p=500,300");
        }
        network4host18: StandardHost {
            parameters:
                routingFile = "network/network4/H18.irt";
                //@display("p=500,500");
        }
        network4host19: StandardHost {
            parameters:
                routingFile = "network/network4/H19.irt";
                //@display("p=500,700");
        }
        network4host20: StandardHost {
            parameters:
                routingFile = "network/network4/H20.irt";
                //@display("p=500,900");
        }
        network4host21: StandardHost {
            parameters:
                routingFile = "network/network4/H21.irt";
                //@display("p=500,100");
        }
        network4host22: StandardHost {
            parameters:
                routingFile = "network/network4/H22.irt";
                //@display("p=500,300");
        }
        network4host23: StandardHost {
            parameters:
                routingFile = "network/network4/H23.irt";
                //@display("p=500,500");
        }
        network4host24: StandardHost {
            parameters:
                routingFile = "network/network4/H24.irt";
                //@display("p=500,700");
        }
        network4host25: StandardHost {
            parameters:
                routingFile = "network/network4/H25.irt";
                //@display("p=500,900");
        }
        network4host26: StandardHost {
            parameters:
                routingFile = "network/network4/H26.irt";
                //@display("p=500,100");
        }
        network4host27: StandardHost {
            parameters:
                routingFile = "network/network4/H27.irt";
                //@display("p=500,300");
        }
        network4host28: StandardHost {
            parameters:
                routingFile = "network/network4/H28.irt";
                //@display("p=500,500");
        }
        network4host29: StandardHost {
            parameters:
                routingFile = "network/network4/H29.irt";
                //@display("p=500,700");
        }
        network4host30: StandardHost {
            parameters:
                routingFile = "network/network4/H30.irt";
                //@display("p=500,900");
        }
        network4host31: StandardHost {
            parameters:
                routingFile = "network/network4/H31.irt";
                //@display("p=500,100");
        }
        network4host32: StandardHost {
            parameters:
                routingFile = "network/network4/H32.irt";
                //@display("p=500,300");
        }
        network4host33: StandardHost {
            parameters:
                routingFile = "network/network4/H33.irt";
                //@display("p=500,500");
        }
        network4host34: StandardHost {
            parameters:
                routingFile = "network/network4/H34.irt";
                //@display("p=500,700");
        }
        network4host35: StandardHost {
            parameters:
                routingFile = "network/network4/H35.irt";
                //@display("p=500,900");
        }
        network4host36: StandardHost {
            parameters:
                routingFile = "network/network4/H36.irt";
                //@display("p=500,100");
        }
        network4host37: StandardHost {
            parameters:
                routingFile = "network/network4/H37.irt";
                //@display("p=500,300");
        }
        network4host38: StandardHost {
            parameters:
                routingFile = "network/network4/H38.irt";
                //@display("p=500,500");
        }
        network4host39: StandardHost {
            parameters:
                routingFile = "network/network4/H39.irt";
                //@display("p=500,700");
        }
        network4host40: StandardHost {
            parameters:
                routingFile = "network/network4/H40.irt";
                //@display("p=500,900");
        }


        network5host1: StandardHost {
            parameters:
                routingFile = "network/network5/H1.irt";
                //@display("p=500,100");
        }
        network5host2: StandardHost {
            parameters:
                routingFile = "network/network5/H2.irt";
                //@display("p=500,300");
        }
        network5host3: StandardHost {
            parameters:
                routingFile = "network/network5/H3.irt";
                //@display("p=500,500");
        }
        network5host4: StandardHost {
            parameters:
                routingFile = "network/network5/H4.irt";
                //@display("p=500,700");
        }
        network5host5: StandardHost {
            parameters:
                routingFile = "network/network5/H5.irt";
                //@display("p=500,900");
        }
        network5host6: StandardHost {
            parameters:
                routingFile = "network/network5/H6.irt";
                //@display("p=500,100");
        }
        network5host7: StandardHost {
            parameters:
                routingFile = "network/network5/H7.irt";
                //@display("p=500,300");
        }
        network5host8: StandardHost {
            parameters:
                routingFile = "network/network5/H8.irt";
                //@display("p=500,500");
        }
        network5host9: StandardHost {
            parameters:
                routingFile = "network/network5/H9.irt";
                //@display("p=500,700");
        }
        network5host10: StandardHost {
            parameters:
                routingFile = "network/network5/H10.irt";
                //@display("p=500,900");
        }
        network5host11: StandardHost {
            parameters:
                routingFile = "network/network5/H11.irt";
                //@display("p=500,100");
        }
        network5host12: StandardHost {
            parameters:
                routingFile = "network/network5/H12.irt";
                //@display("p=500,300");
        }
        network5host13: StandardHost {
            parameters:
                routingFile = "network/network5/H13.irt";
                //@display("p=500,500");
        }
        network5host14: StandardHost {
            parameters:
                routingFile = "network/network5/H14.irt";
                //@display("p=500,700");
        }
        network5host15: StandardHost {
            parameters:
                routingFile = "network/network5/H15.irt";
                //@display("p=500,900");
        }
        network5host16: StandardHost {
            parameters:
                routingFile = "network/network5/H16.irt";
                //@display("p=500,100");
        }
        network5host17: StandardHost {
            parameters:
                routingFile = "network/network5/H17.irt";
                //@display("p=500,300");
        }
        network5host18: StandardHost {
            parameters:
                routingFile = "network/network5/H18.irt";
                //@display("p=500,500");
        }
        network5host19: StandardHost {
            parameters:
                routingFile = "network/network5/H19.irt";
                //@display("p=500,700");
        }
        network5host20: StandardHost {
            parameters:
                routingFile = "network/network5/H20.irt";
                //@display("p=500,900");
        }
        network5host21: StandardHost {
            parameters:
                routingFile = "network/network5/H21.irt";
                //@display("p=500,100");
        }
        network5host22: StandardHost {
            parameters:
                routingFile = "network/network5/H22.irt";
                //@display("p=500,300");
        }
        network5host23: StandardHost {
            parameters:
                routingFile = "network/network5/H23.irt";
                //@display("p=500,500");
        }
        network5host24: StandardHost {
            parameters:
                routingFile = "network/network5/H24.irt";
                //@display("p=500,700");
        }
        network5host25: StandardHost {
            parameters:
                routingFile = "network/network5/H25.irt";
                //@display("p=500,900");
        }
        network5host26: StandardHost {
            parameters:
                routingFile = "network/network5/H26.irt";
                //@display("p=500,100");
        }
        network5host27: StandardHost {
            parameters:
                routingFile = "network/network5/H27.irt";
                //@display("p=500,300");
        }
        network5host28: StandardHost {
            parameters:
                routingFile = "network/network5/H28.irt";
                //@display("p=500,500");
        }
        network5host29: StandardHost {
            parameters:
                routingFile = "network/network5/H29.irt";
                //@display("p=500,700");
        }
        network5host30: StandardHost {
            parameters:
                routingFile = "network/network5/H30.irt";
                //@display("p=500,900");
        }
        network5host31: StandardHost {
            parameters:
                routingFile = "network/network5/H31.irt";
                //@display("p=500,100");
        }
        network5host32: StandardHost {
            parameters:
                routingFile = "network/network5/H32.irt";
                //@display("p=500,300");
        }
        network5host33: StandardHost {
            parameters:
                routingFile = "network/network5/H33.irt";
                //@display("p=500,500");
        }
        network5host34: StandardHost {
            parameters:
                routingFile = "network/network5/H34.irt";
                //@display("p=500,700");
        }
        network5host35: StandardHost {
            parameters:
                routingFile = "network/network5/H35.irt";
                //@display("p=500,900");
        }
        network5host36: StandardHost {
            parameters:
                routingFile = "network/network5/H36.irt";
                //@display("p=500,100");
        }
        network5host37: StandardHost {
            parameters:
                routingFile = "network/network5/H37.irt";
                //@display("p=500,300");
        }
        network5host38: StandardHost {
            parameters:
                routingFile = "network/network5/H38.irt";
                //@display("p=500,500");
        }
        network5host39: StandardHost {
            parameters:
                routingFile = "network/network5/H39.irt";
                //@display("p=500,700");
        }
        network5host40: StandardHost {
            parameters:
                routingFile = "network/network5/H40.irt";
                //@display("p=500,900");
        }


        network6host1: StandardHost {
            parameters:
                routingFile = "network/network6/H1.irt";
                //@display("p=500,100");
        }
        network6host2: StandardHost {
            parameters:
                routingFile = "network/network6/H2.irt";
                //@display("p=500,300");
        }
        network6host3: StandardHost {
            parameters:
                routingFile = "network/network6/H3.irt";
                //@display("p=500,500");
        }
        network6host4: StandardHost {
            parameters:
                routingFile = "network/network6/H4.irt";
                //@display("p=500,700");
        }
        network6host5: StandardHost {
            parameters:
                routingFile = "network/network6/H5.irt";
                //@display("p=500,900");
        }
        network6host6: StandardHost {
            parameters:
                routingFile = "network/network6/H6.irt";
                //@display("p=500,100");
        }
        network6host7: StandardHost {
            parameters:
                routingFile = "network/network6/H7.irt";
                //@display("p=500,300");
        }
        network6host8: StandardHost {
            parameters:
                routingFile = "network/network6/H8.irt";
                //@display("p=500,500");
        }
        network6host9: StandardHost {
            parameters:
                routingFile = "network/network6/H9.irt";
                //@display("p=500,700");
        }
        network6host10: StandardHost {
            parameters:
                routingFile = "network/network6/H10.irt";
                //@display("p=500,900");
        }
        network6host11: StandardHost {
            parameters:
                routingFile = "network/network6/H11.irt";
                //@display("p=500,100");
        }
        network6host12: StandardHost {
            parameters:
                routingFile = "network/network6/H12.irt";
                //@display("p=500,300");
        }
        network6host13: StandardHost {
            parameters:
                routingFile = "network/network6/H13.irt";
                //@display("p=500,500");
        }
        network6host14: StandardHost {
            parameters:
                routingFile = "network/network6/H14.irt";
                //@display("p=500,700");
        }
        network6host15: StandardHost {
            parameters:
                routingFile = "network/network6/H15.irt";
                //@display("p=500,900");
        }
        network6host16: StandardHost {
            parameters:
                routingFile = "network/network6/H16.irt";
                //@display("p=500,100");
        }
        network6host17: StandardHost {
            parameters:
                routingFile = "network/network6/H17.irt";
                //@display("p=500,300");
        }
        network6host18: StandardHost {
            parameters:
                routingFile = "network/network6/H18.irt";
                //@display("p=500,500");
        }
        network6host19: StandardHost {
            parameters:
                routingFile = "network/network6/H19.irt";
                //@display("p=500,700");
        }
        network6host20: StandardHost {
            parameters:
                routingFile = "network/network6/H20.irt";
                //@display("p=500,900");
        }
        network6host21: StandardHost {
            parameters:
                routingFile = "network/network6/H21.irt";
                //@display("p=500,100");
        }
        network6host22: StandardHost {
            parameters:
                routingFile = "network/network6/H22.irt";
                //@display("p=500,300");
        }
        network6host23: StandardHost {
            parameters:
                routingFile = "network/network6/H23.irt";
                //@display("p=500,500");
        }
        network6host24: StandardHost {
            parameters:
                routingFile = "network/network6/H24.irt";
                //@display("p=500,700");
        }
        network6host25: StandardHost {
            parameters:
                routingFile = "network/network6/H25.irt";
                //@display("p=500,900");
        }
        network6host26: StandardHost {
            parameters:
                routingFile = "network/network6/H26.irt";
                //@display("p=500,100");
        }
        network6host27: StandardHost {
            parameters:
                routingFile = "network/network6/H27.irt";
                //@display("p=500,300");
        }
        network6host28: StandardHost {
            parameters:
                routingFile = "network/network6/H28.irt";
                //@display("p=500,500");
        }
        network6host29: StandardHost {
            parameters:
                routingFile = "network/network6/H29.irt";
                //@display("p=500,700");
        }
        network6host30: StandardHost {
            parameters:
                routingFile = "network/network6/H30.irt";
                //@display("p=500,900");
        }
        network6host31: StandardHost {
            parameters:
                routingFile = "network/network6/H31.irt";
                //@display("p=500,100");
        }
        network6host32: StandardHost {
            parameters:
                routingFile = "network/network6/H32.irt";
                //@display("p=500,300");
        }
        network6host33: StandardHost {
            parameters:
                routingFile = "network/network6/H33.irt";
                //@display("p=500,500");
        }
        network6host34: StandardHost {
            parameters:
                routingFile = "network/network6/H34.irt";
                //@display("p=500,700");
        }
        network6host35: StandardHost {
            parameters:
                routingFile = "network/network6/H35.irt";
                //@display("p=500,900");
        }
        network6host36: StandardHost {
            parameters:
                routingFile = "network/network6/H36.irt";
                //@display("p=500,100");
        }
        network6host37: StandardHost {
            parameters:
                routingFile = "network/network6/H37.irt";
                //@display("p=500,300");
        }
        network6host38: StandardHost {
            parameters:
                routingFile = "network/network6/H38.irt";
                //@display("p=500,500");
        }
        network6host39: StandardHost {
            parameters:
                routingFile = "network/network6/H39.irt";
                //@display("p=500,700");
        }
        network6host40: StandardHost {
            parameters:
                routingFile = "network/network6/H40.irt";
                //@display("p=500,900");
        }


        network7host1: StandardHost {
            parameters:
                routingFile = "network/network7/H1.irt";
                //@display("p=500,100");
        }
        network7host2: StandardHost {
            parameters:
                routingFile = "network/network7/H2.irt";
                //@display("p=500,300");
        }
        network7host3: StandardHost {
            parameters:
                routingFile = "network/network7/H3.irt";
                //@display("p=500,500");
        }
        network7host4: StandardHost {
            parameters:
                routingFile = "network/network7/H4.irt";
                //@display("p=500,700");
        }
        network7host5: StandardHost {
            parameters:
                routingFile = "network/network7/H5.irt";
                //@display("p=500,900");
        }
        network7host6: StandardHost {
            parameters:
                routingFile = "network/network7/H6.irt";
                //@display("p=500,100");
        }
        network7host7: StandardHost {
            parameters:
                routingFile = "network/network7/H7.irt";
                //@display("p=500,300");
        }
        network7host8: StandardHost {
            parameters:
                routingFile = "network/network7/H8.irt";
                //@display("p=500,500");
        }
        network7host9: StandardHost {
            parameters:
                routingFile = "network/network7/H9.irt";
                //@display("p=500,700");
        }
        network7host10: StandardHost {
            parameters:
                routingFile = "network/network7/H10.irt";
                //@display("p=500,900");
        }
        network7host11: StandardHost {
            parameters:
                routingFile = "network/network7/H11.irt";
                //@display("p=500,100");
        }
        network7host12: StandardHost {
            parameters:
                routingFile = "network/network7/H12.irt";
                //@display("p=500,300");
        }
        network7host13: StandardHost {
            parameters:
                routingFile = "network/network7/H13.irt";
                //@display("p=500,500");
        }
        network7host14: StandardHost {
            parameters:
                routingFile = "network/network7/H14.irt";
                //@display("p=500,700");
        }
        network7host15: StandardHost {
            parameters:
                routingFile = "network/network7/H15.irt";
                //@display("p=500,900");
        }
        network7host16: StandardHost {
            parameters:
                routingFile = "network/network7/H16.irt";
                //@display("p=500,100");
        }
        network7host17: StandardHost {
            parameters:
                routingFile = "network/network7/H17.irt";
                //@display("p=500,300");
        }
        network7host18: StandardHost {
            parameters:
                routingFile = "network/network7/H18.irt";
                //@display("p=500,500");
        }
        network7host19: StandardHost {
            parameters:
                routingFile = "network/network7/H19.irt";
                //@display("p=500,700");
        }
        network7host20: StandardHost {
            parameters:
                routingFile = "network/network7/H20.irt";
                //@display("p=500,900");
        }
        network7host21: StandardHost {
            parameters:
                routingFile = "network/network7/H21.irt";
                //@display("p=500,100");
        }
        network7host22: StandardHost {
            parameters:
                routingFile = "network/network7/H22.irt";
                //@display("p=500,300");
        }
        network7host23: StandardHost {
            parameters:
                routingFile = "network/network7/H23.irt";
                //@display("p=500,500");
        }
        network7host24: StandardHost {
            parameters:
                routingFile = "network/network7/H24.irt";
                //@display("p=500,700");
        }
        network7host25: StandardHost {
            parameters:
                routingFile = "network/network7/H25.irt";
                //@display("p=500,900");
        }
        network7host26: StandardHost {
            parameters:
                routingFile = "network/network7/H26.irt";
                //@display("p=500,100");
        }
        network7host27: StandardHost {
            parameters:
                routingFile = "network/network7/H27.irt";
                //@display("p=500,300");
        }
        network7host28: StandardHost {
            parameters:
                routingFile = "network/network7/H28.irt";
                //@display("p=500,500");
        }
        network7host29: StandardHost {
            parameters:
                routingFile = "network/network7/H29.irt";
                //@display("p=500,700");
        }
        network7host30: StandardHost {
            parameters:
                routingFile = "network/network7/H30.irt";
                //@display("p=500,900");
        }
        network7host31: StandardHost {
            parameters:
                routingFile = "network/network7/H31.irt";
                //@display("p=500,100");
        }
        network7host32: StandardHost {
            parameters:
                routingFile = "network/network7/H32.irt";
                //@display("p=500,300");
        }
        network7host33: StandardHost {
            parameters:
                routingFile = "network/network7/H33.irt";
                //@display("p=500,500");
        }
        network7host34: StandardHost {
            parameters:
                routingFile = "network/network7/H34.irt";
                //@display("p=500,700");
        }
        network7host35: StandardHost {
            parameters:
                routingFile = "network/network7/H35.irt";
                //@display("p=500,900");
        }
        network7host36: StandardHost {
            parameters:
                routingFile = "network/network7/H36.irt";
                //@display("p=500,100");
        }
        network7host37: StandardHost {
            parameters:
                routingFile = "network/network7/H37.irt";
                //@display("p=500,300");
        }
        network7host38: StandardHost {
            parameters:
                routingFile = "network/network7/H38.irt";
                //@display("p=500,500");
        }
        network7host39: StandardHost {
            parameters:
                routingFile = "network/network7/H39.irt";
                //@display("p=500,700");
        }
        network7host40: StandardHost {
            parameters:
                routingFile = "network/network7/H40.irt";
                //@display("p=500,900");
        }


        network8host1: StandardHost {
            parameters:
                routingFile = "network/network8/H1.irt";
                //@display("p=500,100");
        }
        network8host2: StandardHost {
            parameters:
                routingFile = "network/network8/H2.irt";
                //@display("p=500,300");
        }
        network8host3: StandardHost {
            parameters:
                routingFile = "network/network8/H3.irt";
                //@display("p=500,500");
        }
        network8host4: StandardHost {
            parameters:
                routingFile = "network/network8/H4.irt";
                //@display("p=500,700");
        }
        network8host5: StandardHost {
            parameters:
                routingFile = "network/network8/H5.irt";
                //@display("p=500,900");
        }
        network8host6: StandardHost {
            parameters:
                routingFile = "network/network8/H6.irt";
                //@display("p=500,100");
        }
        network8host7: StandardHost {
            parameters:
                routingFile = "network/network8/H7.irt";
                //@display("p=500,300");
        }
        network8host8: StandardHost {
            parameters:
                routingFile = "network/network8/H8.irt";
                //@display("p=500,500");
        }
        network8host9: StandardHost {
            parameters:
                routingFile = "network/network8/H9.irt";
                //@display("p=500,700");
        }
        network8host10: StandardHost {
            parameters:
                routingFile = "network/network8/H10.irt";
                //@display("p=500,900");
        }
        network8host11: StandardHost {
            parameters:
                routingFile = "network/network8/H11.irt";
                //@display("p=500,100");
        }
        network8host12: StandardHost {
            parameters:
                routingFile = "network/network8/H12.irt";
                //@display("p=500,300");
        }
        network8host13: StandardHost {
            parameters:
                routingFile = "network/network8/H13.irt";
                //@display("p=500,500");
        }
        network8host14: StandardHost {
            parameters:
                routingFile = "network/network8/H14.irt";
                //@display("p=500,700");
        }
        network8host15: StandardHost {
            parameters:
                routingFile = "network/network8/H15.irt";
                //@display("p=500,900");
        }
        network8host16: StandardHost {
            parameters:
                routingFile = "network/network8/H16.irt";
                //@display("p=500,100");
        }
        network8host17: StandardHost {
            parameters:
                routingFile = "network/network8/H17.irt";
                //@display("p=500,300");
        }
        network8host18: StandardHost {
            parameters:
                routingFile = "network/network8/H18.irt";
                //@display("p=500,500");
        }
        network8host19: StandardHost {
            parameters:
                routingFile = "network/network8/H19.irt";
                //@display("p=500,700");
        }
        network8host20: StandardHost {
            parameters:
                routingFile = "network/network8/H20.irt";
                //@display("p=500,900");
        }
        network8host21: StandardHost {
            parameters:
                routingFile = "network/network8/H21.irt";
                //@display("p=500,100");
        }
        network8host22: StandardHost {
            parameters:
                routingFile = "network/network8/H22.irt";
                //@display("p=500,300");
        }
        network8host23: StandardHost {
            parameters:
                routingFile = "network/network8/H23.irt";
                //@display("p=500,500");
        }
        network8host24: StandardHost {
            parameters:
                routingFile = "network/network8/H24.irt";
                //@display("p=500,700");
        }
        network8host25: StandardHost {
            parameters:
                routingFile = "network/network8/H25.irt";
                //@display("p=500,900");
        }
        network8host26: StandardHost {
            parameters:
                routingFile = "network/network8/H26.irt";
                //@display("p=500,100");
        }
        network8host27: StandardHost {
            parameters:
                routingFile = "network/network8/H27.irt";
                //@display("p=500,300");
        }
        network8host28: StandardHost {
            parameters:
                routingFile = "network/network8/H28.irt";
                //@display("p=500,500");
        }
        network8host29: StandardHost {
            parameters:
                routingFile = "network/network8/H29.irt";
                //@display("p=500,700");
        }
        network8host30: StandardHost {
            parameters:
                routingFile = "network/network8/H30.irt";
                //@display("p=500,900");
        }
        network8host31: StandardHost {
            parameters:
                routingFile = "network/network8/H31.irt";
                //@display("p=500,100");
        }
        network8host32: StandardHost {
            parameters:
                routingFile = "network/network8/H32.irt";
                //@display("p=500,300");
        }
        network8host33: StandardHost {
            parameters:
                routingFile = "network/network8/H33.irt";
                //@display("p=500,500");
        }
        network8host34: StandardHost {
            parameters:
                routingFile = "network/network8/H34.irt";
                //@display("p=500,700");
        }
        network8host35: StandardHost {
            parameters:
                routingFile = "network/network8/H35.irt";
                //@display("p=500,900");
        }
        network8host36: StandardHost {
            parameters:
                routingFile = "network/network8/H36.irt";
                //@display("p=500,100");
        }
        network8host37: StandardHost {
            parameters:
                routingFile = "network/network8/H37.irt";
                //@display("p=500,300");
        }
        network8host38: StandardHost {
            parameters:
                routingFile = "network/network8/H38.irt";
                //@display("p=500,500");
        }
        network8host39: StandardHost {
            parameters:
                routingFile = "network/network8/H39.irt";
                //@display("p=500,700");
        }
        network8host40: StandardHost {
            parameters:
                routingFile = "network/network8/H40.irt";
                //@display("p=500,900");
        }


        network9host1: StandardHost {
            parameters:
                routingFile = "network/network9/H1.irt";
                //@display("p=500,100");
        }
        network9host2: StandardHost {
            parameters:
                routingFile = "network/network9/H2.irt";
                //@display("p=500,300");
        }
        network9host3: StandardHost {
            parameters:
                routingFile = "network/network9/H3.irt";
                //@display("p=500,500");
        }
        network9host4: StandardHost {
            parameters:
                routingFile = "network/network9/H4.irt";
                //@display("p=500,700");
        }
        network9host5: StandardHost {
            parameters:
                routingFile = "network/network9/H5.irt";
                //@display("p=500,900");
        }
        network9host6: StandardHost {
            parameters:
                routingFile = "network/network9/H6.irt";
                //@display("p=500,100");
        }
        network9host7: StandardHost {
            parameters:
                routingFile = "network/network9/H7.irt";
                //@display("p=500,300");
        }
        network9host8: StandardHost {
            parameters:
                routingFile = "network/network9/H8.irt";
                //@display("p=500,500");
        }
        network9host9: StandardHost {
            parameters:
                routingFile = "network/network9/H9.irt";
                //@display("p=500,700");
        }
        network9host10: StandardHost {
            parameters:
                routingFile = "network/network9/H10.irt";
                //@display("p=500,900");
        }
        network9host11: StandardHost {
            parameters:
                routingFile = "network/network9/H11.irt";
                //@display("p=500,100");
        }
        network9host12: StandardHost {
            parameters:
                routingFile = "network/network9/H12.irt";
                //@display("p=500,300");
        }
        network9host13: StandardHost {
            parameters:
                routingFile = "network/network9/H13.irt";
                //@display("p=500,500");
        }
        network9host14: StandardHost {
            parameters:
                routingFile = "network/network9/H14.irt";
                //@display("p=500,700");
        }
        network9host15: StandardHost {
            parameters:
                routingFile = "network/network9/H15.irt";
                //@display("p=500,900");
        }
        network9host16: StandardHost {
            parameters:
                routingFile = "network/network9/H16.irt";
                //@display("p=500,100");
        }
        network9host17: StandardHost {
            parameters:
                routingFile = "network/network9/H17.irt";
                //@display("p=500,300");
        }
        network9host18: StandardHost {
            parameters:
                routingFile = "network/network9/H18.irt";
                //@display("p=500,500");
        }
        network9host19: StandardHost {
            parameters:
                routingFile = "network/network9/H19.irt";
                //@display("p=500,700");
        }
        network9host20: StandardHost {
            parameters:
                routingFile = "network/network9/H20.irt";
                //@display("p=500,900");
        }
        network9host21: StandardHost {
            parameters:
                routingFile = "network/network9/H21.irt";
                //@display("p=500,100");
        }
        network9host22: StandardHost {
            parameters:
                routingFile = "network/network9/H22.irt";
                //@display("p=500,300");
        }
        network9host23: StandardHost {
            parameters:
                routingFile = "network/network9/H23.irt";
                //@display("p=500,500");
        }
        network9host24: StandardHost {
            parameters:
                routingFile = "network/network9/H24.irt";
                //@display("p=500,700");
        }
        network9host25: StandardHost {
            parameters:
                routingFile = "network/network9/H25.irt";
                //@display("p=500,900");
        }
        network9host26: StandardHost {
            parameters:
                routingFile = "network/network9/H26.irt";
                //@display("p=500,100");
        }
        network9host27: StandardHost {
            parameters:
                routingFile = "network/network9/H27.irt";
                //@display("p=500,300");
        }
        network9host28: StandardHost {
            parameters:
                routingFile = "network/network9/H28.irt";
                //@display("p=500,500");
        }
        network9host29: StandardHost {
            parameters:
                routingFile = "network/network9/H29.irt";
                //@display("p=500,700");
        }
        network9host30: StandardHost {
            parameters:
                routingFile = "network/network9/H30.irt";
                //@display("p=500,900");
        }
        network9host31: StandardHost {
            parameters:
                routingFile = "network/network9/H31.irt";
                //@display("p=500,100");
        }
        network9host32: StandardHost {
            parameters:
                routingFile = "network/network9/H32.irt";
                //@display("p=500,300");
        }
        network9host33: StandardHost {
            parameters:
                routingFile = "network/network9/H33.irt";
                //@display("p=500,500");
        }
        network9host34: StandardHost {
            parameters:
                routingFile = "network/network9/H34.irt";
                //@display("p=500,700");
        }
        network9host35: StandardHost {
            parameters:
                routingFile = "network/network9/H35.irt";
                //@display("p=500,900");
        }
        network9host36: StandardHost {
            parameters:
                routingFile = "network/network9/H36.irt";
                //@display("p=500,100");
        }
        network9host37: StandardHost {
            parameters:
                routingFile = "network/network9/H37.irt";
                //@display("p=500,300");
        }
        network9host38: StandardHost {
            parameters:
                routingFile = "network/network9/H38.irt";
                //@display("p=500,500");
        }
        network9host39: StandardHost {
            parameters:
                routingFile = "network/network9/H39.irt";
                //@display("p=500,700");
        }
        network9host40: StandardHost {
            parameters:
                routingFile = "network/network9/H40.irt";
                //@display("p=500,900");
        }


        network10host1: StandardHost {
            parameters:
                routingFile = "network/network10/H1.irt";
                //@display("p=500,100");
        }
        network10host2: StandardHost {
            parameters:
                routingFile = "network/network10/H2.irt";
                //@display("p=500,300");
        }
        network10host3: StandardHost {
            parameters:
                routingFile = "network/network10/H3.irt";
                //@display("p=500,500");
        }
        network10host4: StandardHost {
            parameters:
                routingFile = "network/network10/H4.irt";
                //@display("p=500,700");
        }
        network10host5: StandardHost {
            parameters:
                routingFile = "network/network10/H5.irt";
                //@display("p=500,900");
        }
        network10host6: StandardHost {
            parameters:
                routingFile = "network/network10/H6.irt";
                //@display("p=500,100");
        }
        network10host7: StandardHost {
            parameters:
                routingFile = "network/network10/H7.irt";
                //@display("p=500,300");
        }
        network10host8: StandardHost {
            parameters:
                routingFile = "network/network10/H8.irt";
                //@display("p=500,500");
        }
        network10host9: StandardHost {
            parameters:
                routingFile = "network/network10/H9.irt";
                //@display("p=500,700");
        }
        network10host10: StandardHost {
            parameters:
 				routingFile = "network/network10/H10.irt";
                            //@display("p=500,900");
        }
        network10host11: StandardHost {
            parameters:
                routingFile = "network/network10/H11.irt";
                //@display("p=500,100");
        }
        network10host12: StandardHost {
            parameters:
                routingFile = "network/network10/H12.irt";
                //@display("p=500,300");
        }
        network10host13: StandardHost {
            parameters:
                routingFile = "network/network10/H13.irt";
                //@display("p=500,500");
        }
        network10host14: StandardHost {
            parameters:
                routingFile = "network/network10/H14.irt";
                //@display("p=500,700");
        }
        network10host15: StandardHost {
            parameters:
                routingFile = "network/network10/H15.irt";
                //@display("p=500,900");
        }
        network10host16: StandardHost {
            parameters:
                routingFile = "network/network10/H16.irt";
                //@display("p=500,100");
        }
        network10host17: StandardHost {
            parameters:
                routingFile = "network/network10/H17.irt";
                //@display("p=500,300");
        }
        network10host18: StandardHost {
            parameters:
                routingFile = "network/network10/H18.irt";
                //@display("p=500,500");
        }
        network10host19: StandardHost {
            parameters:
                routingFile = "network/network10/H19.irt";
                //@display("p=500,700");
        }
        network10host20: StandardHost {
            parameters:
                routingFile = "network/network10/H20.irt";
                //@display("p=500,900");
        }
        network10host21: StandardHost {
            parameters:
                routingFile = "network/network10/H21.irt";
                //@display("p=500,100");
        }
        network10host22: StandardHost {
            parameters:
                routingFile = "network/network10/H22.irt";
                //@display("p=500,300");
        }
        network10host23: StandardHost {
            parameters:
                routingFile = "network/network10/H23.irt";
                //@display("p=500,500");
        }
        network10host24: StandardHost {
            parameters:
                routingFile = "network/network10/H24.irt";
                //@display("p=500,700");
        }
        network10host25: StandardHost {
            parameters:
                routingFile = "network/network10/H25.irt";
                //@display("p=500,900");
        }
        network10host26: StandardHost {
            parameters:
                routingFile = "network/network10/H26.irt";
                //@display("p=500,100");
        }
        network10host27: StandardHost {
            parameters:
                routingFile = "network/network10/H27.irt";
                //@display("p=500,300");
        }
        network10host28: StandardHost {
            parameters:
                routingFile = "network/network10/H28.irt";
                //@display("p=500,500");
        }
        network10host29: StandardHost {
            parameters:
                routingFile = "network/network10/H29.irt";
                //@display("p=500,700");
        }
        network10host30: StandardHost {
            parameters:
                routingFile = "network/network10/H30.irt";
                //@display("p=500,900");
        }
        network10host31: StandardHost {
            parameters:
                routingFile = "network/network10/H31.irt";
                //@display("p=500,100");
        }
        network10host32: StandardHost {
            parameters:
                routingFile = "network/network10/H32.irt";
                //@display("p=500,300");
        }
        network10host33: StandardHost {
            parameters:
                routingFile = "network/network10/H33.irt";
                //@display("p=500,500");
        }
        network10host34: StandardHost {
            parameters:
                routingFile = "network/network10/H34.irt";
                //@display("p=500,700");
        }
        network10host35: StandardHost {
            parameters:
                routingFile = "network/network10/H35.irt";
                //@display("p=500,900");
        }
        network10host36: StandardHost {
            parameters:
                routingFile = "network/network10/H36.irt";
                //@display("p=500,100");
        }
        network10host37: StandardHost {
            parameters:
                routingFile = "network/network10/H37.irt";
                //@display("p=500,300");
        }
        network10host38: StandardHost {
            parameters:
                routingFile = "network/network10/H38.irt";
                //@display("p=500,500");
        }
        network10host39: StandardHost {
            parameters:
                routingFile = "network/network10/H39.irt";
                //@display("p=500,700");
        }
        network10host40: StandardHost {
            parameters:
                routingFile = "network/network10/H40.irt";
                //@display("p=500,900");
        }


        network11host1: StandardHost {
            parameters:
                routingFile = "network/network11/H1.irt";
                //@display("p=500,100");
        }
        network11host2: StandardHost {
            parameters:
                routingFile = "network/network11/H2.irt";
                //@display("p=500,300");
        }
        network11host3: StandardHost {
            parameters:
                routingFile = "network/network11/H3.irt";
                //@display("p=500,500");
        }
        network11host4: StandardHost {
            parameters:
                routingFile = "network/network11/H4.irt";
                //@display("p=500,700");
        }
        network11host5: StandardHost {
            parameters:
                routingFile = "network/network11/H5.irt";
                //@display("p=500,900");
        }
        network11host6: StandardHost {
            parameters:
                routingFile = "network/network11/H6.irt";
                //@display("p=500,100");
        }
        network11host7: StandardHost {
            parameters:
                routingFile = "network/network11/H7.irt";
                //@display("p=500,300");
        }
        network11host8: StandardHost {
            parameters:
                routingFile = "network/network11/H8.irt";
                //@display("p=500,500");
        }
        network11host9: StandardHost {
            parameters:
                routingFile = "network/network11/H9.irt";
                //@display("p=500,700");
        }
        network11host10: StandardHost {
            parameters:
                routingFile = "network/network11/H10.irt";
                //@display("p=500,900");
        }
        network11host11: StandardHost {
            parameters:
                routingFile = "network/network11/H11.irt";
                //@display("p=500,100");
        }
        network11host12: StandardHost {
            parameters:
                routingFile = "network/network11/H12.irt";
                //@display("p=500,300");
        }
        network11host13: StandardHost {
            parameters:
                routingFile = "network/network11/H13.irt";
                //@display("p=500,500");
        }
        network11host14: StandardHost {
            parameters:
                routingFile = "network/network11/H14.irt";
                //@display("p=500,700");
        }
        network11host15: StandardHost {
            parameters:
                routingFile = "network/network11/H15.irt";
                //@display("p=500,900");
        }
        network11host16: StandardHost {
            parameters:
                routingFile = "network/network11/H16.irt";
                //@display("p=500,100");
        }
        network11host17: StandardHost {
            parameters:
                routingFile = "network/network11/H17.irt";
                //@display("p=500,300");
        }
        network11host18: StandardHost {
            parameters:
                routingFile = "network/network11/H18.irt";
                //@display("p=500,500");
        }
        network11host19: StandardHost {
            parameters:
                routingFile = "network/network11/H19.irt";
                //@display("p=500,700");
        }
        network11host20: StandardHost {
            parameters:
                routingFile = "network/network11/H20.irt";
                //@display("p=500,900");
        }
        network11host21: StandardHost {
            parameters:
                routingFile = "network/network11/H21.irt";
                //@display("p=500,100");
        }
        network11host22: StandardHost {
            parameters:
                routingFile = "network/network11/H22.irt";
                //@display("p=500,300");
        }
        network11host23: StandardHost {
            parameters:
                routingFile = "network/network11/H23.irt";
                //@display("p=500,500");
        }
        network11host24: StandardHost {
            parameters:
                routingFile = "network/network11/H24.irt";
                //@display("p=500,700");
        }
        network11host25: StandardHost {
            parameters:
                routingFile = "network/network11/H25.irt";
                //@display("p=500,900");
        }
        network11host26: StandardHost {
            parameters:
                routingFile = "network/network11/H26.irt";
                //@display("p=500,100");
        }
        network11host27: StandardHost {
            parameters:
                routingFile = "network/network11/H27.irt";
                //@display("p=500,300");
        }
        network11host28: StandardHost {
            parameters:
                routingFile = "network/network11/H28.irt";
                //@display("p=500,500");
        }
        network11host29: StandardHost {
            parameters:
                routingFile = "network/network11/H29.irt";
                //@display("p=500,700");
        }
        network11host30: StandardHost {
            parameters:
                routingFile = "network/network11/H30.irt";
                //@display("p=500,900");
        }
        network11host31: StandardHost {
            parameters:
                routingFile = "network/network11/H31.irt";
                //@display("p=500,100");
        }
        network11host32: StandardHost {
            parameters:
                routingFile = "network/network11/H32.irt";
                //@display("p=500,300");
        }
        network11host33: StandardHost {
            parameters:
                routingFile = "network/network11/H33.irt";
                //@display("p=500,500");
        }
        network11host34: StandardHost {
            parameters:
                routingFile = "network/network11/H34.irt";
                //@display("p=500,700");
        }
        network11host35: StandardHost {
            parameters:
                routingFile = "network/network11/H35.irt";
                //@display("p=500,900");
        }
        network11host36: StandardHost {
            parameters:
                routingFile = "network/network11/H36.irt";
                //@display("p=500,100");
        }
        network11host37: StandardHost {
            parameters:
                routingFile = "network/network11/H37.irt";
                //@display("p=500,300");
        }
        network11host38: StandardHost {
            parameters:
                routingFile = "network/network11/H38.irt";
                //@display("p=500,500");
        }
        network11host39: StandardHost {
            parameters:
                routingFile = "network/network11/H39.irt";
                //@display("p=500,700");
        }
        network11host40: StandardHost {
            parameters:
                routingFile = "network/network11/H40.irt";
                //@display("p=500,900");
        }

        network12host1: StandardHost {
            parameters:
                routingFile = "network/network12/H1.irt";
                //@display("p=500,100");
        }
        network12host2: StandardHost {
            parameters:
                routingFile = "network/network12/H2.irt";
                //@display("p=500,300");
        }
        network12host3: StandardHost {
            parameters:
                routingFile = "network/network12/H3.irt";
                //@display("p=500,500");
        }
        network12host4: StandardHost {
            parameters:
                routingFile = "network/network12/H4.irt";
                //@display("p=500,700");
        }
        network12host5: StandardHost {
            parameters:
                routingFile = "network/network12/H5.irt";
                //@display("p=500,900");
        }
        network12host6: StandardHost {
            parameters:
                routingFile = "network/network12/H6.irt";
                //@display("p=500,100");
        }
        network12host7: StandardHost {
            parameters:
                routingFile = "network/network12/H7.irt";
                //@display("p=500,300");
        }
        network12host8: StandardHost {
            parameters:
                routingFile = "network/network12/H8.irt";
                //@display("p=500,500");
        }
        network12host9: StandardHost {
            parameters:
                routingFile = "network/network12/H9.irt";
                //@display("p=500,700");
        }
        network12host10: StandardHost {
            parameters:
                routingFile = "network/network12/H10.irt";
                //@display("p=500,900");
        }
        network12host11: StandardHost {
            parameters:
                routingFile = "network/network12/H11.irt";
                //@display("p=500,100");
        }
        network12host12: StandardHost {
            parameters:
                routingFile = "network/network12/H12.irt";
                //@display("p=500,300");
        }
        network12host13: StandardHost {
            parameters:
                routingFile = "network/network12/H13.irt";
                //@display("p=500,500");
        }
        network12host14: StandardHost {
            parameters:
                routingFile = "network/network12/H14.irt";
                //@display("p=500,700");
        }
        network12host15: StandardHost {
            parameters:
                routingFile = "network/network12/H15.irt";
                //@display("p=500,900");
        }
        network12host16: StandardHost {
            parameters:
                routingFile = "network/network12/H16.irt";
                //@display("p=500,100");
        }
        network12host17: StandardHost {
            parameters:
                routingFile = "network/network12/H17.irt";
                //@display("p=500,300");
        }
        network12host18: StandardHost {
            parameters:
                routingFile = "network/network12/H18.irt";
                //@display("p=500,500");
        }
        network12host19: StandardHost {
            parameters:
                routingFile = "network/network12/H19.irt";
                //@display("p=500,700");
        }
        network12host20: StandardHost {
            parameters:
                routingFile = "network/network12/H20.irt";
                //@display("p=500,900");
        }
        network12host21: StandardHost {
            parameters:
                routingFile = "network/network12/H21.irt";
                //@display("p=500,100");
        }
        network12host22: StandardHost {
            parameters:
                routingFile = "network/network12/H22.irt";
                //@display("p=500,300");
        }
        network12host23: StandardHost {
            parameters:
                routingFile = "network/network12/H23.irt";
                //@display("p=500,500");
        }
        network12host24: StandardHost {
            parameters:
                routingFile = "network/network12/H24.irt";
                //@display("p=500,700");
        }
        network12host25: StandardHost {
            parameters:
                routingFile = "network/network12/H25.irt";
                //@display("p=500,900");
        }
        network12host26: StandardHost {
            parameters:
                routingFile = "network/network12/H26.irt";
                //@display("p=500,100");
        }
        network12host27: StandardHost {
            parameters:
                routingFile = "network/network12/H27.irt";
                //@display("p=500,300");
        }
        network12host28: StandardHost {
            parameters:
                routingFile = "network/network12/H28.irt";
                //@display("p=500,500");
        }
        network12host29: StandardHost {
            parameters:
                routingFile = "network/network12/H29.irt";
                //@display("p=500,700");
        }
        network12host30: StandardHost {
            parameters:
                routingFile = "network/network12/H30.irt";
                //@display("p=500,900");
        }
        network12host31: StandardHost {
            parameters:
                routingFile = "network/network12/H31.irt";
                //@display("p=500,100");
        }
        network12host32: StandardHost {
            parameters:
                routingFile = "network/network12/H32.irt";
                //@display("p=500,300");
        }
        network12host33: StandardHost {
            parameters:
                routingFile = "network/network12/H33.irt";
                //@display("p=500,500");
        }
        network12host34: StandardHost {
            parameters:
                routingFile = "network/network12/H34.irt";
                //@display("p=500,700");
        }
        network12host35: StandardHost {
            parameters:
                routingFile = "network/network12/H35.irt";
                //@display("p=500,900");
        }
        network12host36: StandardHost {
            parameters:
                routingFile = "network/network12/H36.irt";
                //@display("p=500,100");
        }
        network12host37: StandardHost {
            parameters:
                routingFile = "network/network12/H37.irt";
                //@display("p=500,300");
        }
        network12host38: StandardHost {
            parameters:
                routingFile = "network/network12/H38.irt";
                //@display("p=500,500");
        }
        network12host39: StandardHost {
            parameters:
                routingFile = "network/network12/H39.irt";
                //@display("p=500,700");
        }
        network12host40: StandardHost {
            parameters:
                routingFile = "network/network12/H40.irt";
                //@display("p=500,900");
        }

        network13host1: StandardHost {
            parameters:
                routingFile = "network/network13/H1.irt";
                //@display("p=500,100");
        }
        network13host2: StandardHost {
            parameters:
                routingFile = "network/network13/H2.irt";
                //@display("p=500,300");
        }
        network13host3: StandardHost {
            parameters:
                routingFile = "network/network13/H3.irt";
                //@display("p=500,500");
        }
        network13host4: StandardHost {
            parameters:
                routingFile = "network/network13/H4.irt";
                //@display("p=500,700");
        }
        network13host5: StandardHost {
            parameters:
                routingFile = "network/network13/H5.irt";
                //@display("p=500,900");
        }
        network13host6: StandardHost {
            parameters:
                routingFile = "network/network13/H6.irt";
                //@display("p=500,100");
        }
        network13host7: StandardHost {
            parameters:
                routingFile = "network/network13/H7.irt";
                //@display("p=500,300");
        }
        network13host8: StandardHost {
            parameters:
                routingFile = "network/network13/H8.irt";
                //@display("p=500,500");
        }
        network13host9: StandardHost {
            parameters:
                routingFile = "network/network13/H9.irt";
                //@display("p=500,700");
        }
        network13host10: StandardHost {
            parameters:
                routingFile = "network/network13/H10.irt";
                //@display("p=500,900");
        }
        network13host11: StandardHost {
            parameters:
                routingFile = "network/network13/H11.irt";
                //@display("p=500,100");
        }
        network13host12: StandardHost {
            parameters:
                routingFile = "network/network13/H12.irt";
                //@display("p=500,300");
        }
        network13host13: StandardHost {
            parameters:
                routingFile = "network/network13/H13.irt";
                //@display("p=500,500");
        }
        network13host14: StandardHost {
            parameters:
                routingFile = "network/network13/H14.irt";
                //@display("p=500,700");
        }
        network13host15: StandardHost {
            parameters:
                routingFile = "network/network13/H15.irt";
                //@display("p=500,900");
        }
        network13host16: StandardHost {
            parameters:
                routingFile = "network/network13/H16.irt";
                //@display("p=500,100");
        }
        network13host17: StandardHost {
            parameters:
                routingFile = "network/network13/H17.irt";
                //@display("p=500,300");
        }
        network13host18: StandardHost {
            parameters:
                routingFile = "network/network13/H18.irt";
                //@display("p=500,500");
        }
        network13host19: StandardHost {
            parameters:
                routingFile = "network/network13/H19.irt";
                //@display("p=500,700");
        }
        network13host20: StandardHost {
            parameters:
                routingFile = "network/network13/H20.irt";
                //@display("p=500,900");
        }
        network13host21: StandardHost {
            parameters:
                routingFile = "network/network13/H21.irt";
                //@display("p=500,100");
        }
        network13host22: StandardHost {
            parameters:
                routingFile = "network/network13/H22.irt";
                //@display("p=500,300");
        }
        network13host23: StandardHost {
            parameters:
                routingFile = "network/network13/H23.irt";
                //@display("p=500,500");
        }
        network13host24: StandardHost {
            parameters:
                routingFile = "network/network13/H24.irt";
                //@display("p=500,700");
        }
        network13host25: StandardHost {
            parameters:
                routingFile = "network/network13/H25.irt";
                //@display("p=500,900");
        }
        network13host26: StandardHost {
            parameters:
                routingFile = "network/network13/H26.irt";
                //@display("p=500,100");
        }
        network13host27: StandardHost {
            parameters:
                routingFile = "network/network13/H27.irt";
                //@display("p=500,300");
        }
        network13host28: StandardHost {
            parameters:
                routingFile = "network/network13/H28.irt";
                //@display("p=500,500");
        }
        network13host29: StandardHost {
            parameters:
                routingFile = "network/network13/H29.irt";
                //@display("p=500,700");
        }
        network13host30: StandardHost {
            parameters:
                routingFile = "network/network13/H30.irt";
                //@display("p=500,900");
        }
        network13host31: StandardHost {
            parameters:
                routingFile = "network/network13/H31.irt";
                //@display("p=500,100");
        }
        network13host32: StandardHost {
            parameters:
                routingFile = "network/network13/H32.irt";
                //@display("p=500,300");
        }
        network13host33: StandardHost {
            parameters:
                routingFile = "network/network13/H33.irt";
                //@display("p=500,500");
        }
        network13host34: StandardHost {
            parameters:
                routingFile = "network/network13/H34.irt";
                //@display("p=500,700");
        }
        network13host35: StandardHost {
            parameters:
                routingFile = "network/network13/H35.irt";
                //@display("p=500,900");
        }
        network13host36: StandardHost {
            parameters:
                routingFile = "network/network13/H36.irt";
                //@display("p=500,100");
        }
        network13host37: StandardHost {
            parameters:
                routingFile = "network/network13/H37.irt";
                //@display("p=500,300");
        }
        network13host38: StandardHost {
            parameters:
                routingFile = "network/network13/H38.irt";
                //@display("p=500,500");
        }
        network13host39: StandardHost {
            parameters:
                routingFile = "network/network13/H39.irt";
                //@display("p=500,700");
        }
        network13host40: StandardHost {
            parameters:
                routingFile = "network/network13/H40.irt";
                //@display("p=500,900");
        }

        network14host1: StandardHost {
            parameters:
                routingFile = "network/network14/H1.irt";
                //@display("p=500,100");
        }
        network14host2: StandardHost {
            parameters:
                routingFile = "network/network14/H2.irt";
                //@display("p=500,300");
        }
        network14host3: StandardHost {
            parameters:
                routingFile = "network/network14/H3.irt";
                //@display("p=500,500");
        }
        network14host4: StandardHost {
            parameters:
                routingFile = "network/network14/H4.irt";
                //@display("p=500,700");
        }
        network14host5: StandardHost {
            parameters:
                routingFile = "network/network14/H5.irt";
                //@display("p=500,900");
        }
        network14host6: StandardHost {
            parameters:
                routingFile = "network/network14/H6.irt";
                //@display("p=500,100");
        }
        network14host7: StandardHost {
            parameters:
                routingFile = "network/network14/H7.irt";
                //@display("p=500,300");
        }
        network14host8: StandardHost {
            parameters:
                routingFile = "network/network14/H8.irt";
                //@display("p=500,500");
        }
        network14host9: StandardHost {
            parameters:
                routingFile = "network/network14/H9.irt";
                //@display("p=500,700");
        }
        network14host10: StandardHost {
            parameters:
                routingFile = "network/network14/H10.irt";
                //@display("p=500,900");
        }
        network14host11: StandardHost {
            parameters:
                routingFile = "network/network14/H11.irt";
                //@display("p=500,100");
        }
        network14host12: StandardHost {
            parameters:
                routingFile = "network/network14/H12.irt";
                //@display("p=500,300");
        }
        network14host13: StandardHost {
            parameters:
                routingFile = "network/network14/H13.irt";
                //@display("p=500,500");
        }
        network14host14: StandardHost {
            parameters:
                routingFile = "network/network14/H14.irt";
                //@display("p=500,700");
        }
        network14host15: StandardHost {
            parameters:
                routingFile = "network/network14/H15.irt";
                //@display("p=500,900");
        }
        network14host16: StandardHost {
            parameters:
                routingFile = "network/network14/H16.irt";
                //@display("p=500,100");
        }
        network14host17: StandardHost {
            parameters:
                routingFile = "network/network14/H17.irt";
                //@display("p=500,300");
        }
        network14host18: StandardHost {
            parameters:
                routingFile = "network/network14/H18.irt";
                //@display("p=500,500");
        }
        network14host19: StandardHost {
            parameters:
                routingFile = "network/network14/H19.irt";
                //@display("p=500,700");
        }
        network14host20: StandardHost {
            parameters:
                routingFile = "network/network14/H20.irt";
                //@display("p=500,900");
        }
        network14host21: StandardHost {
            parameters:
                routingFile = "network/network14/H21.irt";
                //@display("p=500,100");
        }
        network14host22: StandardHost {
            parameters:
                routingFile = "network/network14/H22.irt";
                //@display("p=500,300");
        }
        network14host23: StandardHost {
            parameters:
                routingFile = "network/network14/H23.irt";
                //@display("p=500,500");
        }
        network14host24: StandardHost {
            parameters:
                routingFile = "network/network14/H24.irt";
                //@display("p=500,700");
        }
        network14host25: StandardHost {
            parameters:
                routingFile = "network/network14/H25.irt";
                //@display("p=500,900");
        }
        network14host26: StandardHost {
            parameters:
                routingFile = "network/network14/H26.irt";
                //@display("p=500,100");
        }
        network14host27: StandardHost {
            parameters:
                routingFile = "network/network14/H27.irt";
                //@display("p=500,300");
        }
        network14host28: StandardHost {
            parameters:
                routingFile = "network/network14/H28.irt";
                //@display("p=500,500");
        }
        network14host29: StandardHost {
            parameters:
                routingFile = "network/network14/H29.irt";
                //@display("p=500,700");
        }
        network14host30: StandardHost {
            parameters:
                routingFile = "network/network14/H30.irt";
                //@display("p=500,900");
        }
        network14host31: StandardHost {
            parameters:
                routingFile = "network/network14/H31.irt";
                //@display("p=500,100");
        }
        network14host32: StandardHost {
            parameters:
                routingFile = "network/network14/H32.irt";
                //@display("p=500,300");
        }
        network14host33: StandardHost {
            parameters:
                routingFile = "network/network14/H33.irt";
                //@display("p=500,500");
        }
        network14host34: StandardHost {
            parameters:
                routingFile = "network/network14/H34.irt";
                //@display("p=500,700");
        }
        network14host35: StandardHost {
            parameters:
                routingFile = "network/network14/H35.irt";
                //@display("p=500,900");
        }
        network14host36: StandardHost {
            parameters:
                routingFile = "network/network14/H36.irt";
                //@display("p=500,100");
        }
        network14host37: StandardHost {
            parameters:
                routingFile = "network/network14/H37.irt";
                //@display("p=500,300");
        }
        network14host38: StandardHost {
            parameters:
                routingFile = "network/network14/H38.irt";
                //@display("p=500,500");
        }
        network14host39: StandardHost {
            parameters:
                routingFile = "network/network14/H39.irt";
                //@display("p=500,700");
        }
        network14host40: StandardHost {
            parameters:
                routingFile = "network/network14/H40.irt";
                //@display("p=500,900");
        }

        network15host1: StandardHost {
            parameters:
                routingFile = "network/network15/H1.irt";
                //@display("p=500,100");
        }
        network15host2: StandardHost {
            parameters:
                routingFile = "network/network15/H2.irt";
                //@display("p=500,300");
        }
        network15host3: StandardHost {
            parameters:
                routingFile = "network/network15/H3.irt";
                //@display("p=500,500");
        }
        network15host4: StandardHost {
            parameters:
                routingFile = "network/network15/H4.irt";
                //@display("p=500,700");
        }
        network15host5: StandardHost {
            parameters:
                routingFile = "network/network15/H5.irt";
                //@display("p=500,900");
        }
        network15host6: StandardHost {
            parameters:
                routingFile = "network/network15/H6.irt";
                //@display("p=500,100");
        }
        network15host7: StandardHost {
            parameters:
                routingFile = "network/network15/H7.irt";
                //@display("p=500,300");
        }
        network15host8: StandardHost {
            parameters:
                routingFile = "network/network15/H8.irt";
                //@display("p=500,500");
        }
        network15host9: StandardHost {
            parameters:
                routingFile = "network/network15/H9.irt";
                //@display("p=500,700");
        }
        network15host10: StandardHost {
            parameters:
                routingFile = "network/network15/H10.irt";
                //@display("p=500,900");
        }
        network15host11: StandardHost {
            parameters:
                routingFile = "network/network15/H11.irt";
                //@display("p=500,100");
        }
        network15host12: StandardHost {
            parameters:
                routingFile = "network/network15/H12.irt";
                //@display("p=500,300");
        }
        network15host13: StandardHost {
            parameters:
                routingFile = "network/network15/H13.irt";
                //@display("p=500,500");
        }
        network15host14: StandardHost {
            parameters:
                routingFile = "network/network15/H14.irt";
                //@display("p=500,700");
        }
        network15host15: StandardHost {
            parameters:
                routingFile = "network/network15/H15.irt";
                //@display("p=500,900");
        }
        network15host16: StandardHost {
            parameters:
                routingFile = "network/network15/H16.irt";
                //@display("p=500,100");
        }
        network15host17: StandardHost {
            parameters:
                routingFile = "network/network15/H17.irt";
                //@display("p=500,300");
        }
        network15host18: StandardHost {
            parameters:
                routingFile = "network/network15/H18.irt";
                //@display("p=500,500");
        }
        network15host19: StandardHost {
            parameters:
                routingFile = "network/network15/H19.irt";
                //@display("p=500,700");
        }
        network15host20: StandardHost {
            parameters:
                routingFile = "network/network15/H20.irt";
                //@display("p=500,900");
        }
        network15host21: StandardHost {
            parameters:
                routingFile = "network/network15/H21.irt";
                //@display("p=500,100");
        }
        network15host22: StandardHost {
            parameters:
                routingFile = "network/network15/H22.irt";
                //@display("p=500,300");
        }
        network15host23: StandardHost {
            parameters:
                routingFile = "network/network15/H23.irt";
                //@display("p=500,500");
        }
        network15host24: StandardHost {
            parameters:
                routingFile = "network/network15/H24.irt";
                //@display("p=500,700");
        }
        network15host25: StandardHost {
            parameters:
                routingFile = "network/network15/H25.irt";
                //@display("p=500,900");
        }
        network15host26: StandardHost {
            parameters:
                routingFile = "network/network15/H26.irt";
                //@display("p=500,100");
        }
        network15host27: StandardHost {
            parameters:
                routingFile = "network/network15/H27.irt";
                //@display("p=500,300");
        }
        network15host28: StandardHost {
            parameters:
                routingFile = "network/network15/H28.irt";
                //@display("p=500,500");
        }
        network15host29: StandardHost {
            parameters:
                routingFile = "network/network15/H29.irt";
                //@display("p=500,700");
        }
        network15host30: StandardHost {
            parameters:
                routingFile = "network/network15/H30.irt";
                //@display("p=500,900");
        }
        network15host31: StandardHost {
            parameters:
                routingFile = "network/network15/H31.irt";
                //@display("p=500,100");
        }
        network15host32: StandardHost {
            parameters:
                routingFile = "network/network15/H32.irt";
                //@display("p=500,300");
        }
        network15host33: StandardHost {
            parameters:
                routingFile = "network/network15/H33.irt";
                //@display("p=500,500");
        }
        network15host34: StandardHost {
            parameters:
                routingFile = "network/network15/H34.irt";
                //@display("p=500,700");
        }
        network15host35: StandardHost {
            parameters:
                routingFile = "network/network15/H35.irt";
                //@display("p=500,900");
        }
        network15host36: StandardHost {
            parameters:
                routingFile = "network/network15/H36.irt";
                //@display("p=500,100");
        }
        network15host37: StandardHost {
            parameters:
                routingFile = "network/network15/H37.irt";
                //@display("p=500,300");
        }
        network15host38: StandardHost {
            parameters:
                routingFile = "network/network15/H38.irt";
                //@display("p=500,500");
        }
        network15host39: StandardHost {
            parameters:
                routingFile = "network/network15/H39.irt";
                //@display("p=500,700");
        }
        network15host40: StandardHost {
            parameters:
                routingFile = "network/network15/H40.irt";
                //@display("p=500,900");
        }

        network16host1: StandardHost {
            parameters:
                routingFile = "network/network16/H1.irt";
                //@display("p=500,100");
        }
        network16host2: StandardHost {
            parameters:
                routingFile = "network/network16/H2.irt";
                //@display("p=500,300");
        }
        network16host3: StandardHost {
            parameters:
                routingFile = "network/network16/H3.irt";
                //@display("p=500,500");
        }
        network16host4: StandardHost {
            parameters:
                routingFile = "network/network16/H4.irt";
                //@display("p=500,700");
        }
        network16host5: StandardHost {
            parameters:
                routingFile = "network/network16/H5.irt";
                //@display("p=500,900");
        }
        network16host6: StandardHost {
            parameters:
                routingFile = "network/network16/H6.irt";
                //@display("p=500,100");
        }
        network16host7: StandardHost {
            parameters:
                routingFile = "network/network16/H7.irt";
                //@display("p=500,300");
        }
        network16host8: StandardHost {
            parameters:
                routingFile = "network/network16/H8.irt";
                //@display("p=500,500");
        }
        network16host9: StandardHost {
            parameters:
                routingFile = "network/network16/H9.irt";
                //@display("p=500,700");
        }
        network16host10: StandardHost {
            parameters:
                routingFile = "network/network16/H10.irt";
                //@display("p=500,900");
        }
        network16host11: StandardHost {
            parameters:
                routingFile = "network/network16/H11.irt";
                //@display("p=500,100");
        }
        network16host12: StandardHost {
            parameters:
                routingFile = "network/network16/H12.irt";
                //@display("p=500,300");
        }
        network16host13: StandardHost {
            parameters:
                routingFile = "network/network16/H13.irt";
                //@display("p=500,500");
        }
        network16host14: StandardHost {
            parameters:
                routingFile = "network/network16/H14.irt";
                //@display("p=500,700");
        }
        network16host15: StandardHost {
            parameters:
                routingFile = "network/network16/H15.irt";
                //@display("p=500,900");
        }
        network16host16: StandardHost {
            parameters:
                routingFile = "network/network16/H16.irt";
                //@display("p=500,100");
        }
        network16host17: StandardHost {
            parameters:
                routingFile = "network/network16/H17.irt";
                //@display("p=500,300");
        }
        network16host18: StandardHost {
            parameters:
                routingFile = "network/network16/H18.irt";
                //@display("p=500,500");
        }
        network16host19: StandardHost {
            parameters:
                routingFile = "network/network16/H19.irt";
                //@display("p=500,700");
        }
        network16host20: StandardHost {
            parameters:
                routingFile = "network/network16/H20.irt";
                //@display("p=500,900");
        }
        network16host21: StandardHost {
            parameters:
                routingFile = "network/network16/H21.irt";
                //@display("p=500,100");
        }
        network16host22: StandardHost {
            parameters:
                routingFile = "network/network16/H22.irt";
                //@display("p=500,300");
        }
        network16host23: StandardHost {
            parameters:
                routingFile = "network/network16/H23.irt";
                //@display("p=500,500");
        }
        network16host24: StandardHost {
            parameters:
                routingFile = "network/network16/H24.irt";
                //@display("p=500,700");
        }
        network16host25: StandardHost {
            parameters:
                routingFile = "network/network16/H25.irt";
                //@display("p=500,900");
        }
        network16host26: StandardHost {
            parameters:
                routingFile = "network/network16/H26.irt";
                //@display("p=500,100");
        }
        network16host27: StandardHost {
            parameters:
                routingFile = "network/network16/H27.irt";
                //@display("p=500,300");
        }
        network16host28: StandardHost {
            parameters:
                routingFile = "network/network16/H28.irt";
                //@display("p=500,500");
        }
        network16host29: StandardHost {
            parameters:
                routingFile = "network/network16/H29.irt";
                //@display("p=500,700");
        }
        network16host30: StandardHost {
            parameters:
                routingFile = "network/network16/H30.irt";
                //@display("p=500,900");
        }
        network16host31: StandardHost {
            parameters:
                routingFile = "network/network16/H31.irt";
                //@display("p=500,100");
        }
        network16host32: StandardHost {
            parameters:
                routingFile = "network/network16/H32.irt";
                //@display("p=500,300");
        }
        network16host33: StandardHost {
            parameters:
                routingFile = "network/network16/H33.irt";
                //@display("p=500,500");
        }
        network16host34: StandardHost {
            parameters:
                routingFile = "network/network16/H34.irt";
                //@display("p=500,700");
        }
        network16host35: StandardHost {
            parameters:
                routingFile = "network/network16/H35.irt";
                //@display("p=500,900");
        }
        network16host36: StandardHost {
            parameters:
                routingFile = "network/network16/H36.irt";
                //@display("p=500,100");
        }
        network16host37: StandardHost {
            parameters:
                routingFile = "network/network16/H37.irt";
                //@display("p=500,300");
        }
        network16host38: StandardHost {
            parameters:
                routingFile = "network/network16/H38.irt";
                //@display("p=500,500");
        }
        network16host39: StandardHost {
            parameters:
                routingFile = "network/network16/H39.irt";
                //@display("p=500,700");
        }
        network16host40: StandardHost {
            parameters:
                routingFile = "network/network16/H40.irt";
                //@display("p=500,900");
        }

        network17host1: StandardHost {
            parameters:
                routingFile = "network/network17/H1.irt";
                //@display("p=500,100");
        }
        network17host2: StandardHost {
            parameters:
                routingFile = "network/network17/H2.irt";
                //@display("p=500,300");
        }
        network17host3: StandardHost {
            parameters:
                routingFile = "network/network17/H3.irt";
                //@display("p=500,500");
        }
        network17host4: StandardHost {
            parameters:
                routingFile = "network/network17/H4.irt";
                //@display("p=500,700");
        }
        network17host5: StandardHost {
            parameters:
                routingFile = "network/network17/H5.irt";
                //@display("p=500,900");
        }
        network17host6: StandardHost {
            parameters:
                routingFile = "network/network17/H6.irt";
                //@display("p=500,100");
        }
        network17host7: StandardHost {
            parameters:
                routingFile = "network/network17/H7.irt";
                //@display("p=500,300");
        }
        network17host8: StandardHost {
            parameters:
                routingFile = "network/network17/H8.irt";
                //@display("p=500,500");
        }
        network17host9: StandardHost {
            parameters:
                routingFile = "network/network17/H9.irt";
                //@display("p=500,700");
        }
        network17host10: StandardHost {
            parameters:
                routingFile = "network/network17/H10.irt";
                //@display("p=500,900");
        }
        network17host11: StandardHost {
            parameters:
                routingFile = "network/network17/H11.irt";
                //@display("p=500,100");
        }
        network17host12: StandardHost {
            parameters:
                routingFile = "network/network17/H12.irt";
                //@display("p=500,300");
        }
        network17host13: StandardHost {
            parameters:
                routingFile = "network/network17/H13.irt";
                //@display("p=500,500");
        }
        network17host14: StandardHost {
            parameters:
                routingFile = "network/network17/H14.irt";
                //@display("p=500,700");
        }
        network17host15: StandardHost {
            parameters:
                routingFile = "network/network17/H15.irt";
                //@display("p=500,900");
        }
        network17host16: StandardHost {
            parameters:
                routingFile = "network/network17/H16.irt";
                //@display("p=500,100");
        }
        network17host17: StandardHost {
            parameters:
                routingFile = "network/network17/H17.irt";
                //@display("p=500,300");
        }
        network17host18: StandardHost {
            parameters:
                routingFile = "network/network17/H18.irt";
                //@display("p=500,500");
        }
        network17host19: StandardHost {
            parameters:
                routingFile = "network/network17/H19.irt";
                //@display("p=500,700");
        }
        network17host20: StandardHost {
            parameters:
                routingFile = "network/network17/H20.irt";
                //@display("p=500,900");
        }
        network17host21: StandardHost {
            parameters:
                routingFile = "network/network17/H21.irt";
                //@display("p=500,100");
        }
        network17host22: StandardHost {
            parameters:
                routingFile = "network/network17/H22.irt";
                //@display("p=500,300");
        }
        network17host23: StandardHost {
            parameters:
                routingFile = "network/network17/H23.irt";
                //@display("p=500,500");
        }
        network17host24: StandardHost {
            parameters:
                routingFile = "network/network17/H24.irt";
                //@display("p=500,700");
        }
        network17host25: StandardHost {
            parameters:
                routingFile = "network/network17/H25.irt";
                //@display("p=500,900");
        }
        network17host26: StandardHost {
            parameters:
                routingFile = "network/network17/H26.irt";
                //@display("p=500,100");
        }
        network17host27: StandardHost {
            parameters:
                routingFile = "network/network17/H27.irt";
                //@display("p=500,300");
        }
        network17host28: StandardHost {
            parameters:
                routingFile = "network/network17/H28.irt";
                //@display("p=500,500");
        }
        network17host29: StandardHost {
            parameters:
                routingFile = "network/network17/H29.irt";
                //@display("p=500,700");
        }
        network17host30: StandardHost {
            parameters:
                routingFile = "network/network17/H30.irt";
                //@display("p=500,900");
        }
        network17host31: StandardHost {
            parameters:
                routingFile = "network/network17/H31.irt";
                //@display("p=500,100");
        }
        network17host32: StandardHost {
            parameters:
                routingFile = "network/network17/H32.irt";
                //@display("p=500,300");
        }
        network17host33: StandardHost {
            parameters:
                routingFile = "network/network17/H33.irt";
                //@display("p=500,500");
        }
        network17host34: StandardHost {
            parameters:
                routingFile = "network/network17/H34.irt";
                //@display("p=500,700");
        }
        network17host35: StandardHost {
            parameters:
                routingFile = "network/network17/H35.irt";
                //@display("p=500,900");
        }
        network17host36: StandardHost {
            parameters:
                routingFile = "network/network17/H36.irt";
                //@display("p=500,100");
        }
        network17host37: StandardHost {
            parameters:
                routingFile = "network/network17/H37.irt";
                //@display("p=500,300");
        }
        network17host38: StandardHost {
            parameters:
                routingFile = "network/network17/H38.irt";
                //@display("p=500,500");
        }
        network17host39: StandardHost {
            parameters:
                routingFile = "network/network17/H39.irt";
                //@display("p=500,700");
        }
        network17host40: StandardHost {
            parameters:
                routingFile = "network/network17/H40.irt";
                //@display("p=500,900");
        }

        network18host1: StandardHost {
            parameters:
                routingFile = "network/network18/H1.irt";
                //@display("p=500,100");
        }
        network18host2: StandardHost {
            parameters:
                routingFile = "network/network18/H2.irt";
                //@display("p=500,300");
        }
        network18host3: StandardHost {
            parameters:
                routingFile = "network/network18/H3.irt";
                //@display("p=500,500");
        }
        network18host4: StandardHost {
            parameters:
                routingFile = "network/network18/H4.irt";
                //@display("p=500,700");
        }
        network18host5: StandardHost {
            parameters:
                routingFile = "network/network18/H5.irt";
                //@display("p=500,900");
        }
        network18host6: StandardHost {
            parameters:
                routingFile = "network/network18/H6.irt";
                //@display("p=500,100");
        }
        network18host7: StandardHost {
            parameters:
                routingFile = "network/network18/H7.irt";
                //@display("p=500,300");
        }
        network18host8: StandardHost {
            parameters:
                routingFile = "network/network18/H8.irt";
                //@display("p=500,500");
        }
        network18host9: StandardHost {
            parameters:
                routingFile = "network/network18/H9.irt";
                //@display("p=500,700");
        }
        network18host10: StandardHost {
            parameters:
                routingFile = "network/network18/H10.irt";
                //@display("p=500,900");
        }
        network18host11: StandardHost {
            parameters:
                routingFile = "network/network18/H11.irt";
                //@display("p=500,100");
        }
        network18host12: StandardHost {
            parameters:
                routingFile = "network/network18/H12.irt";
                //@display("p=500,300");
        }
        network18host13: StandardHost {
            parameters:
                routingFile = "network/network18/H13.irt";
                //@display("p=500,500");
        }
        network18host14: StandardHost {
            parameters:
                routingFile = "network/network18/H14.irt";
                //@display("p=500,700");
        }
        network18host15: StandardHost {
            parameters:
                routingFile = "network/network18/H15.irt";
                //@display("p=500,900");
        }
        network18host16: StandardHost {
            parameters:
                routingFile = "network/network18/H16.irt";
                //@display("p=500,100");
        }
        network18host17: StandardHost {
            parameters:
                routingFile = "network/network18/H17.irt";
                //@display("p=500,300");
        }
        network18host18: StandardHost {
            parameters:
                routingFile = "network/network18/H18.irt";
                //@display("p=500,500");
        }
        network18host19: StandardHost {
            parameters:
                routingFile = "network/network18/H19.irt";
                //@display("p=500,700");
        }
        network18host20: StandardHost {
            parameters:
                routingFile = "network/network18/H20.irt";
                //@display("p=500,900");
        }
        network18host21: StandardHost {
            parameters:
                routingFile = "network/network18/H21.irt";
                //@display("p=500,100");
        }
        network18host22: StandardHost {
            parameters:
                routingFile = "network/network18/H22.irt";
                //@display("p=500,300");
        }
        network18host23: StandardHost {
            parameters:
                routingFile = "network/network18/H23.irt";
                //@display("p=500,500");
        }
        network18host24: StandardHost {
            parameters:
                routingFile = "network/network18/H24.irt";
                //@display("p=500,700");
        }
        network18host25: StandardHost {
            parameters:
                routingFile = "network/network18/H25.irt";
                //@display("p=500,900");
        }
        network18host26: StandardHost {
            parameters:
                routingFile = "network/network18/H26.irt";
                //@display("p=500,100");
        }
        network18host27: StandardHost {
            parameters:
                routingFile = "network/network18/H27.irt";
                //@display("p=500,300");
        }
        network18host28: StandardHost {
            parameters:
                routingFile = "network/network18/H28.irt";
                //@display("p=500,500");
        }
        network18host29: StandardHost {
            parameters:
                routingFile = "network/network18/H29.irt";
                //@display("p=500,700");
        }
        network18host30: StandardHost {
            parameters:
                routingFile = "network/network18/H30.irt";
                //@display("p=500,900");
        }
        network18host31: StandardHost {
            parameters:
                routingFile = "network/network18/H31.irt";
                //@display("p=500,100");
        }
        network18host32: StandardHost {
            parameters:
                routingFile = "network/network18/H32.irt";
                //@display("p=500,300");
        }
        network18host33: StandardHost {
            parameters:
                routingFile = "network/network18/H33.irt";
                //@display("p=500,500");
        }
        network18host34: StandardHost {
            parameters:
                routingFile = "network/network18/H34.irt";
                //@display("p=500,700");
        }
        network18host35: StandardHost {
            parameters:
                routingFile = "network/network18/H35.irt";
                //@display("p=500,900");
        }
        network18host36: StandardHost {
            parameters:
                routingFile = "network/network18/H36.irt";
                //@display("p=500,100");
        }
        network18host37: StandardHost {
            parameters:
                routingFile = "network/network18/H37.irt";
                //@display("p=500,300");
        }
        network18host38: StandardHost {
            parameters:
                routingFile = "network/network18/H38.irt";
                //@display("p=500,500");
        }
        network18host39: StandardHost {
            parameters:
                routingFile = "network/network18/H39.irt";
                //@display("p=500,700");
        }
        network18host40: StandardHost {
            parameters:
                routingFile = "network/network18/H40.irt";
                //@display("p=500,900");
        }

        network19host1: StandardHost {
            parameters:
                routingFile = "network/network19/H1.irt";
                //@display("p=500,100");
        }
        network19host2: StandardHost {
            parameters:
                routingFile = "network/network19/H2.irt";
                //@display("p=500,300");
        }
        network19host3: StandardHost {
            parameters:
                routingFile = "network/network19/H3.irt";
                //@display("p=500,500");
        }
        network19host4: StandardHost {
            parameters:
                routingFile = "network/network19/H4.irt";
                //@display("p=500,700");
        }
        network19host5: StandardHost {
            parameters:
                routingFile = "network/network19/H5.irt";
                //@display("p=500,900");
        }
        network19host6: StandardHost {
            parameters:
                routingFile = "network/network19/H6.irt";
                //@display("p=500,100");
        }
        network19host7: StandardHost {
            parameters:
                routingFile = "network/network19/H7.irt";
                //@display("p=500,300");
        }
        network19host8: StandardHost {
            parameters:
                routingFile = "network/network19/H8.irt";
                //@display("p=500,500");
        }
        network19host9: StandardHost {
            parameters:
                routingFile = "network/network19/H9.irt";
                //@display("p=500,700");
        }
        network19host10: StandardHost {
            parameters:
                routingFile = "network/network19/H10.irt";
                //@display("p=500,900");
        }
        network19host11: StandardHost {
            parameters:
                routingFile = "network/network19/H11.irt";
                //@display("p=500,100");
        }
        network19host12: StandardHost {
            parameters:
                routingFile = "network/network19/H12.irt";
                //@display("p=500,300");
        }
        network19host13: StandardHost {
            parameters:
                routingFile = "network/network19/H13.irt";
                //@display("p=500,500");
        }
        network19host14: StandardHost {
            parameters:
                routingFile = "network/network19/H14.irt";
                //@display("p=500,700");
        }
        network19host15: StandardHost {
            parameters:
                routingFile = "network/network19/H15.irt";
                //@display("p=500,900");
        }
        network19host16: StandardHost {
            parameters:
                routingFile = "network/network19/H16.irt";
                //@display("p=500,100");
        }
        network19host17: StandardHost {
            parameters:
                routingFile = "network/network19/H17.irt";
                //@display("p=500,300");
        }
        network19host18: StandardHost {
            parameters:
                routingFile = "network/network19/H18.irt";
                //@display("p=500,500");
        }
        network19host19: StandardHost {
            parameters:
                routingFile = "network/network19/H19.irt";
                //@display("p=500,700");
        }
        network19host20: StandardHost {
            parameters:
                routingFile = "network/network19/H20.irt";
                //@display("p=500,900");
        }
        network19host21: StandardHost {
            parameters:
                routingFile = "network/network19/H21.irt";
                //@display("p=500,100");
        }
        network19host22: StandardHost {
            parameters:
                routingFile = "network/network19/H22.irt";
                //@display("p=500,300");
        }
        network19host23: StandardHost {
            parameters:
                routingFile = "network/network19/H23.irt";
                //@display("p=500,500");
        }
        network19host24: StandardHost {
            parameters:
                routingFile = "network/network19/H24.irt";
                //@display("p=500,700");
        }
        network19host25: StandardHost {
            parameters:
                routingFile = "network/network19/H25.irt";
                //@display("p=500,900");
        }
        network19host26: StandardHost {
            parameters:
                routingFile = "network/network19/H26.irt";
                //@display("p=500,100");
        }
        network19host27: StandardHost {
            parameters:
                routingFile = "network/network19/H27.irt";
                //@display("p=500,300");
        }
        network19host28: StandardHost {
            parameters:
                routingFile = "network/network19/H28.irt";
                //@display("p=500,500");
        }
        network19host29: StandardHost {
            parameters:
                routingFile = "network/network19/H29.irt";
                //@display("p=500,700");
        }
        network19host30: StandardHost {
            parameters:
                routingFile = "network/network19/H30.irt";
                //@display("p=500,900");
        }
        network19host31: StandardHost {
            parameters:
                routingFile = "network/network19/H31.irt";
                //@display("p=500,100");
        }
        network19host32: StandardHost {
            parameters:
                routingFile = "network/network19/H32.irt";
                //@display("p=500,300");
        }
        network19host33: StandardHost {
            parameters:
                routingFile = "network/network19/H33.irt";
                //@display("p=500,500");
        }
        network19host34: StandardHost {
            parameters:
                routingFile = "network/network19/H34.irt";
                //@display("p=500,700");
        }
        network19host35: StandardHost {
            parameters:
                routingFile = "network/network19/H35.irt";
                //@display("p=500,900");
        }
        network19host36: StandardHost {
            parameters:
                routingFile = "network/network19/H36.irt";
                //@display("p=500,100");
        }
        network19host37: StandardHost {
            parameters:
                routingFile = "network/network19/H37.irt";
                //@display("p=500,300");
        }
        network19host38: StandardHost {
            parameters:
                routingFile = "network/network19/H38.irt";
                //@display("p=500,500");
        }
        network19host39: StandardHost {
            parameters:
                routingFile = "network/network19/H39.irt";
                //@display("p=500,700");
        }
        network19host40: StandardHost {
            parameters:
                routingFile = "network/network19/H40.irt";
                //@display("p=500,900");
        }

        network20host1: StandardHost {
            parameters:
                routingFile = "network/network20/H1.irt";
                //@display("p=500,100");
        }
        network20host2: StandardHost {
            parameters:
                routingFile = "network/network20/H2.irt";
                //@display("p=500,300");
        }
        network20host3: StandardHost {
            parameters:
                routingFile = "network/network20/H3.irt";
                //@display("p=500,500");
        }
        network20host4: StandardHost {
            parameters:
                routingFile = "network/network20/H4.irt";
                //@display("p=500,700");
        }
        network20host5: StandardHost {
            parameters:
                routingFile = "network/network20/H5.irt";
                //@display("p=500,900");
        }
        network20host6: StandardHost {
            parameters:
                routingFile = "network/network20/H6.irt";
                //@display("p=500,100");
        }
        network20host7: StandardHost {
            parameters:
                routingFile = "network/network20/H7.irt";
                //@display("p=500,300");
        }
        network20host8: StandardHost {
            parameters:
                routingFile = "network/network20/H8.irt";
                //@display("p=500,500");
        }
        network20host9: StandardHost {
            parameters:
                routingFile = "network/network20/H9.irt";
                //@display("p=500,700");
        }
        network20host10: StandardHost {
            parameters:
                routingFile = "network/network20/H10.irt";
                //@display("p=500,900");
        }
        network20host11: StandardHost {
            parameters:
                routingFile = "network/network20/H11.irt";
                //@display("p=500,100");
        }
        network20host12: StandardHost {
            parameters:
                routingFile = "network/network20/H12.irt";
                //@display("p=500,300");
        }
        network20host13: StandardHost {
            parameters:
                routingFile = "network/network20/H13.irt";
                //@display("p=500,500");
        }
        network20host14: StandardHost {
            parameters:
                routingFile = "network/network20/H14.irt";
                //@display("p=500,700");
        }
        network20host15: StandardHost {
            parameters:
                routingFile = "network/network20/H15.irt";
                //@display("p=500,900");
        }
        network20host16: StandardHost {
            parameters:
                routingFile = "network/network20/H16.irt";
                //@display("p=500,100");
        }
        network20host17: StandardHost {
            parameters:
                routingFile = "network/network20/H17.irt";
                //@display("p=500,300");
        }
        network20host18: StandardHost {
            parameters:
                routingFile = "network/network20/H18.irt";
                //@display("p=500,500");
        }
        network20host19: StandardHost {
            parameters:
                routingFile = "network/network20/H19.irt";
                //@display("p=500,700");
        }
        network20host20: StandardHost {
            parameters:
                routingFile = "network/network20/H20.irt";
                //@display("p=500,900");
        }
        network20host21: StandardHost {
            parameters:
                routingFile = "network/network20/H21.irt";
                //@display("p=500,100");
        }
        network20host22: StandardHost {
            parameters:
                routingFile = "network/network20/H22.irt";
                //@display("p=500,300");
        }
        network20host23: StandardHost {
            parameters:
                routingFile = "network/network20/H23.irt";
                //@display("p=500,500");
        }
        network20host24: StandardHost {
            parameters:
                routingFile = "network/network20/H24.irt";
                //@display("p=500,700");
        }
        network20host25: StandardHost {
            parameters:
                routingFile = "network/network20/H25.irt";
                //@display("p=500,900");
        }
        network20host26: StandardHost {
            parameters:
                routingFile = "network/network20/H26.irt";
                //@display("p=500,100");
        }
        network20host27: StandardHost {
            parameters:
                routingFile = "network/network20/H27.irt";
                //@display("p=500,300");
        }
        network20host28: StandardHost {
            parameters:
                routingFile = "network/network20/H28.irt";
                //@display("p=500,500");
        }
        network20host29: StandardHost {
            parameters:
                routingFile = "network/network20/H29.irt";
                //@display("p=500,700");
        }
        network20host30: StandardHost {
            parameters:
                routingFile = "network/network20/H30.irt";
                //@display("p=500,900");
        }
        network20host31: StandardHost {
            parameters:
                routingFile = "network/network20/H31.irt";
                //@display("p=500,100");
        }
        network20host32: StandardHost {
            parameters:
                routingFile = "network/network20/H32.irt";
                //@display("p=500,300");
        }
        network20host33: StandardHost {
            parameters:
                routingFile = "network/network20/H33.irt";
                //@display("p=500,500");
        }
        network20host34: StandardHost {
            parameters:
                routingFile = "network/network20/H34.irt";
                //@display("p=500,700");
        }
        network20host35: StandardHost {
            parameters:
                routingFile = "network/network20/H35.irt";
                //@display("p=500,900");
        }
        network20host36: StandardHost {
            parameters:
                routingFile = "network/network20/H36.irt";
                //@display("p=500,100");
        }
        network20host37: StandardHost {
            parameters:
                routingFile = "network/network20/H37.irt";
                //@display("p=500,300");
        }
        network20host38: StandardHost {
            parameters:
                routingFile = "network/network20/H38.irt";
                //@display("p=500,500");
        }
        network20host39: StandardHost {
            parameters:
                routingFile = "network/network20/H39.irt";
                //@display("p=500,700");
        }
        network20host40: StandardHost {
            parameters:
                routingFile = "network/network20/H40.irt";
                //@display("p=500,900");
        }

        network21host1: StandardHost {
            parameters:
                routingFile = "network/network21/H1.irt";
                //@display("p=500,100");
        }
        network21host2: StandardHost {
            parameters:
                routingFile = "network/network21/H2.irt";
                //@display("p=500,300");
        }
        network21host3: StandardHost {
            parameters:
                routingFile = "network/network21/H3.irt";
                //@display("p=500,500");
        }
        network21host4: StandardHost {
            parameters:
                routingFile = "network/network21/H4.irt";
                //@display("p=500,700");
        }
        network21host5: StandardHost {
            parameters:
                routingFile = "network/network21/H5.irt";
                //@display("p=500,900");
        }
        network21host6: StandardHost {
            parameters:
                routingFile = "network/network21/H6.irt";
                //@display("p=500,100");
        }
        network21host7: StandardHost {
            parameters:
                routingFile = "network/network21/H7.irt";
                //@display("p=500,300");
        }
        network21host8: StandardHost {
            parameters:
                routingFile = "network/network21/H8.irt";
                //@display("p=500,500");
        }
        network21host9: StandardHost {
            parameters:
                routingFile = "network/network21/H9.irt";
                //@display("p=500,700");
        }
        network21host10: StandardHost {
            parameters:
                routingFile = "network/network21/H10.irt";
                //@display("p=500,900");
        }
        network21host11: StandardHost {
            parameters:
                routingFile = "network/network21/H11.irt";
                //@display("p=500,100");
        }
        network21host12: StandardHost {
            parameters:
                routingFile = "network/network21/H12.irt";
                //@display("p=500,300");
        }
        network21host13: StandardHost {
            parameters:
                routingFile = "network/network21/H13.irt";
                //@display("p=500,500");
        }
        network21host14: StandardHost {
            parameters:
                routingFile = "network/network21/H14.irt";
                //@display("p=500,700");
        }
        network21host15: StandardHost {
            parameters:
                routingFile = "network/network21/H15.irt";
                //@display("p=500,900");
        }
        network21host16: StandardHost {
            parameters:
                routingFile = "network/network21/H16.irt";
                //@display("p=500,100");
        }
        network21host17: StandardHost {
            parameters:
                routingFile = "network/network21/H17.irt";
                //@display("p=500,300");
        }
        network21host18: StandardHost {
            parameters:
                routingFile = "network/network21/H18.irt";
                //@display("p=500,500");
        }
        network21host19: StandardHost {
            parameters:
                routingFile = "network/network21/H19.irt";
                //@display("p=500,700");
        }
        network21host20: StandardHost {
            parameters:
                routingFile = "network/network21/H20.irt";
                //@display("p=500,900");
        }
        network21host21: StandardHost {
            parameters:
                routingFile = "network/network21/H21.irt";
                //@display("p=500,100");
        }
        network21host22: StandardHost {
            parameters:
                routingFile = "network/network21/H22.irt";
                //@display("p=500,300");
        }
        network21host23: StandardHost {
            parameters:
                routingFile = "network/network21/H23.irt";
                //@display("p=500,500");
        }
        network21host24: StandardHost {
            parameters:
                routingFile = "network/network21/H24.irt";
                //@display("p=500,700");
        }
        network21host25: StandardHost {
            parameters:
                routingFile = "network/network21/H25.irt";
                //@display("p=500,900");
        }
        network21host26: StandardHost {
            parameters:
                routingFile = "network/network21/H26.irt";
                //@display("p=500,100");
        }
        network21host27: StandardHost {
            parameters:
                routingFile = "network/network21/H27.irt";
                //@display("p=500,300");
        }
        network21host28: StandardHost {
            parameters:
                routingFile = "network/network21/H28.irt";
                //@display("p=500,500");
        }
        network21host29: StandardHost {
            parameters:
                routingFile = "network/network21/H29.irt";
                //@display("p=500,700");
        }
        network21host30: StandardHost {
            parameters:
                routingFile = "network/network21/H30.irt";
                //@display("p=500,900");
        }
        network21host31: StandardHost {
            parameters:
                routingFile = "network/network21/H31.irt";
                //@display("p=500,100");
        }
        network21host32: StandardHost {
            parameters:
                routingFile = "network/network21/H32.irt";
                //@display("p=500,300");
        }
        network21host33: StandardHost {
            parameters:
                routingFile = "network/network21/H33.irt";
                //@display("p=500,500");
        }
        network21host34: StandardHost {
            parameters:
                routingFile = "network/network21/H34.irt";
                //@display("p=500,700");
        }
        network21host35: StandardHost {
            parameters:
                routingFile = "network/network21/H35.irt";
                //@display("p=500,900");
        }
        network21host36: StandardHost {
            parameters:
                routingFile = "network/network21/H36.irt";
                //@display("p=500,100");
        }
        network21host37: StandardHost {
            parameters:
                routingFile = "network/network21/H37.irt";
                //@display("p=500,300");
        }
        network21host38: StandardHost {
            parameters:
                routingFile = "network/network21/H38.irt";
                //@display("p=500,500");
        }
        network21host39: StandardHost {
            parameters:
                routingFile = "network/network21/H39.irt";
                //@display("p=500,700");
        }
        network21host40: StandardHost {
            parameters:
                routingFile = "network/network21/H40.irt";
                //@display("p=500,900");
        }

        network22host1: StandardHost {
            parameters:
                routingFile = "network/network22/H1.irt";
                //@display("p=500,100");
        }
        network22host2: StandardHost {
            parameters:
                routingFile = "network/network22/H2.irt";
                //@display("p=500,300");
        }
        network22host3: StandardHost {
            parameters:
                routingFile = "network/network22/H3.irt";
                //@display("p=500,500");
        }
        network22host4: StandardHost {
            parameters:
                routingFile = "network/network22/H4.irt";
                //@display("p=500,700");
        }
        network22host5: StandardHost {
            parameters:
                routingFile = "network/network22/H5.irt";
                //@display("p=500,900");
        }
        network22host6: StandardHost {
            parameters:
                routingFile = "network/network22/H6.irt";
                //@display("p=500,100");
        }
        network22host7: StandardHost {
            parameters:
                routingFile = "network/network22/H7.irt";
                //@display("p=500,300");
        }
        network22host8: StandardHost {
            parameters:
                routingFile = "network/network22/H8.irt";
                //@display("p=500,500");
        }
        network22host9: StandardHost {
            parameters:
                routingFile = "network/network22/H9.irt";
                //@display("p=500,700");
        }
        network22host10: StandardHost {
            parameters:
                routingFile = "network/network22/H10.irt";
                //@display("p=500,900");
        }
        network22host11: StandardHost {
            parameters:
                routingFile = "network/network22/H11.irt";
                //@display("p=500,100");
        }
        network22host12: StandardHost {
            parameters:
                routingFile = "network/network22/H12.irt";
                //@display("p=500,300");
        }
        network22host13: StandardHost {
            parameters:
                routingFile = "network/network22/H13.irt";
                //@display("p=500,500");
        }
        network22host14: StandardHost {
            parameters:
                routingFile = "network/network22/H14.irt";
                //@display("p=500,700");
        }
        network22host15: StandardHost {
            parameters:
                routingFile = "network/network22/H15.irt";
                //@display("p=500,900");
        }
        network22host16: StandardHost {
            parameters:
                routingFile = "network/network22/H16.irt";
                //@display("p=500,100");
        }
        network22host17: StandardHost {
            parameters:
                routingFile = "network/network22/H17.irt";
                //@display("p=500,300");
        }
        network22host18: StandardHost {
            parameters:
                routingFile = "network/network22/H18.irt";
                //@display("p=500,500");
        }
        network22host19: StandardHost {
            parameters:
                routingFile = "network/network22/H19.irt";
                //@display("p=500,700");
        }
        network22host20: StandardHost {
            parameters:
                routingFile = "network/network22/H20.irt";
                //@display("p=500,900");
        }
        network22host21: StandardHost {
            parameters:
                routingFile = "network/network22/H21.irt";
                //@display("p=500,100");
        }
        network22host22: StandardHost {
            parameters:
                routingFile = "network/network22/H22.irt";
                //@display("p=500,300");
        }
        network22host23: StandardHost {
            parameters:
                routingFile = "network/network22/H23.irt";
                //@display("p=500,500");
        }
        network22host24: StandardHost {
            parameters:
                routingFile = "network/network22/H24.irt";
                //@display("p=500,700");
        }
        network22host25: StandardHost {
            parameters:
                routingFile = "network/network22/H25.irt";
                //@display("p=500,900");
        }
        network22host26: StandardHost {
            parameters:
                routingFile = "network/network22/H26.irt";
                //@display("p=500,100");
        }
        network22host27: StandardHost {
            parameters:
                routingFile = "network/network22/H27.irt";
                //@display("p=500,300");
        }
        network22host28: StandardHost {
            parameters:
                routingFile = "network/network22/H28.irt";
                //@display("p=500,500");
        }
        network22host29: StandardHost {
            parameters:
                routingFile = "network/network22/H29.irt";
                //@display("p=500,700");
        }
        network22host30: StandardHost {
            parameters:
                routingFile = "network/network22/H30.irt";
                //@display("p=500,900");
        }
        network22host31: StandardHost {
            parameters:
                routingFile = "network/network22/H31.irt";
                //@display("p=500,100");
        }
        network22host32: StandardHost {
            parameters:
                routingFile = "network/network22/H32.irt";
                //@display("p=500,300");
        }
        network22host33: StandardHost {
            parameters:
                routingFile = "network/network22/H33.irt";
                //@display("p=500,500");
        }
        network22host34: StandardHost {
            parameters:
                routingFile = "network/network22/H34.irt";
                //@display("p=500,700");
        }
        network22host35: StandardHost {
            parameters:
                routingFile = "network/network22/H35.irt";
                //@display("p=500,900");
        }
        network22host36: StandardHost {
            parameters:
                routingFile = "network/network22/H36.irt";
                //@display("p=500,100");
        }
        network22host37: StandardHost {
            parameters:
                routingFile = "network/network22/H37.irt";
                //@display("p=500,300");
        }
        network22host38: StandardHost {
            parameters:
                routingFile = "network/network22/H38.irt";
                //@display("p=500,500");
        }
        network22host39: StandardHost {
            parameters:
                routingFile = "network/network22/H39.irt";
                //@display("p=500,700");
        }
        network22host40: StandardHost {
            parameters:
                routingFile = "network/network22/H40.irt";
                //@display("p=500,900");
        }

        network23host1: StandardHost {
            parameters:
                routingFile = "network/network23/H1.irt";
                //@display("p=500,100");
        }
        network23host2: StandardHost {
            parameters:
                routingFile = "network/network23/H2.irt";
                //@display("p=500,300");
        }
        network23host3: StandardHost {
            parameters:
                routingFile = "network/network23/H3.irt";
                //@display("p=500,500");
        }
        network23host4: StandardHost {
            parameters:
                routingFile = "network/network23/H4.irt";
                //@display("p=500,700");
        }
        network23host5: StandardHost {
            parameters:
                routingFile = "network/network23/H5.irt";
                //@display("p=500,900");
        }
        network23host6: StandardHost {
            parameters:
                routingFile = "network/network23/H6.irt";
                //@display("p=500,100");
        }
        network23host7: StandardHost {
            parameters:
                routingFile = "network/network23/H7.irt";
                //@display("p=500,300");
        }
        network23host8: StandardHost {
            parameters:
                routingFile = "network/network23/H8.irt";
                //@display("p=500,500");
        }
        network23host9: StandardHost {
            parameters:
                routingFile = "network/network23/H9.irt";
                //@display("p=500,700");
        }
        network23host10: StandardHost {
            parameters:
                routingFile = "network/network23/H10.irt";
                //@display("p=500,900");
        }
        network23host11: StandardHost {
            parameters:
                routingFile = "network/network23/H11.irt";
                //@display("p=500,100");
        }
        network23host12: StandardHost {
            parameters:
                routingFile = "network/network23/H12.irt";
                //@display("p=500,300");
        }
        network23host13: StandardHost {
            parameters:
                routingFile = "network/network23/H13.irt";
                //@display("p=500,500");
        }
        network23host14: StandardHost {
            parameters:
                routingFile = "network/network23/H14.irt";
                //@display("p=500,700");
        }
        network23host15: StandardHost {
            parameters:
                routingFile = "network/network23/H15.irt";
                //@display("p=500,900");
        }
        network23host16: StandardHost {
            parameters:
                routingFile = "network/network23/H16.irt";
                //@display("p=500,100");
        }
        network23host17: StandardHost {
            parameters:
                routingFile = "network/network23/H17.irt";
                //@display("p=500,300");
        }
        network23host18: StandardHost {
            parameters:
                routingFile = "network/network23/H18.irt";
                //@display("p=500,500");
        }
        network23host19: StandardHost {
            parameters:
                routingFile = "network/network23/H19.irt";
                //@display("p=500,700");
        }
        network23host20: StandardHost {
            parameters:
                routingFile = "network/network23/H20.irt";
                //@display("p=500,900");
        }
        network23host21: StandardHost {
            parameters:
                routingFile = "network/network23/H21.irt";
                //@display("p=500,100");
        }
        network23host22: StandardHost {
            parameters:
                routingFile = "network/network23/H22.irt";
                //@display("p=500,300");
        }
        network23host23: StandardHost {
            parameters:
                routingFile = "network/network23/H23.irt";
                //@display("p=500,500");
        }
        network23host24: StandardHost {
            parameters:
                routingFile = "network/network23/H24.irt";
                //@display("p=500,700");
        }
        network23host25: StandardHost {
            parameters:
                routingFile = "network/network23/H25.irt";
                //@display("p=500,900");
        }
        network23host26: StandardHost {
            parameters:
                routingFile = "network/network23/H26.irt";
                //@display("p=500,100");
        }
        network23host27: StandardHost {
            parameters:
                routingFile = "network/network23/H27.irt";
                //@display("p=500,300");
        }
        network23host28: StandardHost {
            parameters:
                routingFile = "network/network23/H28.irt";
                //@display("p=500,500");
        }
        network23host29: StandardHost {
            parameters:
                routingFile = "network/network23/H29.irt";
                //@display("p=500,700");
        }
        network23host30: StandardHost {
            parameters:
                routingFile = "network/network23/H30.irt";
                //@display("p=500,900");
        }
        network23host31: StandardHost {
            parameters:
                routingFile = "network/network23/H31.irt";
                //@display("p=500,100");
        }
        network23host32: StandardHost {
            parameters:
                routingFile = "network/network23/H32.irt";
                //@display("p=500,300");
        }
        network23host33: StandardHost {
            parameters:
                routingFile = "network/network23/H33.irt";
                //@display("p=500,500");
        }
        network23host34: StandardHost {
            parameters:
                routingFile = "network/network23/H34.irt";
                //@display("p=500,700");
        }
        network23host35: StandardHost {
            parameters:
                routingFile = "network/network23/H35.irt";
                //@display("p=500,900");
        }
        network23host36: StandardHost {
            parameters:
                routingFile = "network/network23/H36.irt";
                //@display("p=500,100");
        }
        network23host37: StandardHost {
            parameters:
                routingFile = "network/network23/H37.irt";
                //@display("p=500,300");
        }
        network23host38: StandardHost {
            parameters:
                routingFile = "network/network23/H38.irt";
                //@display("p=500,500");
        }
        network23host39: StandardHost {
            parameters:
                routingFile = "network/network23/H39.irt";
                //@display("p=500,700");
        }
        network23host40: StandardHost {
            parameters:
                routingFile = "network/network23/H40.irt";
                //@display("p=500,900");
        }

        network24host1: StandardHost {
            parameters:
                routingFile = "network/network24/H1.irt";
                //@display("p=500,100");
        }
        network24host2: StandardHost {
            parameters:
                routingFile = "network/network24/H2.irt";
                //@display("p=500,300");
        }
        network24host3: StandardHost {
            parameters:
                routingFile = "network/network24/H3.irt";
                //@display("p=500,500");
        }
        network24host4: StandardHost {
            parameters:
                routingFile = "network/network24/H4.irt";
                //@display("p=500,700");
        }
        network24host5: StandardHost {
            parameters:
                routingFile = "network/network24/H5.irt";
                //@display("p=500,900");
        }
        network24host6: StandardHost {
            parameters:
                routingFile = "network/network24/H6.irt";
                //@display("p=500,100");
        }
        network24host7: StandardHost {
            parameters:
                routingFile = "network/network24/H7.irt";
                //@display("p=500,300");
        }
        network24host8: StandardHost {
            parameters:
                routingFile = "network/network24/H8.irt";
                //@display("p=500,500");
        }
        network24host9: StandardHost {
            parameters:
                routingFile = "network/network24/H9.irt";
                //@display("p=500,700");
        }
        network24host10: StandardHost {
            parameters:
                routingFile = "network/network24/H10.irt";
                //@display("p=500,900");
        }
        network24host11: StandardHost {
            parameters:
                routingFile = "network/network24/H11.irt";
                //@display("p=500,100");
        }
        network24host12: StandardHost {
            parameters:
                routingFile = "network/network24/H12.irt";
                //@display("p=500,300");
        }
        network24host13: StandardHost {
            parameters:
                routingFile = "network/network24/H13.irt";
                //@display("p=500,500");
        }
        network24host14: StandardHost {
            parameters:
                routingFile = "network/network24/H14.irt";
                //@display("p=500,700");
        }
        network24host15: StandardHost {
            parameters:
                routingFile = "network/network24/H15.irt";
                //@display("p=500,900");
        }
        network24host16: StandardHost {
            parameters:
                routingFile = "network/network24/H16.irt";
                //@display("p=500,100");
        }
        network24host17: StandardHost {
            parameters:
                routingFile = "network/network24/H17.irt";
                //@display("p=500,300");
        }
        network24host18: StandardHost {
            parameters:
                routingFile = "network/network24/H18.irt";
                //@display("p=500,500");
        }
        network24host19: StandardHost {
            parameters:
                routingFile = "network/network24/H19.irt";
                //@display("p=500,700");
        }
        network24host20: StandardHost {
            parameters:
                routingFile = "network/network24/H20.irt";
                //@display("p=500,900");
        }
        network24host21: StandardHost {
            parameters:
                routingFile = "network/network24/H21.irt";
                //@display("p=500,100");
        }
        network24host22: StandardHost {
            parameters:
                routingFile = "network/network24/H22.irt";
                //@display("p=500,300");
        }
        network24host23: StandardHost {
            parameters:
                routingFile = "network/network24/H23.irt";
                //@display("p=500,500");
        }
        network24host24: StandardHost {
            parameters:
                routingFile = "network/network24/H24.irt";
                //@display("p=500,700");
        }
        network24host25: StandardHost {
            parameters:
                routingFile = "network/network24/H25.irt";
                //@display("p=500,900");
        }
        network24host26: StandardHost {
            parameters:
                routingFile = "network/network24/H26.irt";
                //@display("p=500,100");
        }
        network24host27: StandardHost {
            parameters:
                routingFile = "network/network24/H27.irt";
                //@display("p=500,300");
        }
        network24host28: StandardHost {
            parameters:
                routingFile = "network/network24/H28.irt";
                //@display("p=500,500");
        }
        network24host29: StandardHost {
            parameters:
                routingFile = "network/network24/H29.irt";
                //@display("p=500,700");
        }
        network24host30: StandardHost {
            parameters:
                routingFile = "network/network24/H30.irt";
                //@display("p=500,900");
        }
        network24host31: StandardHost {
            parameters:
                routingFile = "network/network24/H31.irt";
                //@display("p=500,100");
        }
        network24host32: StandardHost {
            parameters:
                routingFile = "network/network24/H32.irt";
                //@display("p=500,300");
        }
        network24host33: StandardHost {
            parameters:
                routingFile = "network/network24/H33.irt";
                //@display("p=500,500");
        }
        network24host34: StandardHost {
            parameters:
                routingFile = "network/network24/H34.irt";
                //@display("p=500,700");
        }
        network24host35: StandardHost {
            parameters:
                routingFile = "network/network24/H35.irt";
                //@display("p=500,900");
        }
        network24host36: StandardHost {
            parameters:
                routingFile = "network/network24/H36.irt";
                //@display("p=500,100");
        }
        network24host37: StandardHost {
            parameters:
                routingFile = "network/network24/H37.irt";
                //@display("p=500,300");
        }
        network24host38: StandardHost {
            parameters:
                routingFile = "network/network24/H38.irt";
                //@display("p=500,500");
        }
        network24host39: StandardHost {
            parameters:
                routingFile = "network/network24/H39.irt";
                //@display("p=500,700");
        }
        network24host40: StandardHost {
            parameters:
                routingFile = "network/network24/H40.irt";
                //@display("p=500,900");
        }

        network25host1: StandardHost {
            parameters:
                routingFile = "network/network25/H1.irt";
                //@display("p=500,100");
        }
        network25host2: StandardHost {
            parameters:
                routingFile = "network/network25/H2.irt";
                //@display("p=500,300");
        }
        network25host3: StandardHost {
            parameters:
                routingFile = "network/network25/H3.irt";
                //@display("p=500,500");
        }
        network25host4: StandardHost {
            parameters:
                routingFile = "network/network25/H4.irt";
                //@display("p=500,700");
        }
        network25host5: StandardHost {
            parameters:
                routingFile = "network/network25/H5.irt";
                //@display("p=500,900");
        }
        network25host6: StandardHost {
            parameters:
                routingFile = "network/network25/H6.irt";
                //@display("p=500,100");
        }
        network25host7: StandardHost {
            parameters:
                routingFile = "network/network25/H7.irt";
                //@display("p=500,300");
        }
        network25host8: StandardHost {
            parameters:
                routingFile = "network/network25/H8.irt";
                //@display("p=500,500");
        }
        network25host9: StandardHost {
            parameters:
                routingFile = "network/network25/H9.irt";
                //@display("p=500,700");
        }
        network25host10: StandardHost {
            parameters:
                routingFile = "network/network25/H10.irt";
                //@display("p=500,900");
        }
        network25host11: StandardHost {
            parameters:
                routingFile = "network/network25/H11.irt";
                //@display("p=500,100");
        }
        network25host12: StandardHost {
            parameters:
                routingFile = "network/network25/H12.irt";
                //@display("p=500,300");
        }
        network25host13: StandardHost {
            parameters:
                routingFile = "network/network25/H13.irt";
                //@display("p=500,500");
        }
        network25host14: StandardHost {
            parameters:
                routingFile = "network/network25/H14.irt";
                //@display("p=500,700");
        }
        network25host15: StandardHost {
            parameters:
                routingFile = "network/network25/H15.irt";
                //@display("p=500,900");
        }
        network25host16: StandardHost {
            parameters:
                routingFile = "network/network25/H16.irt";
                //@display("p=500,100");
        }
        network25host17: StandardHost {
            parameters:
                routingFile = "network/network25/H17.irt";
                //@display("p=500,300");
        }
        network25host18: StandardHost {
            parameters:
                routingFile = "network/network25/H18.irt";
                //@display("p=500,500");
        }
        network25host19: StandardHost {
            parameters:
                routingFile = "network/network25/H19.irt";
                //@display("p=500,700");
        }
        network25host20: StandardHost {
            parameters:
                routingFile = "network/network25/H20.irt";
                //@display("p=500,900");
        }
        network25host21: StandardHost {
            parameters:
                routingFile = "network/network25/H21.irt";
                //@display("p=500,100");
        }
        network25host22: StandardHost {
            parameters:
                routingFile = "network/network25/H22.irt";
                //@display("p=500,300");
        }
        network25host23: StandardHost {
            parameters:
                routingFile = "network/network25/H23.irt";
                //@display("p=500,500");
        }
        network25host24: StandardHost {
            parameters:
                routingFile = "network/network25/H24.irt";
                //@display("p=500,700");
        }
        network25host25: StandardHost {
            parameters:
                routingFile = "network/network25/H25.irt";
                //@display("p=500,900");
        }
        network25host26: StandardHost {
            parameters:
                routingFile = "network/network25/H26.irt";
                //@display("p=500,100");
        }
        network25host27: StandardHost {
            parameters:
                routingFile = "network/network25/H27.irt";
                //@display("p=500,300");
        }
        network25host28: StandardHost {
            parameters:
                routingFile = "network/network25/H28.irt";
                //@display("p=500,500");
        }
        network25host29: StandardHost {
            parameters:
                routingFile = "network/network25/H29.irt";
                //@display("p=500,700");
        }
        network25host30: StandardHost {
            parameters:
                routingFile = "network/network25/H30.irt";
                //@display("p=500,900");
        }
        network25host31: StandardHost {
            parameters:
                routingFile = "network/network25/H31.irt";
                //@display("p=500,100");
        }
        network25host32: StandardHost {
            parameters:
                routingFile = "network/network25/H32.irt";
                //@display("p=500,300");
        }
        network25host33: StandardHost {
            parameters:
                routingFile = "network/network25/H33.irt";
                //@display("p=500,500");
        }
        network25host34: StandardHost {
            parameters:
                routingFile = "network/network25/H34.irt";
                //@display("p=500,700");
        }
        network25host35: StandardHost {
            parameters:
                routingFile = "network/network25/H35.irt";
                //@display("p=500,900");
        }
        network25host36: StandardHost {
            parameters:
                routingFile = "network/network25/H36.irt";
                //@display("p=500,100");
        }
        network25host37: StandardHost {
            parameters:
                routingFile = "network/network25/H37.irt";
                //@display("p=500,300");
        }
        network25host38: StandardHost {
            parameters:
                routingFile = "network/network25/H38.irt";
                //@display("p=500,500");
        }
        network25host39: StandardHost {
            parameters:
                routingFile = "network/network25/H39.irt";
                //@display("p=500,700");
        }
        network25host40: StandardHost {
            parameters:
                routingFile = "network/network25/H40.irt";
                //@display("p=500,900");
        }

        network26host1: StandardHost {
            parameters:
                routingFile = "network/network26/H1.irt";
                //@display("p=500,100");
        }
        network26host2: StandardHost {
            parameters:
                routingFile = "network/network26/H2.irt";
                //@display("p=500,300");
        }
        network26host3: StandardHost {
            parameters:
                routingFile = "network/network26/H3.irt";
                //@display("p=500,500");
        }
        network26host4: StandardHost {
            parameters:
                routingFile = "network/network26/H4.irt";
                //@display("p=500,700");
        }
        network26host5: StandardHost {
            parameters:
                routingFile = "network/network26/H5.irt";
                //@display("p=500,900");
        }
        network26host6: StandardHost {
            parameters:
                routingFile = "network/network26/H6.irt";
                //@display("p=500,100");
        }
        network26host7: StandardHost {
            parameters:
                routingFile = "network/network26/H7.irt";
                //@display("p=500,300");
        }
        network26host8: StandardHost {
            parameters:
                routingFile = "network/network26/H8.irt";
                //@display("p=500,500");
        }
        network26host9: StandardHost {
            parameters:
                routingFile = "network/network26/H9.irt";
                //@display("p=500,700");
        }
        network26host10: StandardHost {
            parameters:
                routingFile = "network/network26/H10.irt";
                //@display("p=500,900");
        }
        network26host11: StandardHost {
            parameters:
                routingFile = "network/network26/H11.irt";
                //@display("p=500,100");
        }
        network26host12: StandardHost {
            parameters:
                routingFile = "network/network26/H12.irt";
                //@display("p=500,300");
        }
        network26host13: StandardHost {
            parameters:
                routingFile = "network/network26/H13.irt";
                //@display("p=500,500");
        }
        network26host14: StandardHost {
            parameters:
                routingFile = "network/network26/H14.irt";
                //@display("p=500,700");
        }
        network26host15: StandardHost {
            parameters:
                routingFile = "network/network26/H15.irt";
                //@display("p=500,900");
        }
        network26host16: StandardHost {
            parameters:
                routingFile = "network/network26/H16.irt";
                //@display("p=500,100");
        }
        network26host17: StandardHost {
            parameters:
                routingFile = "network/network26/H17.irt";
                //@display("p=500,300");
        }
        network26host18: StandardHost {
            parameters:
                routingFile = "network/network26/H18.irt";
                //@display("p=500,500");
        }
        network26host19: StandardHost {
            parameters:
                routingFile = "network/network26/H19.irt";
                //@display("p=500,700");
        }
        network26host20: StandardHost {
            parameters:
                routingFile = "network/network26/H20.irt";
                //@display("p=500,900");
        }
        network26host21: StandardHost {
            parameters:
                routingFile = "network/network26/H21.irt";
                //@display("p=500,100");
        }
        network26host22: StandardHost {
            parameters:
                routingFile = "network/network26/H22.irt";
                //@display("p=500,300");
        }
        network26host23: StandardHost {
            parameters:
                routingFile = "network/network26/H23.irt";
                //@display("p=500,500");
        }
        network26host24: StandardHost {
            parameters:
                routingFile = "network/network26/H24.irt";
                //@display("p=500,700");
        }
        network26host25: StandardHost {
            parameters:
                routingFile = "network/network26/H25.irt";
                //@display("p=500,900");
        }
        network26host26: StandardHost {
            parameters:
                routingFile = "network/network26/H26.irt";
                //@display("p=500,100");
        }
        network26host27: StandardHost {
            parameters:
                routingFile = "network/network26/H27.irt";
                //@display("p=500,300");
        }
        network26host28: StandardHost {
            parameters:
                routingFile = "network/network26/H28.irt";
                //@display("p=500,500");
        }
        network26host29: StandardHost {
            parameters:
                routingFile = "network/network26/H29.irt";
                //@display("p=500,700");
        }
        network26host30: StandardHost {
            parameters:
                routingFile = "network/network26/H30.irt";
                //@display("p=500,900");
        }
        network26host31: StandardHost {
            parameters:
                routingFile = "network/network26/H31.irt";
                //@display("p=500,100");
        }
        network26host32: StandardHost {
            parameters:
                routingFile = "network/network26/H32.irt";
                //@display("p=500,300");
        }
        network26host33: StandardHost {
            parameters:
                routingFile = "network/network26/H33.irt";
                //@display("p=500,500");
        }
        network26host34: StandardHost {
            parameters:
                routingFile = "network/network26/H34.irt";
                //@display("p=500,700");
        }
        network26host35: StandardHost {
            parameters:
                routingFile = "network/network26/H35.irt";
                //@display("p=500,900");
        }
        network26host36: StandardHost {
            parameters:
                routingFile = "network/network26/H36.irt";
                //@display("p=500,100");
        }
        network26host37: StandardHost {
            parameters:
                routingFile = "network/network26/H37.irt";
                //@display("p=500,300");
        }
        network26host38: StandardHost {
            parameters:
                routingFile = "network/network26/H38.irt";
                //@display("p=500,500");
        }
        network26host39: StandardHost {
            parameters:
                routingFile = "network/network26/H39.irt";
                //@display("p=500,700");
        }
        network26host40: StandardHost {
            parameters:
                routingFile = "network/network26/H40.irt";
                //@display("p=500,900");
        }

        network27host1: StandardHost {
            parameters:
                routingFile = "network/network27/H1.irt";
                //@display("p=500,100");
        }
        network27host2: StandardHost {
            parameters:
                routingFile = "network/network27/H2.irt";
                //@display("p=500,300");
        }
        network27host3: StandardHost {
            parameters:
                routingFile = "network/network27/H3.irt";
                //@display("p=500,500");
        }
        network27host4: StandardHost {
            parameters:
                routingFile = "network/network27/H4.irt";
                //@display("p=500,700");
        }
        network27host5: StandardHost {
            parameters:
                routingFile = "network/network27/H5.irt";
                //@display("p=500,900");
        }
        network27host6: StandardHost {
            parameters:
                routingFile = "network/network27/H6.irt";
                //@display("p=500,100");
        }
        network27host7: StandardHost {
            parameters:
                routingFile = "network/network27/H7.irt";
                //@display("p=500,300");
        }
        network27host8: StandardHost {
            parameters:
                routingFile = "network/network27/H8.irt";
                //@display("p=500,500");
        }
        network27host9: StandardHost {
            parameters:
                routingFile = "network/network27/H9.irt";
                //@display("p=500,700");
        }
        network27host10: StandardHost {
            parameters:
                routingFile = "network/network27/H10.irt";
                //@display("p=500,900");
        }
        network27host11: StandardHost {
            parameters:
                routingFile = "network/network27/H11.irt";
                //@display("p=500,100");
        }
        network27host12: StandardHost {
            parameters:
                routingFile = "network/network27/H12.irt";
                //@display("p=500,300");
        }
        network27host13: StandardHost {
            parameters:
                routingFile = "network/network27/H13.irt";
                //@display("p=500,500");
        }
        network27host14: StandardHost {
            parameters:
                routingFile = "network/network27/H14.irt";
                //@display("p=500,700");
        }
        network27host15: StandardHost {
            parameters:
                routingFile = "network/network27/H15.irt";
                //@display("p=500,900");
        }
        network27host16: StandardHost {
            parameters:
                routingFile = "network/network27/H16.irt";
                //@display("p=500,100");
        }
        network27host17: StandardHost {
            parameters:
                routingFile = "network/network27/H17.irt";
                //@display("p=500,300");
        }
        network27host18: StandardHost {
            parameters:
                routingFile = "network/network27/H18.irt";
                //@display("p=500,500");
        }
        network27host19: StandardHost {
            parameters:
                routingFile = "network/network27/H19.irt";
                //@display("p=500,700");
        }
        network27host20: StandardHost {
            parameters:
                routingFile = "network/network27/H20.irt";
                //@display("p=500,900");
        }
        network27host21: StandardHost {
            parameters:
                routingFile = "network/network27/H21.irt";
                //@display("p=500,100");
        }
        network27host22: StandardHost {
            parameters:
                routingFile = "network/network27/H22.irt";
                //@display("p=500,300");
        }
        network27host23: StandardHost {
            parameters:
                routingFile = "network/network27/H23.irt";
                //@display("p=500,500");
        }
        network27host24: StandardHost {
            parameters:
                routingFile = "network/network27/H24.irt";
                //@display("p=500,700");
        }
        network27host25: StandardHost {
            parameters:
                routingFile = "network/network27/H25.irt";
                //@display("p=500,900");
        }
        network27host26: StandardHost {
            parameters:
                routingFile = "network/network27/H26.irt";
                //@display("p=500,100");
        }
        network27host27: StandardHost {
            parameters:
                routingFile = "network/network27/H27.irt";
                //@display("p=500,300");
        }
        network27host28: StandardHost {
            parameters:
                routingFile = "network/network27/H28.irt";
                //@display("p=500,500");
        }
        network27host29: StandardHost {
            parameters:
                routingFile = "network/network27/H29.irt";
                //@display("p=500,700");
        }
        network27host30: StandardHost {
            parameters:
                routingFile = "network/network27/H30.irt";
                //@display("p=500,900");
        }
        network27host31: StandardHost {
            parameters:
                routingFile = "network/network27/H31.irt";
                //@display("p=500,100");
        }
        network27host32: StandardHost {
            parameters:
                routingFile = "network/network27/H32.irt";
                //@display("p=500,300");
        }
        network27host33: StandardHost {
            parameters:
                routingFile = "network/network27/H33.irt";
                //@display("p=500,500");
        }
        network27host34: StandardHost {
            parameters:
                routingFile = "network/network27/H34.irt";
                //@display("p=500,700");
        }
        network27host35: StandardHost {
            parameters:
                routingFile = "network/network27/H35.irt";
                //@display("p=500,900");
        }
        network27host36: StandardHost {
            parameters:
                routingFile = "network/network27/H36.irt";
                //@display("p=500,100");
        }
        network27host37: StandardHost {
            parameters:
                routingFile = "network/network27/H37.irt";
                //@display("p=500,300");
        }
        network27host38: StandardHost {
            parameters:
                routingFile = "network/network27/H38.irt";
                //@display("p=500,500");
        }
        network27host39: StandardHost {
            parameters:
                routingFile = "network/network27/H39.irt";
                //@display("p=500,700");
        }
        network27host40: StandardHost {
            parameters:
                routingFile = "network/network27/H40.irt";
                //@display("p=500,900");
        }

        network28host1: StandardHost {
            parameters:
                routingFile = "network/network28/H1.irt";
                //@display("p=500,100");
        }
        network28host2: StandardHost {
            parameters:
                routingFile = "network/network28/H2.irt";
                //@display("p=500,300");
        }
        network28host3: StandardHost {
            parameters:
                routingFile = "network/network28/H3.irt";
                //@display("p=500,500");
        }
        network28host4: StandardHost {
            parameters:
                routingFile = "network/network28/H4.irt";
                //@display("p=500,700");
        }
        network28host5: StandardHost {
            parameters:
                routingFile = "network/network28/H5.irt";
                //@display("p=500,900");
        }
        network28host6: StandardHost {
            parameters:
                routingFile = "network/network28/H6.irt";
                //@display("p=500,100");
        }
        network28host7: StandardHost {
            parameters:
                routingFile = "network/network28/H7.irt";
                //@display("p=500,300");
        }
        network28host8: StandardHost {
            parameters:
                routingFile = "network/network28/H8.irt";
                //@display("p=500,500");
        }
        network28host9: StandardHost {
            parameters:
                routingFile = "network/network28/H9.irt";
                //@display("p=500,700");
        }
        network28host10: StandardHost {
            parameters:
                routingFile = "network/network28/H10.irt";
                //@display("p=500,900");
        }
        network28host11: StandardHost {
            parameters:
                routingFile = "network/network28/H11.irt";
                //@display("p=500,100");
        }
        network28host12: StandardHost {
            parameters:
                routingFile = "network/network28/H12.irt";
                //@display("p=500,300");
        }
        network28host13: StandardHost {
            parameters:
                routingFile = "network/network28/H13.irt";
                //@display("p=500,500");
        }
        network28host14: StandardHost {
            parameters:
                routingFile = "network/network28/H14.irt";
                //@display("p=500,700");
        }
        network28host15: StandardHost {
            parameters:
                routingFile = "network/network28/H15.irt";
                //@display("p=500,900");
        }
        network28host16: StandardHost {
            parameters:
                routingFile = "network/network28/H16.irt";
                //@display("p=500,100");
        }
        network28host17: StandardHost {
            parameters:
                routingFile = "network/network28/H17.irt";
                //@display("p=500,300");
        }
        network28host18: StandardHost {
            parameters:
                routingFile = "network/network28/H18.irt";
                //@display("p=500,500");
        }
        network28host19: StandardHost {
            parameters:
                routingFile = "network/network28/H19.irt";
                //@display("p=500,700");
        }
        network28host20: StandardHost {
            parameters:
                routingFile = "network/network28/H20.irt";
                //@display("p=500,900");
        }
        network28host21: StandardHost {
            parameters:
                routingFile = "network/network28/H21.irt";
                //@display("p=500,100");
        }
        network28host22: StandardHost {
            parameters:
                routingFile = "network/network28/H22.irt";
                //@display("p=500,300");
        }
        network28host23: StandardHost {
            parameters:
                routingFile = "network/network28/H23.irt";
                //@display("p=500,500");
        }
        network28host24: StandardHost {
            parameters:
                routingFile = "network/network28/H24.irt";
                //@display("p=500,700");
        }
        network28host25: StandardHost {
            parameters:
                routingFile = "network/network28/H25.irt";
                //@display("p=500,900");
        }
        network28host26: StandardHost {
            parameters:
                routingFile = "network/network28/H26.irt";
                //@display("p=500,100");
        }
        network28host27: StandardHost {
            parameters:
                routingFile = "network/network28/H27.irt";
                //@display("p=500,300");
        }
        network28host28: StandardHost {
            parameters:
                routingFile = "network/network28/H28.irt";
                //@display("p=500,500");
        }
        network28host29: StandardHost {
            parameters:
                routingFile = "network/network28/H29.irt";
                //@display("p=500,700");
        }
        network28host30: StandardHost {
            parameters:
                routingFile = "network/network28/H30.irt";
                //@display("p=500,900");
        }
        network28host31: StandardHost {
            parameters:
                routingFile = "network/network28/H31.irt";
                //@display("p=500,100");
        }
        network28host32: StandardHost {
            parameters:
                routingFile = "network/network28/H32.irt";
                //@display("p=500,300");
        }
        network28host33: StandardHost {
            parameters:
                routingFile = "network/network28/H33.irt";
                //@display("p=500,500");
        }
        network28host34: StandardHost {
            parameters:
                routingFile = "network/network28/H34.irt";
                //@display("p=500,700");
        }
        network28host35: StandardHost {
            parameters:
                routingFile = "network/network28/H35.irt";
                //@display("p=500,900");
        }
        network28host36: StandardHost {
            parameters:
                routingFile = "network/network28/H36.irt";
                //@display("p=500,100");
        }
        network28host37: StandardHost {
            parameters:
                routingFile = "network/network28/H37.irt";
                //@display("p=500,300");
        }
        network28host38: StandardHost {
            parameters:
                routingFile = "network/network28/H38.irt";
                //@display("p=500,500");
        }
        network28host39: StandardHost {
            parameters:
                routingFile = "network/network28/H39.irt";
                //@display("p=500,700");
        }
        network28host40: StandardHost {
            parameters:
                routingFile = "network/network28/H40.irt";
                //@display("p=500,900");
        }

        network29host1: StandardHost {
            parameters:
                routingFile = "network/network29/H1.irt";
                //@display("p=500,100");
        }
        network29host2: StandardHost {
            parameters:
                routingFile = "network/network29/H2.irt";
                //@display("p=500,300");
        }
        network29host3: StandardHost {
            parameters:
                routingFile = "network/network29/H3.irt";
                //@display("p=500,500");
        }
        network29host4: StandardHost {
            parameters:
                routingFile = "network/network29/H4.irt";
                //@display("p=500,700");
        }
        network29host5: StandardHost {
            parameters:
                routingFile = "network/network29/H5.irt";
                //@display("p=500,900");
        }
        network29host6: StandardHost {
            parameters:
                routingFile = "network/network29/H6.irt";
                //@display("p=500,100");
        }
        network29host7: StandardHost {
            parameters:
                routingFile = "network/network29/H7.irt";
                //@display("p=500,300");
        }
        network29host8: StandardHost {
            parameters:
                routingFile = "network/network29/H8.irt";
                //@display("p=500,500");
        }
        network29host9: StandardHost {
            parameters:
                routingFile = "network/network29/H9.irt";
                //@display("p=500,700");
        }
        network29host10: StandardHost {
            parameters:
                routingFile = "network/network29/H10.irt";
                //@display("p=500,900");
        }
        network29host11: StandardHost {
            parameters:
                routingFile = "network/network29/H11.irt";
                //@display("p=500,100");
        }
        network29host12: StandardHost {
            parameters:
                routingFile = "network/network29/H12.irt";
                //@display("p=500,300");
        }
        network29host13: StandardHost {
            parameters:
                routingFile = "network/network29/H13.irt";
                //@display("p=500,500");
        }
        network29host14: StandardHost {
            parameters:
                routingFile = "network/network29/H14.irt";
                //@display("p=500,700");
        }
        network29host15: StandardHost {
            parameters:
                routingFile = "network/network29/H15.irt";
                //@display("p=500,900");
        }
        network29host16: StandardHost {
            parameters:
                routingFile = "network/network29/H16.irt";
                //@display("p=500,100");
        }
        network29host17: StandardHost {
            parameters:
                routingFile = "network/network29/H17.irt";
                //@display("p=500,300");
        }
        network29host18: StandardHost {
            parameters:
                routingFile = "network/network29/H18.irt";
                //@display("p=500,500");
        }
        network29host19: StandardHost {
            parameters:
                routingFile = "network/network29/H19.irt";
                //@display("p=500,700");
        }
        network29host20: StandardHost {
            parameters:
                routingFile = "network/network29/H20.irt";
                //@display("p=500,900");
        }
        network29host21: StandardHost {
            parameters:
                routingFile = "network/network29/H21.irt";
                //@display("p=500,100");
        }
        network29host22: StandardHost {
            parameters:
                routingFile = "network/network29/H22.irt";
                //@display("p=500,300");
        }
        network29host23: StandardHost {
            parameters:
                routingFile = "network/network29/H23.irt";
                //@display("p=500,500");
        }
        network29host24: StandardHost {
            parameters:
                routingFile = "network/network29/H24.irt";
                //@display("p=500,700");
        }
        network29host25: StandardHost {
            parameters:
                routingFile = "network/network29/H25.irt";
                //@display("p=500,900");
        }
        network29host26: StandardHost {
            parameters:
                routingFile = "network/network29/H26.irt";
                //@display("p=500,100");
        }
        network29host27: StandardHost {
            parameters:
                routingFile = "network/network29/H27.irt";
                //@display("p=500,300");
        }
        network29host28: StandardHost {
            parameters:
                routingFile = "network/network29/H28.irt";
                //@display("p=500,500");
        }
        network29host29: StandardHost {
            parameters:
                routingFile = "network/network29/H29.irt";
                //@display("p=500,700");
        }
        network29host30: StandardHost {
            parameters:
                routingFile = "network/network29/H30.irt";
                //@display("p=500,900");
        }
        network29host31: StandardHost {
            parameters:
                routingFile = "network/network29/H31.irt";
                //@display("p=500,100");
        }
        network29host32: StandardHost {
            parameters:
                routingFile = "network/network29/H32.irt";
                //@display("p=500,300");
        }
        network29host33: StandardHost {
            parameters:
                routingFile = "network/network29/H33.irt";
                //@display("p=500,500");
        }
        network29host34: StandardHost {
            parameters:
                routingFile = "network/network29/H34.irt";
                //@display("p=500,700");
        }
        network29host35: StandardHost {
            parameters:
                routingFile = "network/network29/H35.irt";
                //@display("p=500,900");
        }
        network29host36: StandardHost {
            parameters:
                routingFile = "network/network29/H36.irt";
                //@display("p=500,100");
        }
        network29host37: StandardHost {
            parameters:
                routingFile = "network/network29/H37.irt";
                //@display("p=500,300");
        }
        network29host38: StandardHost {
            parameters:
                routingFile = "network/network29/H38.irt";
                //@display("p=500,500");
        }
        network29host39: StandardHost {
            parameters:
                routingFile = "network/network29/H39.irt";
                //@display("p=500,700");
        }
        network29host40: StandardHost {
            parameters:
                routingFile = "network/network29/H40.irt";
                //@display("p=500,900");
        }

        network30host1: StandardHost {
            parameters:
                routingFile = "network/network30/H1.irt";
                //@display("p=500,100");
        }
        network30host2: StandardHost {
            parameters:
                routingFile = "network/network30/H2.irt";
                //@display("p=500,300");
        }
        network30host3: StandardHost {
            parameters:
                routingFile = "network/network30/H3.irt";
                //@display("p=500,500");
        }
        network30host4: StandardHost {
            parameters:
                routingFile = "network/network30/H4.irt";
                //@display("p=500,700");
        }
        network30host5: StandardHost {
            parameters:
                routingFile = "network/network30/H5.irt";
                //@display("p=500,900");
        }
        network30host6: StandardHost {
            parameters:
                routingFile = "network/network30/H6.irt";
                //@display("p=500,100");
        }
        network30host7: StandardHost {
            parameters:
                routingFile = "network/network30/H7.irt";
                //@display("p=500,300");
        }
        network30host8: StandardHost {
            parameters:
                routingFile = "network/network30/H8.irt";
                //@display("p=500,500");
        }
        network30host9: StandardHost {
            parameters:
                routingFile = "network/network30/H9.irt";
                //@display("p=500,700");
        }
        network30host10: StandardHost {
            parameters:
                routingFile = "network/network30/H10.irt";
                //@display("p=500,900");
        }
        network30host11: StandardHost {
            parameters:
                routingFile = "network/network30/H11.irt";
                //@display("p=500,100");
        }
        network30host12: StandardHost {
            parameters:
                routingFile = "network/network30/H12.irt";
                //@display("p=500,300");
        }
        network30host13: StandardHost {
            parameters:
                routingFile = "network/network30/H13.irt";
                //@display("p=500,500");
        }
        network30host14: StandardHost {
            parameters:
                routingFile = "network/network30/H14.irt";
                //@display("p=500,700");
        }
        network30host15: StandardHost {
            parameters:
                routingFile = "network/network30/H15.irt";
                //@display("p=500,900");
        }
        network30host16: StandardHost {
            parameters:
                routingFile = "network/network30/H16.irt";
                //@display("p=500,100");
        }
        network30host17: StandardHost {
            parameters:
                routingFile = "network/network30/H17.irt";
                //@display("p=500,300");
        }
        network30host18: StandardHost {
            parameters:
                routingFile = "network/network30/H18.irt";
                //@display("p=500,500");
        }
        network30host19: StandardHost {
            parameters:
                routingFile = "network/network30/H19.irt";
                //@display("p=500,700");
        }
        network30host20: StandardHost {
            parameters:
                routingFile = "network/network30/H20.irt";
                //@display("p=500,900");
        }
        network30host21: StandardHost {
            parameters:
                routingFile = "network/network30/H21.irt";
                //@display("p=500,100");
        }
        network30host22: StandardHost {
            parameters:
                routingFile = "network/network30/H22.irt";
                //@display("p=500,300");
        }
        network30host23: StandardHost {
            parameters:
                routingFile = "network/network30/H23.irt";
                //@display("p=500,500");
        }
        network30host24: StandardHost {
            parameters:
                routingFile = "network/network30/H24.irt";
                //@display("p=500,700");
        }
        network30host25: StandardHost {
            parameters:
                routingFile = "network/network30/H25.irt";
                //@display("p=500,900");
        }
        network30host26: StandardHost {
            parameters:
                routingFile = "network/network30/H26.irt";
                //@display("p=500,100");
        }
        network30host27: StandardHost {
            parameters:
                routingFile = "network/network30/H27.irt";
                //@display("p=500,300");
        }
        network30host28: StandardHost {
            parameters:
                routingFile = "network/network30/H28.irt";
                //@display("p=500,500");
        }
        network30host29: StandardHost {
            parameters:
                routingFile = "network/network30/H29.irt";
                //@display("p=500,700");
        }
        network30host30: StandardHost {
            parameters:
                routingFile = "network/network30/H30.irt";
                //@display("p=500,900");
        }
        network30host31: StandardHost {
            parameters:
                routingFile = "network/network30/H31.irt";
                //@display("p=500,100");
        }
        network30host32: StandardHost {
            parameters:
                routingFile = "network/network30/H32.irt";
                //@display("p=500,300");
        }
        network30host33: StandardHost {
            parameters:
                routingFile = "network/network30/H33.irt";
                //@display("p=500,500");
        }
        network30host34: StandardHost {
            parameters:
                routingFile = "network/network30/H34.irt";
                //@display("p=500,700");
        }
        network30host35: StandardHost {
            parameters:
                routingFile = "network/network30/H35.irt";
                //@display("p=500,900");
        }
        network30host36: StandardHost {
            parameters:
                routingFile = "network/network30/H36.irt";
                //@display("p=500,100");
        }
        network30host37: StandardHost {
            parameters:
                routingFile = "network/network30/H37.irt";
                //@display("p=500,300");
        }
        network30host38: StandardHost {
            parameters:
                routingFile = "network/network30/H38.irt";
                //@display("p=500,500");
        }
        network30host39: StandardHost {
            parameters:
                routingFile = "network/network30/H39.irt";
                //@display("p=500,700");
        }
        network30host40: StandardHost {
            parameters:
                routingFile = "network/network30/H40.irt";
                //@display("p=500,900");
        }

        network31host1: StandardHost {
            parameters:
                routingFile = "network/network31/H1.irt";
                //@display("p=500,100");
        }
        network31host2: StandardHost {
            parameters:
                routingFile = "network/network31/H2.irt";
                //@display("p=500,300");
        }
        network31host3: StandardHost {
            parameters:
                routingFile = "network/network31/H3.irt";
                //@display("p=500,500");
        }
        network31host4: StandardHost {
            parameters:
                routingFile = "network/network31/H4.irt";
                //@display("p=500,700");
        }
        network31host5: StandardHost {
            parameters:
                routingFile = "network/network31/H5.irt";
                //@display("p=500,900");
        }
        network31host6: StandardHost {
            parameters:
                routingFile = "network/network31/H6.irt";
                //@display("p=500,100");
        }
        network31host7: StandardHost {
            parameters:
                routingFile = "network/network31/H7.irt";
                //@display("p=500,300");
        }
        network31host8: StandardHost {
            parameters:
                routingFile = "network/network31/H8.irt";
                //@display("p=500,500");
        }
        network31host9: StandardHost {
            parameters:
                routingFile = "network/network31/H9.irt";
                //@display("p=500,700");
        }
        network31host10: StandardHost {
            parameters:
                routingFile = "network/network31/H10.irt";
                //@display("p=500,900");
        }
        network31host11: StandardHost {
            parameters:
                routingFile = "network/network31/H11.irt";
                //@display("p=500,100");
        }
        network31host12: StandardHost {
            parameters:
                routingFile = "network/network31/H12.irt";
                //@display("p=500,300");
        }
        network31host13: StandardHost {
            parameters:
                routingFile = "network/network31/H13.irt";
                //@display("p=500,500");
        }
        network31host14: StandardHost {
            parameters:
                routingFile = "network/network31/H14.irt";
                //@display("p=500,700");
        }
        network31host15: StandardHost {
            parameters:
                routingFile = "network/network31/H15.irt";
                //@display("p=500,900");
        }
        network31host16: StandardHost {
            parameters:
                routingFile = "network/network31/H16.irt";
                //@display("p=500,100");
        }
        network31host17: StandardHost {
            parameters:
                routingFile = "network/network31/H17.irt";
                //@display("p=500,300");
        }
        network31host18: StandardHost {
            parameters:
                routingFile = "network/network31/H18.irt";
                //@display("p=500,500");
        }
        network31host19: StandardHost {
            parameters:
                routingFile = "network/network31/H19.irt";
                //@display("p=500,700");
        }
        network31host20: StandardHost {
            parameters:
                routingFile = "network/network31/H20.irt";
                //@display("p=500,900");
        }
        network31host21: StandardHost {
            parameters:
                routingFile = "network/network31/H21.irt";
                //@display("p=500,100");
        }
        network31host22: StandardHost {
            parameters:
                routingFile = "network/network31/H22.irt";
                //@display("p=500,300");
        }
        network31host23: StandardHost {
            parameters:
                routingFile = "network/network31/H23.irt";
                //@display("p=500,500");
        }
        network31host24: StandardHost {
            parameters:
                routingFile = "network/network31/H24.irt";
                //@display("p=500,700");
        }
        network31host25: StandardHost {
            parameters:
                routingFile = "network/network31/H25.irt";
                //@display("p=500,900");
        }
        network31host26: StandardHost {
            parameters:
                routingFile = "network/network31/H26.irt";
                //@display("p=500,100");
        }
        network31host27: StandardHost {
            parameters:
                routingFile = "network/network31/H27.irt";
                //@display("p=500,300");
        }
        network31host28: StandardHost {
            parameters:
                routingFile = "network/network31/H28.irt";
                //@display("p=500,500");
        }
        network31host29: StandardHost {
            parameters:
                routingFile = "network/network31/H29.irt";
                //@display("p=500,700");
        }
        network31host30: StandardHost {
            parameters:
                routingFile = "network/network31/H30.irt";
                //@display("p=500,900");
        }
        network31host31: StandardHost {
            parameters:
                routingFile = "network/network31/H31.irt";
                //@display("p=500,100");
        }
        network31host32: StandardHost {
            parameters:
                routingFile = "network/network31/H32.irt";
                //@display("p=500,300");
        }
        network31host33: StandardHost {
            parameters:
                routingFile = "network/network31/H33.irt";
                //@display("p=500,500");
        }
        network31host34: StandardHost {
            parameters:
                routingFile = "network/network31/H34.irt";
                //@display("p=500,700");
        }
        network31host35: StandardHost {
            parameters:
                routingFile = "network/network31/H35.irt";
                //@display("p=500,900");
        }
        network31host36: StandardHost {
            parameters:
                routingFile = "network/network31/H36.irt";
                //@display("p=500,100");
        }
        network31host37: StandardHost {
            parameters:
                routingFile = "network/network31/H37.irt";
                //@display("p=500,300");
        }
        network31host38: StandardHost {
            parameters:
                routingFile = "network/network31/H38.irt";
                //@display("p=500,500");
        }
        network31host39: StandardHost {
            parameters:
                routingFile = "network/network31/H39.irt";
                //@display("p=500,700");
        }
        network31host40: StandardHost {
            parameters:
                routingFile = "network/network31/H40.irt";
                //@display("p=500,900");
        }

        network32host1: StandardHost {
            parameters:
                routingFile = "network/network32/H1.irt";
                //@display("p=500,100");
        }
        network32host2: StandardHost {
            parameters:
                routingFile = "network/network32/H2.irt";
                //@display("p=500,300");
        }
        network32host3: StandardHost {
            parameters:
                routingFile = "network/network32/H3.irt";
                //@display("p=500,500");
        }
        network32host4: StandardHost {
            parameters:
                routingFile = "network/network32/H4.irt";
                //@display("p=500,700");
        }
        network32host5: StandardHost {
            parameters:
                routingFile = "network/network32/H5.irt";
                //@display("p=500,900");
        }
        network32host6: StandardHost {
            parameters:
                routingFile = "network/network32/H6.irt";
                //@display("p=500,100");
        }
        network32host7: StandardHost {
            parameters:
                routingFile = "network/network32/H7.irt";
                //@display("p=500,300");
        }
        network32host8: StandardHost {
            parameters:
                routingFile = "network/network32/H8.irt";
                //@display("p=500,500");
        }
        network32host9: StandardHost {
            parameters:
                routingFile = "network/network32/H9.irt";
                //@display("p=500,700");
        }
        network32host10: StandardHost {
            parameters:
                routingFile = "network/network32/H10.irt";
                //@display("p=500,900");
        }
        network32host11: StandardHost {
            parameters:
                routingFile = "network/network32/H11.irt";
                //@display("p=500,100");
        }
        network32host12: StandardHost {
            parameters:
                routingFile = "network/network32/H12.irt";
                //@display("p=500,300");
        }
        network32host13: StandardHost {
            parameters:
                routingFile = "network/network32/H13.irt";
                //@display("p=500,500");
        }
        network32host14: StandardHost {
            parameters:
                routingFile = "network/network32/H14.irt";
                //@display("p=500,700");
        }
        network32host15: StandardHost {
            parameters:
                routingFile = "network/network32/H15.irt";
                //@display("p=500,900");
        }
        network32host16: StandardHost {
            parameters:
                routingFile = "network/network32/H16.irt";
                //@display("p=500,100");
        }
        network32host17: StandardHost {
            parameters:
                routingFile = "network/network32/H17.irt";
                //@display("p=500,300");
        }
        network32host18: StandardHost {
            parameters:
                routingFile = "network/network32/H18.irt";
                //@display("p=500,500");
        }
        network32host19: StandardHost {
            parameters:
                routingFile = "network/network32/H19.irt";
                //@display("p=500,700");
        }
        network32host20: StandardHost {
            parameters:
                routingFile = "network/network32/H20.irt";
                //@display("p=500,900");
        }
        network32host21: StandardHost {
            parameters:
                routingFile = "network/network32/H21.irt";
                //@display("p=500,100");
        }
        network32host22: StandardHost {
            parameters:
                routingFile = "network/network32/H22.irt";
                //@display("p=500,300");
        }
        network32host23: StandardHost {
            parameters:
                routingFile = "network/network32/H23.irt";
                //@display("p=500,500");
        }
        network32host24: StandardHost {
            parameters:
                routingFile = "network/network32/H24.irt";
                //@display("p=500,700");
        }
        network32host25: StandardHost {
            parameters:
                routingFile = "network/network32/H25.irt";
                //@display("p=500,900");
        }
        network32host26: StandardHost {
            parameters:
                routingFile = "network/network32/H26.irt";
                //@display("p=500,100");
        }
        network32host27: StandardHost {
            parameters:
                routingFile = "network/network32/H27.irt";
                //@display("p=500,300");
        }
        network32host28: StandardHost {
            parameters:
                routingFile = "network/network32/H28.irt";
                //@display("p=500,500");
        }
        network32host29: StandardHost {
            parameters:
                routingFile = "network/network32/H29.irt";
                //@display("p=500,700");
        }
        network32host30: StandardHost {
            parameters:
                routingFile = "network/network32/H30.irt";
                //@display("p=500,900");
        }
        network32host31: StandardHost {
            parameters:
                routingFile = "network/network32/H31.irt";
                //@display("p=500,100");
        }
        network32host32: StandardHost {
            parameters:
                routingFile = "network/network32/H32.irt";
                //@display("p=500,300");
        }
        network32host33: StandardHost {
            parameters:
                routingFile = "network/network32/H33.irt";
                //@display("p=500,500");
        }
        network32host34: StandardHost {
            parameters:
                routingFile = "network/network32/H34.irt";
                //@display("p=500,700");
        }
        network32host35: StandardHost {
            parameters:
                routingFile = "network/network32/H35.irt";
                //@display("p=500,900");
        }
        network32host36: StandardHost {
            parameters:
                routingFile = "network/network32/H36.irt";
                //@display("p=500,100");
        }
        network32host37: StandardHost {
            parameters:
                routingFile = "network/network32/H37.irt";
                //@display("p=500,300");
        }
        network32host38: StandardHost {
            parameters:
                routingFile = "network/network32/H38.irt";
                //@display("p=500,500");
        }
        network32host39: StandardHost {
            parameters:
                routingFile = "network/network32/H39.irt";
                //@display("p=500,700");
        }
        network32host40: StandardHost {
            parameters:
                routingFile = "network/network32/H40.irt";
                //@display("p=500,900");
        }

        network33host1: StandardHost {
            parameters:
                routingFile = "network/network33/H1.irt";
                //@display("p=500,100");
        }
        network33host2: StandardHost {
            parameters:
                routingFile = "network/network33/H2.irt";
                //@display("p=500,300");
        }
        network33host3: StandardHost {
            parameters:
                routingFile = "network/network33/H3.irt";
                //@display("p=500,500");
        }
        network33host4: StandardHost {
            parameters:
                routingFile = "network/network33/H4.irt";
                //@display("p=500,700");
        }
        network33host5: StandardHost {
            parameters:
                routingFile = "network/network33/H5.irt";
                //@display("p=500,900");
        }
        network33host6: StandardHost {
            parameters:
                routingFile = "network/network33/H6.irt";
                //@display("p=500,100");
        }
        network33host7: StandardHost {
            parameters:
                routingFile = "network/network33/H7.irt";
                //@display("p=500,300");
        }
        network33host8: StandardHost {
            parameters:
                routingFile = "network/network33/H8.irt";
                //@display("p=500,500");
        }
        network33host9: StandardHost {
            parameters:
                routingFile = "network/network33/H9.irt";
                //@display("p=500,700");
        }
        network33host10: StandardHost {
            parameters:
                routingFile = "network/network33/H10.irt";
                //@display("p=500,900");
        }
        network33host11: StandardHost {
            parameters:
                routingFile = "network/network33/H11.irt";
                //@display("p=500,100");
        }
        network33host12: StandardHost {
            parameters:
                routingFile = "network/network33/H12.irt";
                //@display("p=500,300");
        }
        network33host13: StandardHost {
            parameters:
                routingFile = "network/network33/H13.irt";
                //@display("p=500,500");
        }
        network33host14: StandardHost {
            parameters:
                routingFile = "network/network33/H14.irt";
                //@display("p=500,700");
        }
        network33host15: StandardHost {
            parameters:
                routingFile = "network/network33/H15.irt";
                //@display("p=500,900");
        }
        network33host16: StandardHost {
            parameters:
                routingFile = "network/network33/H16.irt";
                //@display("p=500,100");
        }
        network33host17: StandardHost {
            parameters:
                routingFile = "network/network33/H17.irt";
                //@display("p=500,300");
        }
        network33host18: StandardHost {
            parameters:
                routingFile = "network/network33/H18.irt";
                //@display("p=500,500");
        }
        network33host19: StandardHost {
            parameters:
                routingFile = "network/network33/H19.irt";
                //@display("p=500,700");
        }
        network33host20: StandardHost {
            parameters:
                routingFile = "network/network33/H20.irt";
                //@display("p=500,900");
        }
        network33host21: StandardHost {
            parameters:
                routingFile = "network/network33/H21.irt";
                //@display("p=500,100");
        }
        network33host22: StandardHost {
            parameters:
                routingFile = "network/network33/H22.irt";
                //@display("p=500,300");
        }
        network33host23: StandardHost {
            parameters:
                routingFile = "network/network33/H23.irt";
                //@display("p=500,500");
        }
        network33host24: StandardHost {
            parameters:
                routingFile = "network/network33/H24.irt";
                //@display("p=500,700");
        }
        network33host25: StandardHost {
            parameters:
                routingFile = "network/network33/H25.irt";
                //@display("p=500,900");
        }
        network33host26: StandardHost {
            parameters:
                routingFile = "network/network33/H26.irt";
                //@display("p=500,100");
        }
        network33host27: StandardHost {
            parameters:
                routingFile = "network/network33/H27.irt";
                //@display("p=500,300");
        }
        network33host28: StandardHost {
            parameters:
                routingFile = "network/network33/H28.irt";
                //@display("p=500,500");
        }
        network33host29: StandardHost {
            parameters:
                routingFile = "network/network33/H29.irt";
                //@display("p=500,700");
        }
        network33host30: StandardHost {
            parameters:
                routingFile = "network/network33/H30.irt";
                //@display("p=500,900");
        }
        network33host31: StandardHost {
            parameters:
                routingFile = "network/network33/H31.irt";
                //@display("p=500,100");
        }
        network33host32: StandardHost {
            parameters:
                routingFile = "network/network33/H32.irt";
                //@display("p=500,300");
        }
        network33host33: StandardHost {
            parameters:
                routingFile = "network/network33/H33.irt";
                //@display("p=500,500");
        }
        network33host34: StandardHost {
            parameters:
                routingFile = "network/network33/H34.irt";
                //@display("p=500,700");
        }
        network33host35: StandardHost {
            parameters:
                routingFile = "network/network33/H35.irt";
                //@display("p=500,900");
        }
        network33host36: StandardHost {
            parameters:
                routingFile = "network/network33/H36.irt";
                //@display("p=500,100");
        }
        network33host37: StandardHost {
            parameters:
                routingFile = "network/network33/H37.irt";
                //@display("p=500,300");
        }
        network33host38: StandardHost {
            parameters:
                routingFile = "network/network33/H38.irt";
                //@display("p=500,500");
        }
        network33host39: StandardHost {
            parameters:
                routingFile = "network/network33/H39.irt";
                //@display("p=500,700");
        }
        network33host40: StandardHost {
            parameters:
                routingFile = "network/network33/H40.irt";
                //@display("p=500,900");
        }

        network34host1: StandardHost {
            parameters:
                routingFile = "network/network34/H1.irt";
                //@display("p=500,100");
        }
        network34host2: StandardHost {
            parameters:
                routingFile = "network/network34/H2.irt";
                //@display("p=500,300");
        }
        network34host3: StandardHost {
            parameters:
                routingFile = "network/network34/H3.irt";
                //@display("p=500,500");
        }
        network34host4: StandardHost {
            parameters:
                routingFile = "network/network34/H4.irt";
                //@display("p=500,700");
        }
        network34host5: StandardHost {
            parameters:
                routingFile = "network/network34/H5.irt";
                //@display("p=500,900");
        }
        network34host6: StandardHost {
            parameters:
                routingFile = "network/network34/H6.irt";
                //@display("p=500,100");
        }
        network34host7: StandardHost {
            parameters:
                routingFile = "network/network34/H7.irt";
                //@display("p=500,300");
        }
        network34host8: StandardHost {
            parameters:
                routingFile = "network/network34/H8.irt";
                //@display("p=500,500");
        }
        network34host9: StandardHost {
            parameters:
                routingFile = "network/network34/H9.irt";
                //@display("p=500,700");
        }
        network34host10: StandardHost {
            parameters:
                routingFile = "network/network34/H10.irt";
                //@display("p=500,900");
        }
        network34host11: StandardHost {
            parameters:
                routingFile = "network/network34/H11.irt";
                //@display("p=500,100");
        }
        network34host12: StandardHost {
            parameters:
                routingFile = "network/network34/H12.irt";
                //@display("p=500,300");
        }
        network34host13: StandardHost {
            parameters:
                routingFile = "network/network34/H13.irt";
                //@display("p=500,500");
        }
        network34host14: StandardHost {
            parameters:
                routingFile = "network/network34/H14.irt";
                //@display("p=500,700");
        }
        network34host15: StandardHost {
            parameters:
                routingFile = "network/network34/H15.irt";
                //@display("p=500,900");
        }
        network34host16: StandardHost {
            parameters:
                routingFile = "network/network34/H16.irt";
                //@display("p=500,100");
        }
        network34host17: StandardHost {
            parameters:
                routingFile = "network/network34/H17.irt";
                //@display("p=500,300");
        }
        network34host18: StandardHost {
            parameters:
                routingFile = "network/network34/H18.irt";
                //@display("p=500,500");
        }
        network34host19: StandardHost {
            parameters:
                routingFile = "network/network34/H19.irt";
                //@display("p=500,700");
        }
        network34host20: StandardHost {
            parameters:
                routingFile = "network/network34/H20.irt";
                //@display("p=500,900");
        }
        network34host21: StandardHost {
            parameters:
                routingFile = "network/network34/H21.irt";
                //@display("p=500,100");
        }
        network34host22: StandardHost {
            parameters:
                routingFile = "network/network34/H22.irt";
                //@display("p=500,300");
        }
        network34host23: StandardHost {
            parameters:
                routingFile = "network/network34/H23.irt";
                //@display("p=500,500");
        }
        network34host24: StandardHost {
            parameters:
                routingFile = "network/network34/H24.irt";
                //@display("p=500,700");
        }
        network34host25: StandardHost {
            parameters:
                routingFile = "network/network34/H25.irt";
                //@display("p=500,900");
        }
        network34host26: StandardHost {
            parameters:
                routingFile = "network/network34/H26.irt";
                //@display("p=500,100");
        }
        network34host27: StandardHost {
            parameters:
                routingFile = "network/network34/H27.irt";
                //@display("p=500,300");
        }
        network34host28: StandardHost {
            parameters:
                routingFile = "network/network34/H28.irt";
                //@display("p=500,500");
        }
        network34host29: StandardHost {
            parameters:
                routingFile = "network/network34/H29.irt";
                //@display("p=500,700");
        }
        network34host30: StandardHost {
            parameters:
                routingFile = "network/network34/H30.irt";
                //@display("p=500,900");
        }
        network34host31: StandardHost {
            parameters:
                routingFile = "network/network34/H31.irt";
                //@display("p=500,100");
        }
        network34host32: StandardHost {
            parameters:
                routingFile = "network/network34/H32.irt";
                //@display("p=500,300");
        }
        network34host33: StandardHost {
            parameters:
                routingFile = "network/network34/H33.irt";
                //@display("p=500,500");
        }
        network34host34: StandardHost {
            parameters:
                routingFile = "network/network34/H34.irt";
                //@display("p=500,700");
        }
        network34host35: StandardHost {
            parameters:
                routingFile = "network/network34/H35.irt";
                //@display("p=500,900");
        }
        network34host36: StandardHost {
            parameters:
                routingFile = "network/network34/H36.irt";
                //@display("p=500,100");
        }
        network34host37: StandardHost {
            parameters:
                routingFile = "network/network34/H37.irt";
                //@display("p=500,300");
        }
        network34host38: StandardHost {
            parameters:
                routingFile = "network/network34/H38.irt";
                //@display("p=500,500");
        }
        network34host39: StandardHost {
            parameters:
                routingFile = "network/network34/H39.irt";
                //@display("p=500,700");
        }
        network34host40: StandardHost {
            parameters:
                routingFile = "network/network34/H40.irt";
                //@display("p=500,900");
        }

        network35host1: StandardHost {
            parameters:
                routingFile = "network/network35/H1.irt";
                //@display("p=500,100");
        }
        network35host2: StandardHost {
            parameters:
                routingFile = "network/network35/H2.irt";
                //@display("p=500,300");
        }
        network35host3: StandardHost {
            parameters:
                routingFile = "network/network35/H3.irt";
                //@display("p=500,500");
        }
        network35host4: StandardHost {
            parameters:
                routingFile = "network/network35/H4.irt";
                //@display("p=500,700");
        }
        network35host5: StandardHost {
            parameters:
                routingFile = "network/network35/H5.irt";
                //@display("p=500,900");
        }
        network35host6: StandardHost {
            parameters:
                routingFile = "network/network35/H6.irt";
                //@display("p=500,100");
        }
        network35host7: StandardHost {
            parameters:
                routingFile = "network/network35/H7.irt";
                //@display("p=500,300");
        }
        network35host8: StandardHost {
            parameters:
                routingFile = "network/network35/H8.irt";
                //@display("p=500,500");
        }
        network35host9: StandardHost {
            parameters:
                routingFile = "network/network35/H9.irt";
                //@display("p=500,700");
        }
        network35host10: StandardHost {
            parameters:
                routingFile = "network/network35/H10.irt";
                //@display("p=500,900");
        }
        network35host11: StandardHost {
            parameters:
                routingFile = "network/network35/H11.irt";
                //@display("p=500,100");
        }
        network35host12: StandardHost {
            parameters:
                routingFile = "network/network35/H12.irt";
                //@display("p=500,300");
        }
        network35host13: StandardHost {
            parameters:
                routingFile = "network/network35/H13.irt";
                //@display("p=500,500");
        }
        network35host14: StandardHost {
            parameters:
                routingFile = "network/network35/H14.irt";
                //@display("p=500,700");
        }
        network35host15: StandardHost {
            parameters:
                routingFile = "network/network35/H15.irt";
                //@display("p=500,900");
        }
        network35host16: StandardHost {
            parameters:
                routingFile = "network/network35/H16.irt";
                //@display("p=500,100");
        }
        network35host17: StandardHost {
            parameters:
                routingFile = "network/network35/H17.irt";
                //@display("p=500,300");
        }
        network35host18: StandardHost {
            parameters:
                routingFile = "network/network35/H18.irt";
                //@display("p=500,500");
        }
        network35host19: StandardHost {
            parameters:
                routingFile = "network/network35/H19.irt";
                //@display("p=500,700");
        }
        network35host20: StandardHost {
            parameters:
                routingFile = "network/network35/H20.irt";
                //@display("p=500,900");
        }
        network35host21: StandardHost {
            parameters:
                routingFile = "network/network35/H21.irt";
                //@display("p=500,100");
        }
        network35host22: StandardHost {
            parameters:
                routingFile = "network/network35/H22.irt";
                //@display("p=500,300");
        }
        network35host23: StandardHost {
            parameters:
                routingFile = "network/network35/H23.irt";
                //@display("p=500,500");
        }
        network35host24: StandardHost {
            parameters:
                routingFile = "network/network35/H24.irt";
                //@display("p=500,700");
        }
        network35host25: StandardHost {
            parameters:
                routingFile = "network/network35/H25.irt";
                //@display("p=500,900");
        }
        network35host26: StandardHost {
            parameters:
                routingFile = "network/network35/H26.irt";
                //@display("p=500,100");
        }
        network35host27: StandardHost {
            parameters:
                routingFile = "network/network35/H27.irt";
                //@display("p=500,300");
        }
        network35host28: StandardHost {
            parameters:
                routingFile = "network/network35/H28.irt";
                //@display("p=500,500");
        }
        network35host29: StandardHost {
            parameters:
                routingFile = "network/network35/H29.irt";
                //@display("p=500,700");
        }
        network35host30: StandardHost {
            parameters:
                routingFile = "network/network35/H30.irt";
                //@display("p=500,900");
        }
        network35host31: StandardHost {
            parameters:
                routingFile = "network/network35/H31.irt";
                //@display("p=500,100");
        }
        network35host32: StandardHost {
            parameters:
                routingFile = "network/network35/H32.irt";
                //@display("p=500,300");
        }
        network35host33: StandardHost {
            parameters:
                routingFile = "network/network35/H33.irt";
                //@display("p=500,500");
        }
        network35host34: StandardHost {
            parameters:
                routingFile = "network/network35/H34.irt";
                //@display("p=500,700");
        }
        network35host35: StandardHost {
            parameters:
                routingFile = "network/network35/H35.irt";
                //@display("p=500,900");
        }
        network35host36: StandardHost {
            parameters:
                routingFile = "network/network35/H36.irt";
                //@display("p=500,100");
        }
        network35host37: StandardHost {
            parameters:
                routingFile = "network/network35/H37.irt";
                //@display("p=500,300");
        }
        network35host38: StandardHost {
            parameters:
                routingFile = "network/network35/H38.irt";
                //@display("p=500,500");
        }
        network35host39: StandardHost {
            parameters:
                routingFile = "network/network35/H39.irt";
                //@display("p=500,700");
        }
        network35host40: StandardHost {
            parameters:
                routingFile = "network/network35/H40.irt";
                //@display("p=500,900");
        }

        network36host1: StandardHost {
            parameters:
                routingFile = "network/network36/H1.irt";
                //@display("p=500,100");
        }
        network36host2: StandardHost {
            parameters:
                routingFile = "network/network36/H2.irt";
                //@display("p=500,300");
        }
        network36host3: StandardHost {
            parameters:
                routingFile = "network/network36/H3.irt";
                //@display("p=500,500");
        }
        network36host4: StandardHost {
            parameters:
                routingFile = "network/network36/H4.irt";
                //@display("p=500,700");
        }
        network36host5: StandardHost {
            parameters:
                routingFile = "network/network36/H5.irt";
                //@display("p=500,900");
        }
        network36host6: StandardHost {
            parameters:
                routingFile = "network/network36/H6.irt";
                //@display("p=500,100");
        }
        network36host7: StandardHost {
            parameters:
                routingFile = "network/network36/H7.irt";
                //@display("p=500,300");
        }
        network36host8: StandardHost {
            parameters:
                routingFile = "network/network36/H8.irt";
                //@display("p=500,500");
        }
        network36host9: StandardHost {
            parameters:
                routingFile = "network/network36/H9.irt";
                //@display("p=500,700");
        }
        network36host10: StandardHost {
            parameters:
                routingFile = "network/network36/H10.irt";
                //@display("p=500,900");
        }
        network36host11: StandardHost {
            parameters:
                routingFile = "network/network36/H11.irt";
                //@display("p=500,100");
        }
        network36host12: StandardHost {
            parameters:
                routingFile = "network/network36/H12.irt";
                //@display("p=500,300");
        }
        network36host13: StandardHost {
            parameters:
                routingFile = "network/network36/H13.irt";
                //@display("p=500,500");
        }
        network36host14: StandardHost {
            parameters:
                routingFile = "network/network36/H14.irt";
                //@display("p=500,700");
        }
        network36host15: StandardHost {
            parameters:
                routingFile = "network/network36/H15.irt";
                //@display("p=500,900");
        }
        network36host16: StandardHost {
            parameters:
                routingFile = "network/network36/H16.irt";
                //@display("p=500,100");
        }
        network36host17: StandardHost {
            parameters:
                routingFile = "network/network36/H17.irt";
                //@display("p=500,300");
        }
        network36host18: StandardHost {
            parameters:
                routingFile = "network/network36/H18.irt";
                //@display("p=500,500");
        }
        network36host19: StandardHost {
            parameters:
                routingFile = "network/network36/H19.irt";
                //@display("p=500,700");
        }
        network36host20: StandardHost {
            parameters:
                routingFile = "network/network36/H20.irt";
                //@display("p=500,900");
        }
        network36host21: StandardHost {
            parameters:
                routingFile = "network/network36/H21.irt";
                //@display("p=500,100");
        }
        network36host22: StandardHost {
            parameters:
                routingFile = "network/network36/H22.irt";
                //@display("p=500,300");
        }
        network36host23: StandardHost {
            parameters:
                routingFile = "network/network36/H23.irt";
                //@display("p=500,500");
        }
        network36host24: StandardHost {
            parameters:
                routingFile = "network/network36/H24.irt";
                //@display("p=500,700");
        }
        network36host25: StandardHost {
            parameters:
                routingFile = "network/network36/H25.irt";
                //@display("p=500,900");
        }
        network36host26: StandardHost {
            parameters:
                routingFile = "network/network36/H26.irt";
                //@display("p=500,100");
        }
        network36host27: StandardHost {
            parameters:
                routingFile = "network/network36/H27.irt";
                //@display("p=500,300");
        }
        network36host28: StandardHost {
            parameters:
                routingFile = "network/network36/H28.irt";
                //@display("p=500,500");
        }
        network36host29: StandardHost {
            parameters:
                routingFile = "network/network36/H29.irt";
                //@display("p=500,700");
        }
        network36host30: StandardHost {
            parameters:
                routingFile = "network/network36/H30.irt";
                //@display("p=500,900");
        }
        network36host31: StandardHost {
            parameters:
                routingFile = "network/network36/H31.irt";
                //@display("p=500,100");
        }
        network36host32: StandardHost {
            parameters:
                routingFile = "network/network36/H32.irt";
                //@display("p=500,300");
        }
        network36host33: StandardHost {
            parameters:
                routingFile = "network/network36/H33.irt";
                //@display("p=500,500");
        }
        network36host34: StandardHost {
            parameters:
                routingFile = "network/network36/H34.irt";
                //@display("p=500,700");
        }
        network36host35: StandardHost {
            parameters:
                routingFile = "network/network36/H35.irt";
                //@display("p=500,900");
        }
        network36host36: StandardHost {
            parameters:
                routingFile = "network/network36/H36.irt";
                //@display("p=500,100");
        }
        network36host37: StandardHost {
            parameters:
                routingFile = "network/network36/H37.irt";
                //@display("p=500,300");
        }
        network36host38: StandardHost {
            parameters:
                routingFile = "network/network36/H38.irt";
                //@display("p=500,500");
        }
        network36host39: StandardHost {
            parameters:
                routingFile = "network/network36/H39.irt";
                //@display("p=500,700");
        }
        network36host40: StandardHost {
            parameters:
                routingFile = "network/network36/H40.irt";
                //@display("p=500,900");
        }

        network37host1: StandardHost {
            parameters:
                routingFile = "network/network37/H1.irt";
                //@display("p=500,100");
        }
        network37host2: StandardHost {
            parameters:
                routingFile = "network/network37/H2.irt";
                //@display("p=500,300");
        }
        network37host3: StandardHost {
            parameters:
                routingFile = "network/network37/H3.irt";
                //@display("p=500,500");
        }
        network37host4: StandardHost {
            parameters:
                routingFile = "network/network37/H4.irt";
                //@display("p=500,700");
        }
        network37host5: StandardHost {
            parameters:
                routingFile = "network/network37/H5.irt";
                //@display("p=500,900");
        }
        network37host6: StandardHost {
            parameters:
                routingFile = "network/network37/H6.irt";
                //@display("p=500,100");
        }
        network37host7: StandardHost {
            parameters:
                routingFile = "network/network37/H7.irt";
                //@display("p=500,300");
        }
        network37host8: StandardHost {
            parameters:
                routingFile = "network/network37/H8.irt";
                //@display("p=500,500");
        }
        network37host9: StandardHost {
            parameters:
                routingFile = "network/network37/H9.irt";
                //@display("p=500,700");
        }
        network37host10: StandardHost {
            parameters:
                routingFile = "network/network37/H10.irt";
                //@display("p=500,900");
        }
        network37host11: StandardHost {
            parameters:
                routingFile = "network/network37/H11.irt";
                //@display("p=500,100");
        }
        network37host12: StandardHost {
            parameters:
                routingFile = "network/network37/H12.irt";
                //@display("p=500,300");
        }
        network37host13: StandardHost {
            parameters:
                routingFile = "network/network37/H13.irt";
                //@display("p=500,500");
        }
        network37host14: StandardHost {
            parameters:
                routingFile = "network/network37/H14.irt";
                //@display("p=500,700");
        }
        network37host15: StandardHost {
            parameters:
                routingFile = "network/network37/H15.irt";
                //@display("p=500,900");
        }
        network37host16: StandardHost {
            parameters:
                routingFile = "network/network37/H16.irt";
                //@display("p=500,100");
        }
        network37host17: StandardHost {
            parameters:
                routingFile = "network/network37/H17.irt";
                //@display("p=500,300");
        }
        network37host18: StandardHost {
            parameters:
                routingFile = "network/network37/H18.irt";
                //@display("p=500,500");
        }
        network37host19: StandardHost {
            parameters:
                routingFile = "network/network37/H19.irt";
                //@display("p=500,700");
        }
        network37host20: StandardHost {
            parameters:
                routingFile = "network/network37/H20.irt";
                //@display("p=500,900");
        }
        network37host21: StandardHost {
            parameters:
                routingFile = "network/network37/H21.irt";
                //@display("p=500,100");
        }
        network37host22: StandardHost {
            parameters:
                routingFile = "network/network37/H22.irt";
                //@display("p=500,300");
        }
        network37host23: StandardHost {
            parameters:
                routingFile = "network/network37/H23.irt";
                //@display("p=500,500");
        }
        network37host24: StandardHost {
            parameters:
                routingFile = "network/network37/H24.irt";
                //@display("p=500,700");
        }
        network37host25: StandardHost {
            parameters:
                routingFile = "network/network37/H25.irt";
                //@display("p=500,900");
        }
        network37host26: StandardHost {
            parameters:
                routingFile = "network/network37/H26.irt";
                //@display("p=500,100");
        }
        network37host27: StandardHost {
            parameters:
                routingFile = "network/network37/H27.irt";
                //@display("p=500,300");
        }
        network37host28: StandardHost {
            parameters:
                routingFile = "network/network37/H28.irt";
                //@display("p=500,500");
        }
        network37host29: StandardHost {
            parameters:
                routingFile = "network/network37/H29.irt";
                //@display("p=500,700");
        }
        network37host30: StandardHost {
            parameters:
                routingFile = "network/network37/H30.irt";
                //@display("p=500,900");
        }
        network37host31: StandardHost {
            parameters:
                routingFile = "network/network37/H31.irt";
                //@display("p=500,100");
        }
        network37host32: StandardHost {
            parameters:
                routingFile = "network/network37/H32.irt";
                //@display("p=500,300");
        }
        network37host33: StandardHost {
            parameters:
                routingFile = "network/network37/H33.irt";
                //@display("p=500,500");
        }
        network37host34: StandardHost {
            parameters:
                routingFile = "network/network37/H34.irt";
                //@display("p=500,700");
        }
        network37host35: StandardHost {
            parameters:
                routingFile = "network/network37/H35.irt";
                //@display("p=500,900");
        }
        network37host36: StandardHost {
            parameters:
                routingFile = "network/network37/H36.irt";
                //@display("p=500,100");
        }
        network37host37: StandardHost {
            parameters:
                routingFile = "network/network37/H37.irt";
                //@display("p=500,300");
        }
        network37host38: StandardHost {
            parameters:
                routingFile = "network/network37/H38.irt";
                //@display("p=500,500");
        }
        network37host39: StandardHost {
            parameters:
                routingFile = "network/network37/H39.irt";
                //@display("p=500,700");
        }
        network37host40: StandardHost {
            parameters:
                routingFile = "network/network37/H40.irt";
                //@display("p=500,900");
        }

        network38host1: StandardHost {
            parameters:
                routingFile = "network/network38/H1.irt";
                //@display("p=500,100");
        }
        network38host2: StandardHost {
            parameters:
                routingFile = "network/network38/H2.irt";
                //@display("p=500,300");
        }
        network38host3: StandardHost {
            parameters:
                routingFile = "network/network38/H3.irt";
                //@display("p=500,500");
        }
        network38host4: StandardHost {
            parameters:
                routingFile = "network/network38/H4.irt";
                //@display("p=500,700");
        }
        network38host5: StandardHost {
            parameters:
                routingFile = "network/network38/H5.irt";
                //@display("p=500,900");
        }
        network38host6: StandardHost {
            parameters:
                routingFile = "network/network38/H6.irt";
                //@display("p=500,100");
        }
        network38host7: StandardHost {
            parameters:
                routingFile = "network/network38/H7.irt";
                //@display("p=500,300");
        }
        network38host8: StandardHost {
            parameters:
                routingFile = "network/network38/H8.irt";
                //@display("p=500,500");
        }
        network38host9: StandardHost {
            parameters:
                routingFile = "network/network38/H9.irt";
                //@display("p=500,700");
        }
        network38host10: StandardHost {
            parameters:
                routingFile = "network/network38/H10.irt";
                //@display("p=500,900");
        }
        network38host11: StandardHost {
            parameters:
                routingFile = "network/network38/H11.irt";
                //@display("p=500,100");
        }
        network38host12: StandardHost {
            parameters:
                routingFile = "network/network38/H12.irt";
                //@display("p=500,300");
        }
        network38host13: StandardHost {
            parameters:
                routingFile = "network/network38/H13.irt";
                //@display("p=500,500");
        }
        network38host14: StandardHost {
            parameters:
                routingFile = "network/network38/H14.irt";
                //@display("p=500,700");
        }
        network38host15: StandardHost {
            parameters:
                routingFile = "network/network38/H15.irt";
                //@display("p=500,900");
        }
        network38host16: StandardHost {
            parameters:
                routingFile = "network/network38/H16.irt";
                //@display("p=500,100");
        }
        network38host17: StandardHost {
            parameters:
                routingFile = "network/network38/H17.irt";
                //@display("p=500,300");
        }
        network38host18: StandardHost {
            parameters:
                routingFile = "network/network38/H18.irt";
                //@display("p=500,500");
        }
        network38host19: StandardHost {
            parameters:
                routingFile = "network/network38/H19.irt";
                //@display("p=500,700");
        }
        network38host20: StandardHost {
            parameters:
                routingFile = "network/network38/H20.irt";
                //@display("p=500,900");
        }
        network38host21: StandardHost {
            parameters:
                routingFile = "network/network38/H21.irt";
                //@display("p=500,100");
        }
        network38host22: StandardHost {
            parameters:
                routingFile = "network/network38/H22.irt";
                //@display("p=500,300");
        }
        network38host23: StandardHost {
            parameters:
                routingFile = "network/network38/H23.irt";
                //@display("p=500,500");
        }
        network38host24: StandardHost {
            parameters:
                routingFile = "network/network38/H24.irt";
                //@display("p=500,700");
        }
        network38host25: StandardHost {
            parameters:
                routingFile = "network/network38/H25.irt";
                //@display("p=500,900");
        }
        network38host26: StandardHost {
            parameters:
                routingFile = "network/network38/H26.irt";
                //@display("p=500,100");
        }
        network38host27: StandardHost {
            parameters:
                routingFile = "network/network38/H27.irt";
                //@display("p=500,300");
        }
        network38host28: StandardHost {
            parameters:
                routingFile = "network/network38/H28.irt";
                //@display("p=500,500");
        }
        network38host29: StandardHost {
            parameters:
                routingFile = "network/network38/H29.irt";
                //@display("p=500,700");
        }
        network38host30: StandardHost {
            parameters:
                routingFile = "network/network38/H30.irt";
                //@display("p=500,900");
        }
        network38host31: StandardHost {
            parameters:
                routingFile = "network/network38/H31.irt";
                //@display("p=500,100");
        }
        network38host32: StandardHost {
            parameters:
                routingFile = "network/network38/H32.irt";
                //@display("p=500,300");
        }
        network38host33: StandardHost {
            parameters:
                routingFile = "network/network38/H33.irt";
                //@display("p=500,500");
        }
        network38host34: StandardHost {
            parameters:
                routingFile = "network/network38/H34.irt";
                //@display("p=500,700");
        }
        network38host35: StandardHost {
            parameters:
                routingFile = "network/network38/H35.irt";
                //@display("p=500,900");
        }
        network38host36: StandardHost {
            parameters:
                routingFile = "network/network38/H36.irt";
                //@display("p=500,100");
        }
        network38host37: StandardHost {
            parameters:
                routingFile = "network/network38/H37.irt";
                //@display("p=500,300");
        }
        network38host38: StandardHost {
            parameters:
                routingFile = "network/network38/H38.irt";
                //@display("p=500,500");
        }
        network38host39: StandardHost {
            parameters:
                routingFile = "network/network38/H39.irt";
                //@display("p=500,700");
        }
        network38host40: StandardHost {
            parameters:
                routingFile = "network/network38/H40.irt";
                //@display("p=500,900");
        }

        network39host1: StandardHost {
            parameters:
                routingFile = "network/network39/H1.irt";
                //@display("p=500,100");
        }
        network39host2: StandardHost {
            parameters:
                routingFile = "network/network39/H2.irt";
                //@display("p=500,300");
        }
        network39host3: StandardHost {
            parameters:
                routingFile = "network/network39/H3.irt";
                //@display("p=500,500");
        }
        network39host4: StandardHost {
            parameters:
                routingFile = "network/network39/H4.irt";
                //@display("p=500,700");
        }
        network39host5: StandardHost {
            parameters:
                routingFile = "network/network39/H5.irt";
                //@display("p=500,900");
        }
        network39host6: StandardHost {
            parameters:
                routingFile = "network/network39/H6.irt";
                //@display("p=500,100");
        }
        network39host7: StandardHost {
            parameters:
                routingFile = "network/network39/H7.irt";
                //@display("p=500,300");
        }
        network39host8: StandardHost {
            parameters:
                routingFile = "network/network39/H8.irt";
                //@display("p=500,500");
        }
        network39host9: StandardHost {
            parameters:
                routingFile = "network/network39/H9.irt";
                //@display("p=500,700");
        }
        network39host10: StandardHost {
            parameters:
                routingFile = "network/network39/H10.irt";
                //@display("p=500,900");
        }
        network39host11: StandardHost {
            parameters:
                routingFile = "network/network39/H11.irt";
                //@display("p=500,100");
        }
        network39host12: StandardHost {
            parameters:
                routingFile = "network/network39/H12.irt";
                //@display("p=500,300");
        }
        network39host13: StandardHost {
            parameters:
                routingFile = "network/network39/H13.irt";
                //@display("p=500,500");
        }
        network39host14: StandardHost {
            parameters:
                routingFile = "network/network39/H14.irt";
                //@display("p=500,700");
        }
        network39host15: StandardHost {
            parameters:
                routingFile = "network/network39/H15.irt";
                //@display("p=500,900");
        }
        network39host16: StandardHost {
            parameters:
                routingFile = "network/network39/H16.irt";
                //@display("p=500,100");
        }
        network39host17: StandardHost {
            parameters:
                routingFile = "network/network39/H17.irt";
                //@display("p=500,300");
        }
        network39host18: StandardHost {
            parameters:
                routingFile = "network/network39/H18.irt";
                //@display("p=500,500");
        }
        network39host19: StandardHost {
            parameters:
                routingFile = "network/network39/H19.irt";
                //@display("p=500,700");
        }
        network39host20: StandardHost {
            parameters:
                routingFile = "network/network39/H20.irt";
                //@display("p=500,900");
        }
        network39host21: StandardHost {
            parameters:
                routingFile = "network/network39/H21.irt";
                //@display("p=500,100");
        }
        network39host22: StandardHost {
            parameters:
                routingFile = "network/network39/H22.irt";
                //@display("p=500,300");
        }
        network39host23: StandardHost {
            parameters:
                routingFile = "network/network39/H23.irt";
                //@display("p=500,500");
        }
        network39host24: StandardHost {
            parameters:
                routingFile = "network/network39/H24.irt";
                //@display("p=500,700");
        }
        network39host25: StandardHost {
            parameters:
                routingFile = "network/network39/H25.irt";
                //@display("p=500,900");
        }
        network39host26: StandardHost {
            parameters:
                routingFile = "network/network39/H26.irt";
                //@display("p=500,100");
        }
        network39host27: StandardHost {
            parameters:
                routingFile = "network/network39/H27.irt";
                //@display("p=500,300");
        }
        network39host28: StandardHost {
            parameters:
                routingFile = "network/network39/H28.irt";
                //@display("p=500,500");
        }
        network39host29: StandardHost {
            parameters:
                routingFile = "network/network39/H29.irt";
                //@display("p=500,700");
        }
        network39host30: StandardHost {
            parameters:
                routingFile = "network/network39/H30.irt";
                //@display("p=500,900");
        }
        network39host31: StandardHost {
            parameters:
                routingFile = "network/network39/H31.irt";
                //@display("p=500,100");
        }
        network39host32: StandardHost {
            parameters:
                routingFile = "network/network39/H32.irt";
                //@display("p=500,300");
        }
        network39host33: StandardHost {
            parameters:
                routingFile = "network/network39/H33.irt";
                //@display("p=500,500");
        }
        network39host34: StandardHost {
            parameters:
                routingFile = "network/network39/H34.irt";
                //@display("p=500,700");
        }
        network39host35: StandardHost {
            parameters:
                routingFile = "network/network39/H35.irt";
                //@display("p=500,900");
        }
        network39host36: StandardHost {
            parameters:
                routingFile = "network/network39/H36.irt";
                //@display("p=500,100");
        }
        network39host37: StandardHost {
            parameters:
                routingFile = "network/network39/H37.irt";
                //@display("p=500,300");
        }
        network39host38: StandardHost {
            parameters:
                routingFile = "network/network39/H38.irt";
                //@display("p=500,500");
        }
        network39host39: StandardHost {
            parameters:
                routingFile = "network/network39/H39.irt";
                //@display("p=500,700");
        }
        network39host40: StandardHost {
            parameters:
                routingFile = "network/network39/H40.irt";
                //@display("p=500,900");
        }

        network40host1: StandardHost {
            parameters:
                routingFile = "network/network40/H1.irt";
                //@display("p=500,100");
        }
        network40host2: StandardHost {
            parameters:
                routingFile = "network/network40/H2.irt";
                //@display("p=500,300");
        }
        network40host3: StandardHost {
            parameters:
                routingFile = "network/network40/H3.irt";
                //@display("p=500,500");
        }
        network40host4: StandardHost {
            parameters:
                routingFile = "network/network40/H4.irt";
                //@display("p=500,700");
        }
        network40host5: StandardHost {
            parameters:
                routingFile = "network/network40/H5.irt";
                //@display("p=500,900");
        }
        network40host6: StandardHost {
            parameters:
                routingFile = "network/network40/H6.irt";
                //@display("p=500,100");
        }
        network40host7: StandardHost {
            parameters:
                routingFile = "network/network40/H7.irt";
                //@display("p=500,300");
        }
        network40host8: StandardHost {
            parameters:
                routingFile = "network/network40/H8.irt";
                //@display("p=500,500");
        }
        network40host9: StandardHost {
            parameters:
                routingFile = "network/network40/H9.irt";
                //@display("p=500,700");
        }
        network40host10: StandardHost {
            parameters:
                routingFile = "network/network40/H10.irt";
                //@display("p=500,900");
        }
        network40host11: StandardHost {
            parameters:
                routingFile = "network/network40/H11.irt";
                //@display("p=500,100");
        }
        network40host12: StandardHost {
            parameters:
                routingFile = "network/network40/H12.irt";
                //@display("p=500,300");
        }
        network40host13: StandardHost {
            parameters:
                routingFile = "network/network40/H13.irt";
                //@display("p=500,500");
        }
        network40host14: StandardHost {
            parameters:
                routingFile = "network/network40/H14.irt";
                //@display("p=500,700");
        }
        network40host15: StandardHost {
            parameters:
                routingFile = "network/network40/H15.irt";
                //@display("p=500,900");
        }
        network40host16: StandardHost {
            parameters:
                routingFile = "network/network40/H16.irt";
                //@display("p=500,100");
        }
        network40host17: StandardHost {
            parameters:
                routingFile = "network/network40/H17.irt";
                //@display("p=500,300");
        }
        network40host18: StandardHost {
            parameters:
                routingFile = "network/network40/H18.irt";
                //@display("p=500,500");
        }
        network40host19: StandardHost {
            parameters:
                routingFile = "network/network40/H19.irt";
                //@display("p=500,700");
        }
        network40host20: StandardHost {
            parameters:
                routingFile = "network/network40/H20.irt";
                //@display("p=500,900");
        }
        network40host21: StandardHost {
            parameters:
                routingFile = "network/network40/H21.irt";
                //@display("p=500,100");
        }
        network40host22: StandardHost {
            parameters:
                routingFile = "network/network40/H22.irt";
                //@display("p=500,300");
        }
        network40host23: StandardHost {
            parameters:
                routingFile = "network/network40/H23.irt";
                //@display("p=500,500");
        }
        network40host24: StandardHost {
            parameters:
                routingFile = "network/network40/H24.irt";
                //@display("p=500,700");
        }
        network40host25: StandardHost {
            parameters:
                routingFile = "network/network40/H25.irt";
                //@display("p=500,900");
        }
        network40host26: StandardHost {
            parameters:
                routingFile = "network/network40/H26.irt";
                //@display("p=500,100");
        }
        network40host27: StandardHost {
            parameters:
                routingFile = "network/network40/H27.irt";
                //@display("p=500,300");
        }
        network40host28: StandardHost {
            parameters:
                routingFile = "network/network40/H28.irt";
                //@display("p=500,500");
        }
        network40host29: StandardHost {
            parameters:
                routingFile = "network/network40/H29.irt";
                //@display("p=500,700");
        }
        network40host30: StandardHost {
            parameters:
                routingFile = "network/network40/H30.irt";
                //@display("p=500,900");
        }
        network40host31: StandardHost {
            parameters:
                routingFile = "network/network40/H31.irt";
                //@display("p=500,100");
        }
        network40host32: StandardHost {
            parameters:
                routingFile = "network/network40/H32.irt";
                //@display("p=500,300");
        }
        network40host33: StandardHost {
            parameters:
                routingFile = "network/network40/H33.irt";
                //@display("p=500,500");
        }
        network40host34: StandardHost {
            parameters:
                routingFile = "network/network40/H34.irt";
                //@display("p=500,700");
        }
        network40host35: StandardHost {
            parameters:
                routingFile = "network/network40/H35.irt";
                //@display("p=500,900");
        }
        network40host36: StandardHost {
            parameters:
                routingFile = "network/network40/H36.irt";
                //@display("p=500,100");
        }
        network40host37: StandardHost {
            parameters:
                routingFile = "network/network40/H37.irt";
                //@display("p=500,300");
        }
        network40host38: StandardHost {
            parameters:
                routingFile = "network/network40/H38.irt";
                //@display("p=500,500");
        }
        network40host39: StandardHost {
            parameters:
                routingFile = "network/network40/H39.irt";
                //@display("p=500,700");
        }
        network40host40: StandardHost {
            parameters:
                routingFile = "network/network40/H40.irt";
                //@display("p=500,900");
        }

        network41host1: StandardHost {
            parameters:
                routingFile = "network/network41/H1.irt";
                //@display("p=500,100");
        }
        network41host2: StandardHost {
            parameters:
                routingFile = "network/network41/H2.irt";
                //@display("p=500,300");
        }
        network41host3: StandardHost {
            parameters:
                routingFile = "network/network41/H3.irt";
                //@display("p=500,500");
        }
        network41host4: StandardHost {
            parameters:
                routingFile = "network/network41/H4.irt";
                //@display("p=500,700");
        }
        network41host5: StandardHost {
            parameters:
                routingFile = "network/network41/H5.irt";
                //@display("p=500,900");
        }
        network41host6: StandardHost {
            parameters:
                routingFile = "network/network41/H6.irt";
                //@display("p=500,100");
        }
        network41host7: StandardHost {
            parameters:
                routingFile = "network/network41/H7.irt";
                //@display("p=500,300");
        }
        network41host8: StandardHost {
            parameters:
                routingFile = "network/network41/H8.irt";
                //@display("p=500,500");
        }
        network41host9: StandardHost {
            parameters:
                routingFile = "network/network41/H9.irt";
                //@display("p=500,700");
        }
        network41host10: StandardHost {
            parameters:
                routingFile = "network/network41/H10.irt";
                //@display("p=500,900");
        }
        network41host11: StandardHost {
            parameters:
                routingFile = "network/network41/H11.irt";
                //@display("p=500,100");
        }
        network41host12: StandardHost {
            parameters:
                routingFile = "network/network41/H12.irt";
                //@display("p=500,300");
        }
        network41host13: StandardHost {
            parameters:
                routingFile = "network/network41/H13.irt";
                //@display("p=500,500");
        }
        network41host14: StandardHost {
            parameters:
                routingFile = "network/network41/H14.irt";
                //@display("p=500,700");
        }
        network41host15: StandardHost {
            parameters:
                routingFile = "network/network41/H15.irt";
                //@display("p=500,900");
        }
        network41host16: StandardHost {
            parameters:
                routingFile = "network/network41/H16.irt";
                //@display("p=500,100");
        }
        network41host17: StandardHost {
            parameters:
                routingFile = "network/network41/H17.irt";
                //@display("p=500,300");
        }
        network41host18: StandardHost {
            parameters:
                routingFile = "network/network41/H18.irt";
                //@display("p=500,500");
        }
        network41host19: StandardHost {
            parameters:
                routingFile = "network/network41/H19.irt";
                //@display("p=500,700");
        }
        network41host20: StandardHost {
            parameters:
                routingFile = "network/network41/H20.irt";
                //@display("p=500,900");
        }
        network41host21: StandardHost {
            parameters:
                routingFile = "network/network41/H21.irt";
                //@display("p=500,100");
        }
        network41host22: StandardHost {
            parameters:
                routingFile = "network/network41/H22.irt";
                //@display("p=500,300");
        }
        network41host23: StandardHost {
            parameters:
                routingFile = "network/network41/H23.irt";
                //@display("p=500,500");
        }
        network41host24: StandardHost {
            parameters:
                routingFile = "network/network41/H24.irt";
                //@display("p=500,700");
        }
        network41host25: StandardHost {
            parameters:
                routingFile = "network/network41/H25.irt";
                //@display("p=500,900");
        }
        network41host26: StandardHost {
            parameters:
                routingFile = "network/network41/H26.irt";
                //@display("p=500,100");
        }
        network41host27: StandardHost {
            parameters:
                routingFile = "network/network41/H27.irt";
                //@display("p=500,300");
        }
        network41host28: StandardHost {
            parameters:
                routingFile = "network/network41/H28.irt";
                //@display("p=500,500");
        }
        network41host29: StandardHost {
            parameters:
                routingFile = "network/network41/H29.irt";
                //@display("p=500,700");
        }
        network41host30: StandardHost {
            parameters:
                routingFile = "network/network41/H30.irt";
                //@display("p=500,900");
        }
        network41host31: StandardHost {
            parameters:
                routingFile = "network/network41/H31.irt";
                //@display("p=500,100");
        }
        network41host32: StandardHost {
            parameters:
                routingFile = "network/network41/H32.irt";
                //@display("p=500,300");
        }
        network41host33: StandardHost {
            parameters:
                routingFile = "network/network41/H33.irt";
                //@display("p=500,500");
        }
        network41host34: StandardHost {
            parameters:
                routingFile = "network/network41/H34.irt";
                //@display("p=500,700");
        }
        network41host35: StandardHost {
            parameters:
                routingFile = "network/network41/H35.irt";
                //@display("p=500,900");
        }
        network41host36: StandardHost {
            parameters:
                routingFile = "network/network41/H36.irt";
                //@display("p=500,100");
        }
        network41host37: StandardHost {
            parameters:
                routingFile = "network/network41/H37.irt";
                //@display("p=500,300");
        }
        network41host38: StandardHost {
            parameters:
                routingFile = "network/network41/H38.irt";
                //@display("p=500,500");
        }
        network41host39: StandardHost {
            parameters:
                routingFile = "network/network41/H39.irt";
                //@display("p=500,700");
        }
        network41host40: StandardHost {
            parameters:
                routingFile = "network/network41/H40.irt";
                //@display("p=500,900");
        }

        network42host1: StandardHost {
            parameters:
                routingFile = "network/network42/H1.irt";
                //@display("p=500,100");
        }
        network42host2: StandardHost {
            parameters:
                routingFile = "network/network42/H2.irt";
                //@display("p=500,300");
        }
        network42host3: StandardHost {
            parameters:
                routingFile = "network/network42/H3.irt";
                //@display("p=500,500");
        }
        network42host4: StandardHost {
            parameters:
                routingFile = "network/network42/H4.irt";
                //@display("p=500,700");
        }
        network42host5: StandardHost {
            parameters:
                routingFile = "network/network42/H5.irt";
                //@display("p=500,900");
        }
        network42host6: StandardHost {
            parameters:
                routingFile = "network/network42/H6.irt";
                //@display("p=500,100");
        }
        network42host7: StandardHost {
            parameters:
                routingFile = "network/network42/H7.irt";
                //@display("p=500,300");
        }
        network42host8: StandardHost {
            parameters:
                routingFile = "network/network42/H8.irt";
                //@display("p=500,500");
        }
        network42host9: StandardHost {
            parameters:
                routingFile = "network/network42/H9.irt";
                //@display("p=500,700");
        }
        network42host10: StandardHost {
            parameters:
                routingFile = "network/network42/H10.irt";
                //@display("p=500,900");
        }
        network42host11: StandardHost {
            parameters:
                routingFile = "network/network42/H11.irt";
                //@display("p=500,100");
        }
        network42host12: StandardHost {
            parameters:
                routingFile = "network/network42/H12.irt";
                //@display("p=500,300");
        }
        network42host13: StandardHost {
            parameters:
                routingFile = "network/network42/H13.irt";
                //@display("p=500,500");
        }
        network42host14: StandardHost {
            parameters:
                routingFile = "network/network42/H14.irt";
                //@display("p=500,700");
        }
        network42host15: StandardHost {
            parameters:
                routingFile = "network/network42/H15.irt";
                //@display("p=500,900");
        }
        network42host16: StandardHost {
            parameters:
                routingFile = "network/network42/H16.irt";
                //@display("p=500,100");
        }
        network42host17: StandardHost {
            parameters:
                routingFile = "network/network42/H17.irt";
                //@display("p=500,300");
        }
        network42host18: StandardHost {
            parameters:
                routingFile = "network/network42/H18.irt";
                //@display("p=500,500");
        }
        network42host19: StandardHost {
            parameters:
                routingFile = "network/network42/H19.irt";
                //@display("p=500,700");
        }
        network42host20: StandardHost {
            parameters:
                routingFile = "network/network42/H20.irt";
                //@display("p=500,900");
        }
        network42host21: StandardHost {
            parameters:
                routingFile = "network/network42/H21.irt";
                //@display("p=500,100");
        }
        network42host22: StandardHost {
            parameters:
                routingFile = "network/network42/H22.irt";
                //@display("p=500,300");
        }
        network42host23: StandardHost {
            parameters:
                routingFile = "network/network42/H23.irt";
                //@display("p=500,500");
        }
        network42host24: StandardHost {
            parameters:
                routingFile = "network/network42/H24.irt";
                //@display("p=500,700");
        }
        network42host25: StandardHost {
            parameters:
                routingFile = "network/network42/H25.irt";
                //@display("p=500,900");
        }
        network42host26: StandardHost {
            parameters:
                routingFile = "network/network42/H26.irt";
                //@display("p=500,100");
        }
        network42host27: StandardHost {
            parameters:
                routingFile = "network/network42/H27.irt";
                //@display("p=500,300");
        }
        network42host28: StandardHost {
            parameters:
                routingFile = "network/network42/H28.irt";
                //@display("p=500,500");
        }
        network42host29: StandardHost {
            parameters:
                routingFile = "network/network42/H29.irt";
                //@display("p=500,700");
        }
        network42host30: StandardHost {
            parameters:
                routingFile = "network/network42/H30.irt";
                //@display("p=500,900");
        }
        network42host31: StandardHost {
            parameters:
                routingFile = "network/network42/H31.irt";
                //@display("p=500,100");
        }
        network42host32: StandardHost {
            parameters:
                routingFile = "network/network42/H32.irt";
                //@display("p=500,300");
        }
        network42host33: StandardHost {
            parameters:
                routingFile = "network/network42/H33.irt";
                //@display("p=500,500");
        }
        network42host34: StandardHost {
            parameters:
                routingFile = "network/network42/H34.irt";
                //@display("p=500,700");
        }
        network42host35: StandardHost {
            parameters:
                routingFile = "network/network42/H35.irt";
                //@display("p=500,900");
        }
        network42host36: StandardHost {
            parameters:
                routingFile = "network/network42/H36.irt";
                //@display("p=500,100");
        }
        network42host37: StandardHost {
            parameters:
                routingFile = "network/network42/H37.irt";
                //@display("p=500,300");
        }
        network42host38: StandardHost {
            parameters:
                routingFile = "network/network42/H38.irt";
                //@display("p=500,500");
        }
        network42host39: StandardHost {
            parameters:
                routingFile = "network/network42/H39.irt";
                //@display("p=500,700");
        }
        network42host40: StandardHost {
            parameters:
                routingFile = "network/network42/H40.irt";
                //@display("p=500,900");
        }

        network43host1: StandardHost {
            parameters:
                routingFile = "network/network43/H1.irt";
                //@display("p=500,100");
        }
        network43host2: StandardHost {
            parameters:
                routingFile = "network/network43/H2.irt";
                //@display("p=500,300");
        }
        network43host3: StandardHost {
            parameters:
                routingFile = "network/network43/H3.irt";
                //@display("p=500,500");
        }
        network43host4: StandardHost {
            parameters:
                routingFile = "network/network43/H4.irt";
                //@display("p=500,700");
        }
        network43host5: StandardHost {
            parameters:
                routingFile = "network/network43/H5.irt";
                //@display("p=500,900");
        }
        network43host6: StandardHost {
            parameters:
                routingFile = "network/network43/H6.irt";
                //@display("p=500,100");
        }
        network43host7: StandardHost {
            parameters:
                routingFile = "network/network43/H7.irt";
                //@display("p=500,300");
        }
        network43host8: StandardHost {
            parameters:
                routingFile = "network/network43/H8.irt";
                //@display("p=500,500");
        }
        network43host9: StandardHost {
            parameters:
                routingFile = "network/network43/H9.irt";
                //@display("p=500,700");
        }
        network43host10: StandardHost {
            parameters:
                routingFile = "network/network43/H10.irt";
                //@display("p=500,900");
        }
        network43host11: StandardHost {
            parameters:
                routingFile = "network/network43/H11.irt";
                //@display("p=500,100");
        }
        network43host12: StandardHost {
            parameters:
                routingFile = "network/network43/H12.irt";
                //@display("p=500,300");
        }
        network43host13: StandardHost {
            parameters:
                routingFile = "network/network43/H13.irt";
                //@display("p=500,500");
        }
        network43host14: StandardHost {
            parameters:
                routingFile = "network/network43/H14.irt";
                //@display("p=500,700");
        }
        network43host15: StandardHost {
            parameters:
                routingFile = "network/network43/H15.irt";
                //@display("p=500,900");
        }
        network43host16: StandardHost {
            parameters:
                routingFile = "network/network43/H16.irt";
                //@display("p=500,100");
        }
        network43host17: StandardHost {
            parameters:
                routingFile = "network/network43/H17.irt";
                //@display("p=500,300");
        }
        network43host18: StandardHost {
            parameters:
                routingFile = "network/network43/H18.irt";
                //@display("p=500,500");
        }
        network43host19: StandardHost {
            parameters:
                routingFile = "network/network43/H19.irt";
                //@display("p=500,700");
        }
        network43host20: StandardHost {
            parameters:
                routingFile = "network/network43/H20.irt";
                //@display("p=500,900");
        }
        network43host21: StandardHost {
            parameters:
                routingFile = "network/network43/H21.irt";
                //@display("p=500,100");
        }
        network43host22: StandardHost {
            parameters:
                routingFile = "network/network43/H22.irt";
                //@display("p=500,300");
        }
        network43host23: StandardHost {
            parameters:
                routingFile = "network/network43/H23.irt";
                //@display("p=500,500");
        }
        network43host24: StandardHost {
            parameters:
                routingFile = "network/network43/H24.irt";
                //@display("p=500,700");
        }
        network43host25: StandardHost {
            parameters:
                routingFile = "network/network43/H25.irt";
                //@display("p=500,900");
        }
        network43host26: StandardHost {
            parameters:
                routingFile = "network/network43/H26.irt";
                //@display("p=500,100");
        }
        network43host27: StandardHost {
            parameters:
                routingFile = "network/network43/H27.irt";
                //@display("p=500,300");
        }
        network43host28: StandardHost {
            parameters:
                routingFile = "network/network43/H28.irt";
                //@display("p=500,500");
        }
        network43host29: StandardHost {
            parameters:
                routingFile = "network/network43/H29.irt";
                //@display("p=500,700");
        }
        network43host30: StandardHost {
            parameters:
                routingFile = "network/network43/H30.irt";
                //@display("p=500,900");
        }
        network43host31: StandardHost {
            parameters:
                routingFile = "network/network43/H31.irt";
                //@display("p=500,100");
        }
        network43host32: StandardHost {
            parameters:
                routingFile = "network/network43/H32.irt";
                //@display("p=500,300");
        }
        network43host33: StandardHost {
            parameters:
                routingFile = "network/network43/H33.irt";
                //@display("p=500,500");
        }
        network43host34: StandardHost {
            parameters:
                routingFile = "network/network43/H34.irt";
                //@display("p=500,700");
        }
        network43host35: StandardHost {
            parameters:
                routingFile = "network/network43/H35.irt";
                //@display("p=500,900");
        }
        network43host36: StandardHost {
            parameters:
                routingFile = "network/network43/H36.irt";
                //@display("p=500,100");
        }
        network43host37: StandardHost {
            parameters:
                routingFile = "network/network43/H37.irt";
                //@display("p=500,300");
        }
        network43host38: StandardHost {
            parameters:
                routingFile = "network/network43/H38.irt";
                //@display("p=500,500");
        }
        network43host39: StandardHost {
            parameters:
                routingFile = "network/network43/H39.irt";
                //@display("p=500,700");
        }
        network43host40: StandardHost {
            parameters:
                routingFile = "network/network43/H40.irt";
                //@display("p=500,900");
        }

        network44host1: StandardHost {
            parameters:
                routingFile = "network/network44/H1.irt";
                //@display("p=500,100");
        }
        network44host2: StandardHost {
            parameters:
                routingFile = "network/network44/H2.irt";
                //@display("p=500,300");
        }
        network44host3: StandardHost {
            parameters:
                routingFile = "network/network44/H3.irt";
                //@display("p=500,500");
        }
        network44host4: StandardHost {
            parameters:
                routingFile = "network/network44/H4.irt";
                //@display("p=500,700");
        }
        network44host5: StandardHost {
            parameters:
                routingFile = "network/network44/H5.irt";
                //@display("p=500,900");
        }
        network44host6: StandardHost {
            parameters:
                routingFile = "network/network44/H6.irt";
                //@display("p=500,100");
        }
        network44host7: StandardHost {
            parameters:
                routingFile = "network/network44/H7.irt";
                //@display("p=500,300");
        }
        network44host8: StandardHost {
            parameters:
                routingFile = "network/network44/H8.irt";
                //@display("p=500,500");
        }
        network44host9: StandardHost {
            parameters:
                routingFile = "network/network44/H9.irt";
                //@display("p=500,700");
        }
        network44host10: StandardHost {
            parameters:
                routingFile = "network/network44/H10.irt";
                //@display("p=500,900");
        }
        network44host11: StandardHost {
            parameters:
                routingFile = "network/network44/H11.irt";
                //@display("p=500,100");
        }
        network44host12: StandardHost {
            parameters:
                routingFile = "network/network44/H12.irt";
                //@display("p=500,300");
        }
        network44host13: StandardHost {
            parameters:
                routingFile = "network/network44/H13.irt";
                //@display("p=500,500");
        }
        network44host14: StandardHost {
            parameters:
                routingFile = "network/network44/H14.irt";
                //@display("p=500,700");
        }
        network44host15: StandardHost {
            parameters:
                routingFile = "network/network44/H15.irt";
                //@display("p=500,900");
        }
        network44host16: StandardHost {
            parameters:
                routingFile = "network/network44/H16.irt";
                //@display("p=500,100");
        }
        network44host17: StandardHost {
            parameters:
                routingFile = "network/network44/H17.irt";
                //@display("p=500,300");
        }
        network44host18: StandardHost {
            parameters:
                routingFile = "network/network44/H18.irt";
                //@display("p=500,500");
        }
        network44host19: StandardHost {
            parameters:
                routingFile = "network/network44/H19.irt";
                //@display("p=500,700");
        }
        network44host20: StandardHost {
            parameters:
                routingFile = "network/network44/H20.irt";
                //@display("p=500,900");
        }
        network44host21: StandardHost {
            parameters:
                routingFile = "network/network44/H21.irt";
                //@display("p=500,100");
        }
        network44host22: StandardHost {
            parameters:
                routingFile = "network/network44/H22.irt";
                //@display("p=500,300");
        }
        network44host23: StandardHost {
            parameters:
                routingFile = "network/network44/H23.irt";
                //@display("p=500,500");
        }
        network44host24: StandardHost {
            parameters:
                routingFile = "network/network44/H24.irt";
                //@display("p=500,700");
        }
        network44host25: StandardHost {
            parameters:
                routingFile = "network/network44/H25.irt";
                //@display("p=500,900");
        }
        network44host26: StandardHost {
            parameters:
                routingFile = "network/network44/H26.irt";
                //@display("p=500,100");
        }
        network44host27: StandardHost {
            parameters:
                routingFile = "network/network44/H27.irt";
                //@display("p=500,300");
        }
        network44host28: StandardHost {
            parameters:
                routingFile = "network/network44/H28.irt";
                //@display("p=500,500");
        }
        network44host29: StandardHost {
            parameters:
                routingFile = "network/network44/H29.irt";
                //@display("p=500,700");
        }
        network44host30: StandardHost {
            parameters:
                routingFile = "network/network44/H30.irt";
                //@display("p=500,900");
        }
        network44host31: StandardHost {
            parameters:
                routingFile = "network/network44/H31.irt";
                //@display("p=500,100");
        }
        network44host32: StandardHost {
            parameters:
                routingFile = "network/network44/H32.irt";
                //@display("p=500,300");
        }
        network44host33: StandardHost {
            parameters:
                routingFile = "network/network44/H33.irt";
                //@display("p=500,500");
        }
        network44host34: StandardHost {
            parameters:
                routingFile = "network/network44/H34.irt";
                //@display("p=500,700");
        }
        network44host35: StandardHost {
            parameters:
                routingFile = "network/network44/H35.irt";
                //@display("p=500,900");
        }
        network44host36: StandardHost {
            parameters:
                routingFile = "network/network44/H36.irt";
                //@display("p=500,100");
        }
        network44host37: StandardHost {
            parameters:
                routingFile = "network/network44/H37.irt";
                //@display("p=500,300");
        }
        network44host38: StandardHost {
            parameters:
                routingFile = "network/network44/H38.irt";
                //@display("p=500,500");
        }
        network44host39: StandardHost {
            parameters:
                routingFile = "network/network44/H39.irt";
                //@display("p=500,700");
        }
        network44host40: StandardHost {
            parameters:
                routingFile = "network/network44/H40.irt";
                //@display("p=500,900");
        }

        network45host1: StandardHost {
            parameters:
                routingFile = "network/network45/H1.irt";
                //@display("p=500,100");
        }
        network45host2: StandardHost {
            parameters:
                routingFile = "network/network45/H2.irt";
                //@display("p=500,300");
        }
        network45host3: StandardHost {
            parameters:
                routingFile = "network/network45/H3.irt";
                //@display("p=500,500");
        }
        network45host4: StandardHost {
            parameters:
                routingFile = "network/network45/H4.irt";
                //@display("p=500,700");
        }
        network45host5: StandardHost {
            parameters:
                routingFile = "network/network45/H5.irt";
                //@display("p=500,900");
        }
        network45host6: StandardHost {
            parameters:
                routingFile = "network/network45/H6.irt";
                //@display("p=500,100");
        }
        network45host7: StandardHost {
            parameters:
                routingFile = "network/network45/H7.irt";
                //@display("p=500,300");
        }
        network45host8: StandardHost {
            parameters:
                routingFile = "network/network45/H8.irt";
                //@display("p=500,500");
        }
        network45host9: StandardHost {
            parameters:
                routingFile = "network/network45/H9.irt";
                //@display("p=500,700");
        }
        network45host10: StandardHost {
            parameters:
                routingFile = "network/network45/H10.irt";
                //@display("p=500,900");
        }
        network45host11: StandardHost {
            parameters:
                routingFile = "network/network45/H11.irt";
                //@display("p=500,100");
        }
        network45host12: StandardHost {
            parameters:
                routingFile = "network/network45/H12.irt";
                //@display("p=500,300");
        }
        network45host13: StandardHost {
            parameters:
                routingFile = "network/network45/H13.irt";
                //@display("p=500,500");
        }
        network45host14: StandardHost {
            parameters:
                routingFile = "network/network45/H14.irt";
                //@display("p=500,700");
        }
        network45host15: StandardHost {
            parameters:
                routingFile = "network/network45/H15.irt";
                //@display("p=500,900");
        }
        network45host16: StandardHost {
            parameters:
                routingFile = "network/network45/H16.irt";
                //@display("p=500,100");
        }
        network45host17: StandardHost {
            parameters:
                routingFile = "network/network45/H17.irt";
                //@display("p=500,300");
        }
        network45host18: StandardHost {
            parameters:
                routingFile = "network/network45/H18.irt";
                //@display("p=500,500");
        }
        network45host19: StandardHost {
            parameters:
                routingFile = "network/network45/H19.irt";
                //@display("p=500,700");
        }
        network45host20: StandardHost {
            parameters:
                routingFile = "network/network45/H20.irt";
                //@display("p=500,900");
        }
        network45host21: StandardHost {
            parameters:
                routingFile = "network/network45/H21.irt";
                //@display("p=500,100");
        }
        network45host22: StandardHost {
            parameters:
                routingFile = "network/network45/H22.irt";
                //@display("p=500,300");
        }
        network45host23: StandardHost {
            parameters:
                routingFile = "network/network45/H23.irt";
                //@display("p=500,500");
        }
        network45host24: StandardHost {
            parameters:
                routingFile = "network/network45/H24.irt";
                //@display("p=500,700");
        }
        network45host25: StandardHost {
            parameters:
                routingFile = "network/network45/H25.irt";
                //@display("p=500,900");
        }
        network45host26: StandardHost {
            parameters:
                routingFile = "network/network45/H26.irt";
                //@display("p=500,100");
        }
        network45host27: StandardHost {
            parameters:
                routingFile = "network/network45/H27.irt";
                //@display("p=500,300");
        }
        network45host28: StandardHost {
            parameters:
                routingFile = "network/network45/H28.irt";
                //@display("p=500,500");
        }
        network45host29: StandardHost {
            parameters:
                routingFile = "network/network45/H29.irt";
                //@display("p=500,700");
        }
        network45host30: StandardHost {
            parameters:
                routingFile = "network/network45/H30.irt";
                //@display("p=500,900");
        }
        network45host31: StandardHost {
            parameters:
                routingFile = "network/network45/H31.irt";
                //@display("p=500,100");
        }
        network45host32: StandardHost {
            parameters:
                routingFile = "network/network45/H32.irt";
                //@display("p=500,300");
        }
        network45host33: StandardHost {
            parameters:
                routingFile = "network/network45/H33.irt";
                //@display("p=500,500");
        }
        network45host34: StandardHost {
            parameters:
                routingFile = "network/network45/H34.irt";
                //@display("p=500,700");
        }
        network45host35: StandardHost {
            parameters:
                routingFile = "network/network45/H35.irt";
                //@display("p=500,900");
        }
        network45host36: StandardHost {
            parameters:
                routingFile = "network/network45/H36.irt";
                //@display("p=500,100");
        }
        network45host37: StandardHost {
            parameters:
                routingFile = "network/network45/H37.irt";
                //@display("p=500,300");
        }
        network45host38: StandardHost {
            parameters:
                routingFile = "network/network45/H38.irt";
                //@display("p=500,500");
        }
        network45host39: StandardHost {
            parameters:
                routingFile = "network/network45/H39.irt";
                //@display("p=500,700");
        }
        network45host40: StandardHost {
            parameters:
                routingFile = "network/network45/H40.irt";
                //@display("p=500,900");
        }

        network46host1: StandardHost {
            parameters:
                routingFile = "network/network46/H1.irt";
                //@display("p=500,100");
        }
        network46host2: StandardHost {
            parameters:
                routingFile = "network/network46/H2.irt";
                //@display("p=500,300");
        }
        network46host3: StandardHost {
            parameters:
                routingFile = "network/network46/H3.irt";
                //@display("p=500,500");
        }
        network46host4: StandardHost {
            parameters:
                routingFile = "network/network46/H4.irt";
                //@display("p=500,700");
        }
        network46host5: StandardHost {
            parameters:
                routingFile = "network/network46/H5.irt";
                //@display("p=500,900");
        }
        network46host6: StandardHost {
            parameters:
                routingFile = "network/network46/H6.irt";
                //@display("p=500,100");
        }
        network46host7: StandardHost {
            parameters:
                routingFile = "network/network46/H7.irt";
                //@display("p=500,300");
        }
        network46host8: StandardHost {
            parameters:
                routingFile = "network/network46/H8.irt";
                //@display("p=500,500");
        }
        network46host9: StandardHost {
            parameters:
                routingFile = "network/network46/H9.irt";
                //@display("p=500,700");
        }
        network46host10: StandardHost {
            parameters:
                routingFile = "network/network46/H10.irt";
                //@display("p=500,900");
        }
        network46host11: StandardHost {
            parameters:
                routingFile = "network/network46/H11.irt";
                //@display("p=500,100");
        }
        network46host12: StandardHost {
            parameters:
                routingFile = "network/network46/H12.irt";
                //@display("p=500,300");
        }
        network46host13: StandardHost {
            parameters:
                routingFile = "network/network46/H13.irt";
                //@display("p=500,500");
        }
        network46host14: StandardHost {
            parameters:
                routingFile = "network/network46/H14.irt";
                //@display("p=500,700");
        }
        network46host15: StandardHost {
            parameters:
                routingFile = "network/network46/H15.irt";
                //@display("p=500,900");
        }
        network46host16: StandardHost {
            parameters:
                routingFile = "network/network46/H16.irt";
                //@display("p=500,100");
        }
        network46host17: StandardHost {
            parameters:
                routingFile = "network/network46/H17.irt";
                //@display("p=500,300");
        }
        network46host18: StandardHost {
            parameters:
                routingFile = "network/network46/H18.irt";
                //@display("p=500,500");
        }
        network46host19: StandardHost {
            parameters:
                routingFile = "network/network46/H19.irt";
                //@display("p=500,700");
        }
        network46host20: StandardHost {
            parameters:
                routingFile = "network/network46/H20.irt";
                //@display("p=500,900");
        }
        network46host21: StandardHost {
            parameters:
                routingFile = "network/network46/H21.irt";
                //@display("p=500,100");
        }
        network46host22: StandardHost {
            parameters:
                routingFile = "network/network46/H22.irt";
                //@display("p=500,300");
        }
        network46host23: StandardHost {
            parameters:
                routingFile = "network/network46/H23.irt";
                //@display("p=500,500");
        }
        network46host24: StandardHost {
            parameters:
                routingFile = "network/network46/H24.irt";
                //@display("p=500,700");
        }
        network46host25: StandardHost {
            parameters:
                routingFile = "network/network46/H25.irt";
                //@display("p=500,900");
        }
        network46host26: StandardHost {
            parameters:
                routingFile = "network/network46/H26.irt";
                //@display("p=500,100");
        }
        network46host27: StandardHost {
            parameters:
                routingFile = "network/network46/H27.irt";
                //@display("p=500,300");
        }
        network46host28: StandardHost {
            parameters:
                routingFile = "network/network46/H28.irt";
                //@display("p=500,500");
        }
        network46host29: StandardHost {
            parameters:
                routingFile = "network/network46/H29.irt";
                //@display("p=500,700");
        }
        network46host30: StandardHost {
            parameters:
                routingFile = "network/network46/H30.irt";
                //@display("p=500,900");
        }
        network46host31: StandardHost {
            parameters:
                routingFile = "network/network46/H31.irt";
                //@display("p=500,100");
        }
        network46host32: StandardHost {
            parameters:
                routingFile = "network/network46/H32.irt";
                //@display("p=500,300");
        }
        network46host33: StandardHost {
            parameters:
                routingFile = "network/network46/H33.irt";
                //@display("p=500,500");
        }
        network46host34: StandardHost {
            parameters:
                routingFile = "network/network46/H34.irt";
                //@display("p=500,700");
        }
        network46host35: StandardHost {
            parameters:
                routingFile = "network/network46/H35.irt";
                //@display("p=500,900");
        }
        network46host36: StandardHost {
            parameters:
                routingFile = "network/network46/H36.irt";
                //@display("p=500,100");
        }
        network46host37: StandardHost {
            parameters:
                routingFile = "network/network46/H37.irt";
                //@display("p=500,300");
        }
        network46host38: StandardHost {
            parameters:
                routingFile = "network/network46/H38.irt";
                //@display("p=500,500");
        }
        network46host39: StandardHost {
            parameters:
                routingFile = "network/network46/H39.irt";
                //@display("p=500,700");
        }
        network46host40: StandardHost {
            parameters:
                routingFile = "network/network46/H40.irt";
                //@display("p=500,900");
        }

        network47host1: StandardHost {
            parameters:
                routingFile = "network/network47/H1.irt";
                //@display("p=500,100");
        }
        network47host2: StandardHost {
            parameters:
                routingFile = "network/network47/H2.irt";
                //@display("p=500,300");
        }
        network47host3: StandardHost {
            parameters:
                routingFile = "network/network47/H3.irt";
                //@display("p=500,500");
        }
        network47host4: StandardHost {
            parameters:
                routingFile = "network/network47/H4.irt";
                //@display("p=500,700");
        }
        network47host5: StandardHost {
            parameters:
                routingFile = "network/network47/H5.irt";
                //@display("p=500,900");
        }
        network47host6: StandardHost {
            parameters:
                routingFile = "network/network47/H6.irt";
                //@display("p=500,100");
        }
        network47host7: StandardHost {
            parameters:
                routingFile = "network/network47/H7.irt";
                //@display("p=500,300");
        }
        network47host8: StandardHost {
            parameters:
                routingFile = "network/network47/H8.irt";
                //@display("p=500,500");
        }
        network47host9: StandardHost {
            parameters:
                routingFile = "network/network47/H9.irt";
                //@display("p=500,700");
        }
        network47host10: StandardHost {
            parameters:
                routingFile = "network/network47/H10.irt";
                //@display("p=500,900");
        }
        network47host11: StandardHost {
            parameters:
                routingFile = "network/network47/H11.irt";
                //@display("p=500,100");
        }
        network47host12: StandardHost {
            parameters:
                routingFile = "network/network47/H12.irt";
                //@display("p=500,300");
        }
        network47host13: StandardHost {
            parameters:
                routingFile = "network/network47/H13.irt";
                //@display("p=500,500");
        }
        network47host14: StandardHost {
            parameters:
                routingFile = "network/network47/H14.irt";
                //@display("p=500,700");
        }
        network47host15: StandardHost {
            parameters:
                routingFile = "network/network47/H15.irt";
                //@display("p=500,900");
        }
        network47host16: StandardHost {
            parameters:
                routingFile = "network/network47/H16.irt";
                //@display("p=500,100");
        }
        network47host17: StandardHost {
            parameters:
                routingFile = "network/network47/H17.irt";
                //@display("p=500,300");
        }
        network47host18: StandardHost {
            parameters:
                routingFile = "network/network47/H18.irt";
                //@display("p=500,500");
        }
        network47host19: StandardHost {
            parameters:
                routingFile = "network/network47/H19.irt";
                //@display("p=500,700");
        }
        network47host20: StandardHost {
            parameters:
                routingFile = "network/network47/H20.irt";
                //@display("p=500,900");
        }
        network47host21: StandardHost {
            parameters:
                routingFile = "network/network47/H21.irt";
                //@display("p=500,100");
        }
        network47host22: StandardHost {
            parameters:
                routingFile = "network/network47/H22.irt";
                //@display("p=500,300");
        }
        network47host23: StandardHost {
            parameters:
                routingFile = "network/network47/H23.irt";
                //@display("p=500,500");
        }
        network47host24: StandardHost {
            parameters:
                routingFile = "network/network47/H24.irt";
                //@display("p=500,700");
        }
        network47host25: StandardHost {
            parameters:
                routingFile = "network/network47/H25.irt";
                //@display("p=500,900");
        }
        network47host26: StandardHost {
            parameters:
                routingFile = "network/network47/H26.irt";
                //@display("p=500,100");
        }
        network47host27: StandardHost {
            parameters:
                routingFile = "network/network47/H27.irt";
                //@display("p=500,300");
        }
        network47host28: StandardHost {
            parameters:
                routingFile = "network/network47/H28.irt";
                //@display("p=500,500");
        }
        network47host29: StandardHost {
            parameters:
                routingFile = "network/network47/H29.irt";
                //@display("p=500,700");
        }
        network47host30: StandardHost {
            parameters:
                routingFile = "network/network47/H30.irt";
                //@display("p=500,900");
        }
        network47host31: StandardHost {
            parameters:
                routingFile = "network/network47/H31.irt";
                //@display("p=500,100");
        }
        network47host32: StandardHost {
            parameters:
                routingFile = "network/network47/H32.irt";
                //@display("p=500,300");
        }
        network47host33: StandardHost {
            parameters:
                routingFile = "network/network47/H33.irt";
                //@display("p=500,500");
        }
        network47host34: StandardHost {
            parameters:
                routingFile = "network/network47/H34.irt";
                //@display("p=500,700");
        }
        network47host35: StandardHost {
            parameters:
                routingFile = "network/network47/H35.irt";
                //@display("p=500,900");
        }
        network47host36: StandardHost {
            parameters:
                routingFile = "network/network47/H36.irt";
                //@display("p=500,100");
        }
        network47host37: StandardHost {
            parameters:
                routingFile = "network/network47/H37.irt";
                //@display("p=500,300");
        }
        network47host38: StandardHost {
            parameters:
                routingFile = "network/network47/H38.irt";
                //@display("p=500,500");
        }
        network47host39: StandardHost {
            parameters:
                routingFile = "network/network47/H39.irt";
                //@display("p=500,700");
        }
        network47host40: StandardHost {
            parameters:
                routingFile = "network/network47/H40.irt";
                //@display("p=500,900");
        }

        network48host1: StandardHost {
            parameters:
                routingFile = "network/network48/H1.irt";
                //@display("p=500,100");
        }
        network48host2: StandardHost {
            parameters:
                routingFile = "network/network48/H2.irt";
                //@display("p=500,300");
        }
        network48host3: StandardHost {
            parameters:
                routingFile = "network/network48/H3.irt";
                //@display("p=500,500");
        }
        network48host4: StandardHost {
            parameters:
                routingFile = "network/network48/H4.irt";
                //@display("p=500,700");
        }
        network48host5: StandardHost {
            parameters:
                routingFile = "network/network48/H5.irt";
                //@display("p=500,900");
        }
        network48host6: StandardHost {
            parameters:
                routingFile = "network/network48/H6.irt";
                //@display("p=500,100");
        }
        network48host7: StandardHost {
            parameters:
                routingFile = "network/network48/H7.irt";
                //@display("p=500,300");
        }
        network48host8: StandardHost {
            parameters:
                routingFile = "network/network48/H8.irt";
                //@display("p=500,500");
        }
        network48host9: StandardHost {
            parameters:
                routingFile = "network/network48/H9.irt";
                //@display("p=500,700");
        }
        network48host10: StandardHost {
            parameters:
                routingFile = "network/network48/H10.irt";
                //@display("p=500,900");
        }
        network48host11: StandardHost {
            parameters:
                routingFile = "network/network48/H11.irt";
                //@display("p=500,100");
        }
        network48host12: StandardHost {
            parameters:
                routingFile = "network/network48/H12.irt";
                //@display("p=500,300");
        }
        network48host13: StandardHost {
            parameters:
                routingFile = "network/network48/H13.irt";
                //@display("p=500,500");
        }
        network48host14: StandardHost {
            parameters:
                routingFile = "network/network48/H14.irt";
                //@display("p=500,700");
        }
        network48host15: StandardHost {
            parameters:
                routingFile = "network/network48/H15.irt";
                //@display("p=500,900");
        }
        network48host16: StandardHost {
            parameters:
                routingFile = "network/network48/H16.irt";
                //@display("p=500,100");
        }
        network48host17: StandardHost {
            parameters:
                routingFile = "network/network48/H17.irt";
                //@display("p=500,300");
        }
        network48host18: StandardHost {
            parameters:
                routingFile = "network/network48/H18.irt";
                //@display("p=500,500");
        }
        network48host19: StandardHost {
            parameters:
                routingFile = "network/network48/H19.irt";
                //@display("p=500,700");
        }
        network48host20: StandardHost {
            parameters:
                routingFile = "network/network48/H20.irt";
                //@display("p=500,900");
        }
        network48host21: StandardHost {
            parameters:
                routingFile = "network/network48/H21.irt";
                //@display("p=500,100");
        }
        network48host22: StandardHost {
            parameters:
                routingFile = "network/network48/H22.irt";
                //@display("p=500,300");
        }
        network48host23: StandardHost {
            parameters:
                routingFile = "network/network48/H23.irt";
                //@display("p=500,500");
        }
        network48host24: StandardHost {
            parameters:
                routingFile = "network/network48/H24.irt";
                //@display("p=500,700");
        }
        network48host25: StandardHost {
            parameters:
                routingFile = "network/network48/H25.irt";
                //@display("p=500,900");
        }
        network48host26: StandardHost {
            parameters:
                routingFile = "network/network48/H26.irt";
                //@display("p=500,100");
        }
        network48host27: StandardHost {
            parameters:
                routingFile = "network/network48/H27.irt";
                //@display("p=500,300");
        }
        network48host28: StandardHost {
            parameters:
                routingFile = "network/network48/H28.irt";
                //@display("p=500,500");
        }
        network48host29: StandardHost {
            parameters:
                routingFile = "network/network48/H29.irt";
                //@display("p=500,700");
        }
        network48host30: StandardHost {
            parameters:
                routingFile = "network/network48/H30.irt";
                //@display("p=500,900");
        }
        network48host31: StandardHost {
            parameters:
                routingFile = "network/network48/H31.irt";
                //@display("p=500,100");
        }
        network48host32: StandardHost {
            parameters:
                routingFile = "network/network48/H32.irt";
                //@display("p=500,300");
        }
        network48host33: StandardHost {
            parameters:
                routingFile = "network/network48/H33.irt";
                //@display("p=500,500");
        }
        network48host34: StandardHost {
            parameters:
                routingFile = "network/network48/H34.irt";
                //@display("p=500,700");
        }
        network48host35: StandardHost {
            parameters:
                routingFile = "network/network48/H35.irt";
                //@display("p=500,900");
        }
        network48host36: StandardHost {
            parameters:
                routingFile = "network/network48/H36.irt";
                //@display("p=500,100");
        }
        network48host37: StandardHost {
            parameters:
                routingFile = "network/network48/H37.irt";
                //@display("p=500,300");
        }
        network48host38: StandardHost {
            parameters:
                routingFile = "network/network48/H38.irt";
                //@display("p=500,500");
        }
        network48host39: StandardHost {
            parameters:
                routingFile = "network/network48/H39.irt";
                //@display("p=500,700");
        }
        network48host40: StandardHost {
            parameters:
                routingFile = "network/network48/H40.irt";
                //@display("p=500,900");
        }

        network49host1: StandardHost {
            parameters:
                routingFile = "network/network49/H1.irt";
                //@display("p=500,100");
        }
        network49host2: StandardHost {
            parameters:
                routingFile = "network/network49/H2.irt";
                //@display("p=500,300");
        }
        network49host3: StandardHost {
            parameters:
                routingFile = "network/network49/H3.irt";
                //@display("p=500,500");
        }
        network49host4: StandardHost {
            parameters:
                routingFile = "network/network49/H4.irt";
                //@display("p=500,700");
        }
        network49host5: StandardHost {
            parameters:
                routingFile = "network/network49/H5.irt";
                //@display("p=500,900");
        }
        network49host6: StandardHost {
            parameters:
                routingFile = "network/network49/H6.irt";
                //@display("p=500,100");
        }
        network49host7: StandardHost {
            parameters:
                routingFile = "network/network49/H7.irt";
                //@display("p=500,300");
        }
        network49host8: StandardHost {
            parameters:
                routingFile = "network/network49/H8.irt";
                //@display("p=500,500");
        }
        network49host9: StandardHost {
            parameters:
                routingFile = "network/network49/H9.irt";
                //@display("p=500,700");
        }
        network49host10: StandardHost {
            parameters:
                routingFile = "network/network49/H10.irt";
                //@display("p=500,900");
        }
        network49host11: StandardHost {
            parameters:
                routingFile = "network/network49/H11.irt";
                //@display("p=500,100");
        }
        network49host12: StandardHost {
            parameters:
                routingFile = "network/network49/H12.irt";
                //@display("p=500,300");
        }
        network49host13: StandardHost {
            parameters:
                routingFile = "network/network49/H13.irt";
                //@display("p=500,500");
        }
        network49host14: StandardHost {
            parameters:
                routingFile = "network/network49/H14.irt";
                //@display("p=500,700");
        }
        network49host15: StandardHost {
            parameters:
                routingFile = "network/network49/H15.irt";
                //@display("p=500,900");
        }
        network49host16: StandardHost {
            parameters:
                routingFile = "network/network49/H16.irt";
                //@display("p=500,100");
        }
        network49host17: StandardHost {
            parameters:
                routingFile = "network/network49/H17.irt";
                //@display("p=500,300");
        }
        network49host18: StandardHost {
            parameters:
                routingFile = "network/network49/H18.irt";
                //@display("p=500,500");
        }
        network49host19: StandardHost {
            parameters:
                routingFile = "network/network49/H19.irt";
                //@display("p=500,700");
        }
        network49host20: StandardHost {
            parameters:
                routingFile = "network/network49/H20.irt";
                //@display("p=500,900");
        }
        network49host21: StandardHost {
            parameters:
                routingFile = "network/network49/H21.irt";
                //@display("p=500,100");
        }
        network49host22: StandardHost {
            parameters:
                routingFile = "network/network49/H22.irt";
                //@display("p=500,300");
        }
        network49host23: StandardHost {
            parameters:
                routingFile = "network/network49/H23.irt";
                //@display("p=500,500");
        }
        network49host24: StandardHost {
            parameters:
                routingFile = "network/network49/H24.irt";
                //@display("p=500,700");
        }
        network49host25: StandardHost {
            parameters:
                routingFile = "network/network49/H25.irt";
                //@display("p=500,900");
        }
        network49host26: StandardHost {
            parameters:
                routingFile = "network/network49/H26.irt";
                //@display("p=500,100");
        }
        network49host27: StandardHost {
            parameters:
                routingFile = "network/network49/H27.irt";
                //@display("p=500,300");
        }
        network49host28: StandardHost {
            parameters:
                routingFile = "network/network49/H28.irt";
                //@display("p=500,500");
        }
        network49host29: StandardHost {
            parameters:
                routingFile = "network/network49/H29.irt";
                //@display("p=500,700");
        }
        network49host30: StandardHost {
            parameters:
                routingFile = "network/network49/H30.irt";
                //@display("p=500,900");
        }
        network49host31: StandardHost {
            parameters:
                routingFile = "network/network49/H31.irt";
                //@display("p=500,100");
        }
        network49host32: StandardHost {
            parameters:
                routingFile = "network/network49/H32.irt";
                //@display("p=500,300");
        }
        network49host33: StandardHost {
            parameters:
                routingFile = "network/network49/H33.irt";
                //@display("p=500,500");
        }
        network49host34: StandardHost {
            parameters:
                routingFile = "network/network49/H34.irt";
                //@display("p=500,700");
        }
        network49host35: StandardHost {
            parameters:
                routingFile = "network/network49/H35.irt";
                //@display("p=500,900");
        }
        network49host36: StandardHost {
            parameters:
                routingFile = "network/network49/H36.irt";
                //@display("p=500,100");
        }
        network49host37: StandardHost {
            parameters:
                routingFile = "network/network49/H37.irt";
                //@display("p=500,300");
        }
        network49host38: StandardHost {
            parameters:
                routingFile = "network/network49/H38.irt";
                //@display("p=500,500");
        }
        network49host39: StandardHost {
            parameters:
                routingFile = "network/network49/H39.irt";
                //@display("p=500,700");
        }
        network49host40: StandardHost {
            parameters:
                routingFile = "network/network49/H40.irt";
                //@display("p=500,900");
        }

        network50host1: StandardHost {
            parameters:
                routingFile = "network/network50/H1.irt";
                //@display("p=500,100");
        }
        network50host2: StandardHost {
            parameters:
                routingFile = "network/network50/H2.irt";
                //@display("p=500,300");
        }
        network50host3: StandardHost {
            parameters:
                routingFile = "network/network50/H3.irt";
                //@display("p=500,500");
        }
        network50host4: StandardHost {
            parameters:
                routingFile = "network/network50/H4.irt";
                //@display("p=500,700");
        }
        network50host5: StandardHost {
            parameters:
                routingFile = "network/network50/H5.irt";
                //@display("p=500,900");
        }
        network50host6: StandardHost {
            parameters:
                routingFile = "network/network50/H6.irt";
                //@display("p=500,100");
        }
        network50host7: StandardHost {
            parameters:
                routingFile = "network/network50/H7.irt";
                //@display("p=500,300");
        }
        network50host8: StandardHost {
            parameters:
                routingFile = "network/network50/H8.irt";
                //@display("p=500,500");
        }
        network50host9: StandardHost {
            parameters:
                routingFile = "network/network50/H9.irt";
                //@display("p=500,700");
        }
        network50host10: StandardHost {
            parameters:
                routingFile = "network/network50/H10.irt";
                //@display("p=500,900");
        }
        network50host11: StandardHost {
            parameters:
                routingFile = "network/network50/H11.irt";
                //@display("p=500,100");
        }
        network50host12: StandardHost {
            parameters:
                routingFile = "network/network50/H12.irt";
                //@display("p=500,300");
        }
        network50host13: StandardHost {
            parameters:
                routingFile = "network/network50/H13.irt";
                //@display("p=500,500");
        }
        network50host14: StandardHost {
            parameters:
                routingFile = "network/network50/H14.irt";
                //@display("p=500,700");
        }
        network50host15: StandardHost {
            parameters:
                routingFile = "network/network50/H15.irt";
                //@display("p=500,900");
        }
        network50host16: StandardHost {
            parameters:
                routingFile = "network/network50/H16.irt";
                //@display("p=500,100");
        }
        network50host17: StandardHost {
            parameters:
                routingFile = "network/network50/H17.irt";
                //@display("p=500,300");
        }
        network50host18: StandardHost {
            parameters:
                routingFile = "network/network50/H18.irt";
                //@display("p=500,500");
        }
        network50host19: StandardHost {
            parameters:
                routingFile = "network/network50/H19.irt";
                //@display("p=500,700");
        }
        network50host20: StandardHost {
            parameters:
                routingFile = "network/network50/H20.irt";
                //@display("p=500,900");
        }
        network50host21: StandardHost {
            parameters:
                routingFile = "network/network50/H21.irt";
                //@display("p=500,100");
        }
        network50host22: StandardHost {
            parameters:
                routingFile = "network/network50/H22.irt";
                //@display("p=500,300");
        }
        network50host23: StandardHost {
            parameters:
                routingFile = "network/network50/H23.irt";
                //@display("p=500,500");
        }
        network50host24: StandardHost {
            parameters:
                routingFile = "network/network50/H24.irt";
                //@display("p=500,700");
        }
        network50host25: StandardHost {
            parameters:
                routingFile = "network/network50/H25.irt";
                //@display("p=500,900");
        }
        network50host26: StandardHost {
            parameters:
                routingFile = "network/network50/H26.irt";
                //@display("p=500,100");
        }
        network50host27: StandardHost {
            parameters:
                routingFile = "network/network50/H27.irt";
                //@display("p=500,300");
        }
        network50host28: StandardHost {
            parameters:
                routingFile = "network/network50/H28.irt";
                //@display("p=500,500");
        }
        network50host29: StandardHost {
            parameters:
                routingFile = "network/network50/H29.irt";
                //@display("p=500,700");
        }
        network50host30: StandardHost {
            parameters:
                routingFile = "network/network50/H30.irt";
                //@display("p=500,900");
        }
        network50host31: StandardHost {
            parameters:
                routingFile = "network/network50/H31.irt";
                //@display("p=500,100");
        }
        network50host32: StandardHost {
            parameters:
                routingFile = "network/network50/H32.irt";
                //@display("p=500,300");
        }
        network50host33: StandardHost {
            parameters:
                routingFile = "network/network50/H33.irt";
                //@display("p=500,500");
        }
        network50host34: StandardHost {
            parameters:
                routingFile = "network/network50/H34.irt";
                //@display("p=500,700");
        }
        network50host35: StandardHost {
            parameters:
                routingFile = "network/network50/H35.irt";
                //@display("p=500,900");
        }
        network50host36: StandardHost {
            parameters:
                routingFile = "network/network50/H36.irt";
                //@display("p=500,100");
        }
        network50host37: StandardHost {
            parameters:
                routingFile = "network/network50/H37.irt";
                //@display("p=500,300");
        }
        network50host38: StandardHost {
            parameters:
                routingFile = "network/network50/H38.irt";
                //@display("p=500,500");
        }
        network50host39: StandardHost {
            parameters:
                routingFile = "network/network50/H39.irt";
                //@display("p=500,700");
        }
        network50host40: StandardHost {
            parameters:
                routingFile = "network/network50/H40.irt";
                //@display("p=500,900");
        }

        network51host1: StandardHost {
            parameters:
                routingFile = "network/network51/H1.irt";
                //@display("p=500,100");
        }
        network51host2: StandardHost {
            parameters:
                routingFile = "network/network51/H2.irt";
                //@display("p=500,300");
        }
        network51host3: StandardHost {
            parameters:
                routingFile = "network/network51/H3.irt";
                //@display("p=500,500");
        }
        network51host4: StandardHost {
            parameters:
                routingFile = "network/network51/H4.irt";
                //@display("p=500,700");
        }
        network51host5: StandardHost {
            parameters:
                routingFile = "network/network51/H5.irt";
                //@display("p=500,900");
        }
        network51host6: StandardHost {
            parameters:
                routingFile = "network/network51/H6.irt";
                //@display("p=500,100");
        }
        network51host7: StandardHost {
            parameters:
                routingFile = "network/network51/H7.irt";
                //@display("p=500,300");
        }
        network51host8: StandardHost {
            parameters:
                routingFile = "network/network51/H8.irt";
                //@display("p=500,500");
        }
        network51host9: StandardHost {
            parameters:
                routingFile = "network/network51/H9.irt";
                //@display("p=500,700");
        }
        network51host10: StandardHost {
            parameters:
                routingFile = "network/network51/H10.irt";
                //@display("p=500,900");
        }
        network51host11: StandardHost {
            parameters:
                routingFile = "network/network51/H11.irt";
                //@display("p=500,100");
        }
        network51host12: StandardHost {
            parameters:
                routingFile = "network/network51/H12.irt";
                //@display("p=500,300");
        }
        network51host13: StandardHost {
            parameters:
                routingFile = "network/network51/H13.irt";
                //@display("p=500,500");
        }
        network51host14: StandardHost {
            parameters:
                routingFile = "network/network51/H14.irt";
                //@display("p=500,700");
        }
        network51host15: StandardHost {
            parameters:
                routingFile = "network/network51/H15.irt";
                //@display("p=500,900");
        }
        network51host16: StandardHost {
            parameters:
                routingFile = "network/network51/H16.irt";
                //@display("p=500,100");
        }
        network51host17: StandardHost {
            parameters:
                routingFile = "network/network51/H17.irt";
                //@display("p=500,300");
        }
        network51host18: StandardHost {
            parameters:
                routingFile = "network/network51/H18.irt";
                //@display("p=500,500");
        }
        network51host19: StandardHost {
            parameters:
                routingFile = "network/network51/H19.irt";
                //@display("p=500,700");
        }
        network51host20: StandardHost {
            parameters:
                routingFile = "network/network51/H20.irt";
                //@display("p=500,900");
        }
        network51host21: StandardHost {
            parameters:
                routingFile = "network/network51/H21.irt";
                //@display("p=500,100");
        }
        network51host22: StandardHost {
            parameters:
                routingFile = "network/network51/H22.irt";
                //@display("p=500,300");
        }
        network51host23: StandardHost {
            parameters:
                routingFile = "network/network51/H23.irt";
                //@display("p=500,500");
        }
        network51host24: StandardHost {
            parameters:
                routingFile = "network/network51/H24.irt";
                //@display("p=500,700");
        }
        network51host25: StandardHost {
            parameters:
                routingFile = "network/network51/H25.irt";
                //@display("p=500,900");
        }
        network51host26: StandardHost {
            parameters:
                routingFile = "network/network51/H26.irt";
                //@display("p=500,100");
        }
        network51host27: StandardHost {
            parameters:
                routingFile = "network/network51/H27.irt";
                //@display("p=500,300");
        }
        network51host28: StandardHost {
            parameters:
                routingFile = "network/network51/H28.irt";
                //@display("p=500,500");
        }
        network51host29: StandardHost {
            parameters:
                routingFile = "network/network51/H29.irt";
                //@display("p=500,700");
        }
        network51host30: StandardHost {
            parameters:
                routingFile = "network/network51/H30.irt";
                //@display("p=500,900");
        }
        network51host31: StandardHost {
            parameters:
                routingFile = "network/network51/H31.irt";
                //@display("p=500,100");
        }
        network51host32: StandardHost {
            parameters:
                routingFile = "network/network51/H32.irt";
                //@display("p=500,300");
        }
        network51host33: StandardHost {
            parameters:
                routingFile = "network/network51/H33.irt";
                //@display("p=500,500");
        }
        network51host34: StandardHost {
            parameters:
                routingFile = "network/network51/H34.irt";
                //@display("p=500,700");
        }
        network51host35: StandardHost {
            parameters:
                routingFile = "network/network51/H35.irt";
                //@display("p=500,900");
        }
        network51host36: StandardHost {
            parameters:
                routingFile = "network/network51/H36.irt";
                //@display("p=500,100");
        }
        network51host37: StandardHost {
            parameters:
                routingFile = "network/network51/H37.irt";
                //@display("p=500,300");
        }
        network51host38: StandardHost {
            parameters:
                routingFile = "network/network51/H38.irt";
                //@display("p=500,500");
        }
        network51host39: StandardHost {
            parameters:
                routingFile = "network/network51/H39.irt";
                //@display("p=500,700");
        }
        network51host40: StandardHost {
            parameters:
                routingFile = "network/network51/H40.irt";
                //@display("p=500,900");
        }

        network52host1: StandardHost {
            parameters:
                routingFile = "network/network52/H1.irt";
                //@display("p=500,100");
        }
        network52host2: StandardHost {
            parameters:
                routingFile = "network/network52/H2.irt";
                //@display("p=500,300");
        }
        network52host3: StandardHost {
            parameters:
                routingFile = "network/network52/H3.irt";
                //@display("p=500,500");
        }
        network52host4: StandardHost {
            parameters:
                routingFile = "network/network52/H4.irt";
                //@display("p=500,700");
        }
        network52host5: StandardHost {
            parameters:
                routingFile = "network/network52/H5.irt";
                //@display("p=500,900");
        }
        network52host6: StandardHost {
            parameters:
                routingFile = "network/network52/H6.irt";
                //@display("p=500,100");
        }
        network52host7: StandardHost {
            parameters:
                routingFile = "network/network52/H7.irt";
                //@display("p=500,300");
        }
        network52host8: StandardHost {
            parameters:
                routingFile = "network/network52/H8.irt";
                //@display("p=500,500");
        }
        network52host9: StandardHost {
            parameters:
                routingFile = "network/network52/H9.irt";
                //@display("p=500,700");
        }
        network52host10: StandardHost {
            parameters:
                routingFile = "network/network52/H10.irt";
                //@display("p=500,900");
        }
        network52host11: StandardHost {
            parameters:
                routingFile = "network/network52/H11.irt";
                //@display("p=500,100");
        }
        network52host12: StandardHost {
            parameters:
                routingFile = "network/network52/H12.irt";
                //@display("p=500,300");
        }
        network52host13: StandardHost {
            parameters:
                routingFile = "network/network52/H13.irt";
                //@display("p=500,500");
        }
        network52host14: StandardHost {
            parameters:
                routingFile = "network/network52/H14.irt";
                //@display("p=500,700");
        }
        network52host15: StandardHost {
            parameters:
                routingFile = "network/network52/H15.irt";
                //@display("p=500,900");
        }
        network52host16: StandardHost {
            parameters:
                routingFile = "network/network52/H16.irt";
                //@display("p=500,100");
        }
        network52host17: StandardHost {
            parameters:
                routingFile = "network/network52/H17.irt";
                //@display("p=500,300");
        }
        network52host18: StandardHost {
            parameters:
                routingFile = "network/network52/H18.irt";
                //@display("p=500,500");
        }
        network52host19: StandardHost {
            parameters:
                routingFile = "network/network52/H19.irt";
                //@display("p=500,700");
        }
        network52host20: StandardHost {
            parameters:
                routingFile = "network/network52/H20.irt";
                //@display("p=500,900");
        }
        network52host21: StandardHost {
            parameters:
                routingFile = "network/network52/H21.irt";
                //@display("p=500,100");
        }
        network52host22: StandardHost {
            parameters:
                routingFile = "network/network52/H22.irt";
                //@display("p=500,300");
        }
        network52host23: StandardHost {
            parameters:
                routingFile = "network/network52/H23.irt";
                //@display("p=500,500");
        }
        network52host24: StandardHost {
            parameters:
                routingFile = "network/network52/H24.irt";
                //@display("p=500,700");
        }
        network52host25: StandardHost {
            parameters:
                routingFile = "network/network52/H25.irt";
                //@display("p=500,900");
        }
        network52host26: StandardHost {
            parameters:
                routingFile = "network/network52/H26.irt";
                //@display("p=500,100");
        }
        network52host27: StandardHost {
            parameters:
                routingFile = "network/network52/H27.irt";
                //@display("p=500,300");
        }
        network52host28: StandardHost {
            parameters:
                routingFile = "network/network52/H28.irt";
                //@display("p=500,500");
        }
        network52host29: StandardHost {
            parameters:
                routingFile = "network/network52/H29.irt";
                //@display("p=500,700");
        }
        network52host30: StandardHost {
            parameters:
                routingFile = "network/network52/H30.irt";
                //@display("p=500,900");
        }
        network52host31: StandardHost {
            parameters:
                routingFile = "network/network52/H31.irt";
                //@display("p=500,100");
        }
        network52host32: StandardHost {
            parameters:
                routingFile = "network/network52/H32.irt";
                //@display("p=500,300");
        }
        network52host33: StandardHost {
            parameters:
                routingFile = "network/network52/H33.irt";
                //@display("p=500,500");
        }
        network52host34: StandardHost {
            parameters:
                routingFile = "network/network52/H34.irt";
                //@display("p=500,700");
        }
        network52host35: StandardHost {
            parameters:
                routingFile = "network/network52/H35.irt";
                //@display("p=500,900");
        }
        network52host36: StandardHost {
            parameters:
                routingFile = "network/network52/H36.irt";
                //@display("p=500,100");
        }
        network52host37: StandardHost {
            parameters:
                routingFile = "network/network52/H37.irt";
                //@display("p=500,300");
        }
        network52host38: StandardHost {
            parameters:
                routingFile = "network/network52/H38.irt";
                //@display("p=500,500");
        }
        network52host39: StandardHost {
            parameters:
                routingFile = "network/network52/H39.irt";
                //@display("p=500,700");
        }
        network52host40: StandardHost {
            parameters:
                routingFile = "network/network52/H40.irt";
                //@display("p=500,900");
        }

        network53host1: StandardHost {
            parameters:
                routingFile = "network/network53/H1.irt";
                //@display("p=500,100");
        }
        network53host2: StandardHost {
            parameters:
                routingFile = "network/network53/H2.irt";
                //@display("p=500,300");
        }
        network53host3: StandardHost {
            parameters:
                routingFile = "network/network53/H3.irt";
                //@display("p=500,500");
        }
        network53host4: StandardHost {
            parameters:
                routingFile = "network/network53/H4.irt";
                //@display("p=500,700");
        }
        network53host5: StandardHost {
            parameters:
                routingFile = "network/network53/H5.irt";
                //@display("p=500,900");
        }
        network53host6: StandardHost {
            parameters:
                routingFile = "network/network53/H6.irt";
                //@display("p=500,100");
        }
        network53host7: StandardHost {
            parameters:
                routingFile = "network/network53/H7.irt";
                //@display("p=500,300");
        }
        network53host8: StandardHost {
            parameters:
                routingFile = "network/network53/H8.irt";
                //@display("p=500,500");
        }
        network53host9: StandardHost {
            parameters:
                routingFile = "network/network53/H9.irt";
                //@display("p=500,700");
        }
        network53host10: StandardHost {
            parameters:
                routingFile = "network/network53/H10.irt";
                //@display("p=500,900");
        }
        network53host11: StandardHost {
            parameters:
                routingFile = "network/network53/H11.irt";
                //@display("p=500,100");
        }
        network53host12: StandardHost {
            parameters:
                routingFile = "network/network53/H12.irt";
                //@display("p=500,300");
        }
        network53host13: StandardHost {
            parameters:
                routingFile = "network/network53/H13.irt";
                //@display("p=500,500");
        }
        network53host14: StandardHost {
            parameters:
                routingFile = "network/network53/H14.irt";
                //@display("p=500,700");
        }
        network53host15: StandardHost {
            parameters:
                routingFile = "network/network53/H15.irt";
                //@display("p=500,900");
        }
        network53host16: StandardHost {
            parameters:
                routingFile = "network/network53/H16.irt";
                //@display("p=500,100");
        }
        network53host17: StandardHost {
            parameters:
                routingFile = "network/network53/H17.irt";
                //@display("p=500,300");
        }
        network53host18: StandardHost {
            parameters:
                routingFile = "network/network53/H18.irt";
                //@display("p=500,500");
        }
        network53host19: StandardHost {
            parameters:
                routingFile = "network/network53/H19.irt";
                //@display("p=500,700");
        }
        network53host20: StandardHost {
            parameters:
                routingFile = "network/network53/H20.irt";
                //@display("p=500,900");
        }
        network53host21: StandardHost {
            parameters:
                routingFile = "network/network53/H21.irt";
                //@display("p=500,100");
        }
        network53host22: StandardHost {
            parameters:
                routingFile = "network/network53/H22.irt";
                //@display("p=500,300");
        }
        network53host23: StandardHost {
            parameters:
                routingFile = "network/network53/H23.irt";
                //@display("p=500,500");
        }
        network53host24: StandardHost {
            parameters:
                routingFile = "network/network53/H24.irt";
                //@display("p=500,700");
        }
        network53host25: StandardHost {
            parameters:
                routingFile = "network/network53/H25.irt";
                //@display("p=500,900");
        }
        network53host26: StandardHost {
            parameters:
                routingFile = "network/network53/H26.irt";
                //@display("p=500,100");
        }
        network53host27: StandardHost {
            parameters:
                routingFile = "network/network53/H27.irt";
                //@display("p=500,300");
        }
        network53host28: StandardHost {
            parameters:
                routingFile = "network/network53/H28.irt";
                //@display("p=500,500");
        }
        network53host29: StandardHost {
            parameters:
                routingFile = "network/network53/H29.irt";
                //@display("p=500,700");
        }
        network53host30: StandardHost {
            parameters:
                routingFile = "network/network53/H30.irt";
                //@display("p=500,900");
        }
        network53host31: StandardHost {
            parameters:
                routingFile = "network/network53/H31.irt";
                //@display("p=500,100");
        }
        network53host32: StandardHost {
            parameters:
                routingFile = "network/network53/H32.irt";
                //@display("p=500,300");
        }
        network53host33: StandardHost {
            parameters:
                routingFile = "network/network53/H33.irt";
                //@display("p=500,500");
        }
        network53host34: StandardHost {
            parameters:
                routingFile = "network/network53/H34.irt";
                //@display("p=500,700");
        }
        network53host35: StandardHost {
            parameters:
                routingFile = "network/network53/H35.irt";
                //@display("p=500,900");
        }
        network53host36: StandardHost {
            parameters:
                routingFile = "network/network53/H36.irt";
                //@display("p=500,100");
        }
        network53host37: StandardHost {
            parameters:
                routingFile = "network/network53/H37.irt";
                //@display("p=500,300");
        }
        network53host38: StandardHost {
            parameters:
                routingFile = "network/network53/H38.irt";
                //@display("p=500,500");
        }
        network53host39: StandardHost {
            parameters:
                routingFile = "network/network53/H39.irt";
                //@display("p=500,700");
        }
        network53host40: StandardHost {
            parameters:
                routingFile = "network/network53/H40.irt";
                //@display("p=500,900");
        }

        network54host1: StandardHost {
            parameters:
                routingFile = "network/network54/H1.irt";
                //@display("p=500,100");
        }
        network54host2: StandardHost {
            parameters:
                routingFile = "network/network54/H2.irt";
                //@display("p=500,300");
        }
        network54host3: StandardHost {
            parameters:
                routingFile = "network/network54/H3.irt";
                //@display("p=500,500");
        }
        network54host4: StandardHost {
            parameters:
                routingFile = "network/network54/H4.irt";
                //@display("p=500,700");
        }
        network54host5: StandardHost {
            parameters:
                routingFile = "network/network54/H5.irt";
                //@display("p=500,900");
        }
        network54host6: StandardHost {
            parameters:
                routingFile = "network/network54/H6.irt";
                //@display("p=500,100");
        }
        network54host7: StandardHost {
            parameters:
                routingFile = "network/network54/H7.irt";
                //@display("p=500,300");
        }
        network54host8: StandardHost {
            parameters:
                routingFile = "network/network54/H8.irt";
                //@display("p=500,500");
        }
        network54host9: StandardHost {
            parameters:
                routingFile = "network/network54/H9.irt";
                //@display("p=500,700");
        }
        network54host10: StandardHost {
            parameters:
                routingFile = "network/network54/H10.irt";
                //@display("p=500,900");
        }
        network54host11: StandardHost {
            parameters:
                routingFile = "network/network54/H11.irt";
                //@display("p=500,100");
        }
        network54host12: StandardHost {
            parameters:
                routingFile = "network/network54/H12.irt";
                //@display("p=500,300");
        }
        network54host13: StandardHost {
            parameters:
                routingFile = "network/network54/H13.irt";
                //@display("p=500,500");
        }
        network54host14: StandardHost {
            parameters:
                routingFile = "network/network54/H14.irt";
                //@display("p=500,700");
        }
        network54host15: StandardHost {
            parameters:
                routingFile = "network/network54/H15.irt";
                //@display("p=500,900");
        }
        network54host16: StandardHost {
            parameters:
                routingFile = "network/network54/H16.irt";
                //@display("p=500,100");
        }
        network54host17: StandardHost {
            parameters:
                routingFile = "network/network54/H17.irt";
                //@display("p=500,300");
        }
        network54host18: StandardHost {
            parameters:
                routingFile = "network/network54/H18.irt";
                //@display("p=500,500");
        }
        network54host19: StandardHost {
            parameters:
                routingFile = "network/network54/H19.irt";
                //@display("p=500,700");
        }
        network54host20: StandardHost {
            parameters:
                routingFile = "network/network54/H20.irt";
                //@display("p=500,900");
        }
        network54host21: StandardHost {
            parameters:
                routingFile = "network/network54/H21.irt";
                //@display("p=500,100");
        }
        network54host22: StandardHost {
            parameters:
                routingFile = "network/network54/H22.irt";
                //@display("p=500,300");
        }
        network54host23: StandardHost {
            parameters:
                routingFile = "network/network54/H23.irt";
                //@display("p=500,500");
        }
        network54host24: StandardHost {
            parameters:
                routingFile = "network/network54/H24.irt";
                //@display("p=500,700");
        }
        network54host25: StandardHost {
            parameters:
                routingFile = "network/network54/H25.irt";
                //@display("p=500,900");
        }
        network54host26: StandardHost {
            parameters:
                routingFile = "network/network54/H26.irt";
                //@display("p=500,100");
        }
        network54host27: StandardHost {
            parameters:
                routingFile = "network/network54/H27.irt";
                //@display("p=500,300");
        }
        network54host28: StandardHost {
            parameters:
                routingFile = "network/network54/H28.irt";
                //@display("p=500,500");
        }
        network54host29: StandardHost {
            parameters:
                routingFile = "network/network54/H29.irt";
                //@display("p=500,700");
        }
        network54host30: StandardHost {
            parameters:
                routingFile = "network/network54/H30.irt";
                //@display("p=500,900");
        }
        network54host31: StandardHost {
            parameters:
                routingFile = "network/network54/H31.irt";
                //@display("p=500,100");
        }
        network54host32: StandardHost {
            parameters:
                routingFile = "network/network54/H32.irt";
                //@display("p=500,300");
        }
        network54host33: StandardHost {
            parameters:
                routingFile = "network/network54/H33.irt";
                //@display("p=500,500");
        }
        network54host34: StandardHost {
            parameters:
                routingFile = "network/network54/H34.irt";
                //@display("p=500,700");
        }
        network54host35: StandardHost {
            parameters:
                routingFile = "network/network54/H35.irt";
                //@display("p=500,900");
        }
        network54host36: StandardHost {
            parameters:
                routingFile = "network/network54/H36.irt";
                //@display("p=500,100");
        }
        network54host37: StandardHost {
            parameters:
                routingFile = "network/network54/H37.irt";
                //@display("p=500,300");
        }
        network54host38: StandardHost {
            parameters:
                routingFile = "network/network54/H38.irt";
                //@display("p=500,500");
        }
        network54host39: StandardHost {
            parameters:
                routingFile = "network/network54/H39.irt";
                //@display("p=500,700");
        }
        network54host40: StandardHost {
            parameters:
                routingFile = "network/network54/H40.irt";
                //@display("p=500,900");
        }

        network55host1: StandardHost {
            parameters:
                routingFile = "network/network55/H1.irt";
                //@display("p=500,100");
        }
        network55host2: StandardHost {
            parameters:
                routingFile = "network/network55/H2.irt";
                //@display("p=500,300");
        }
        network55host3: StandardHost {
            parameters:
                routingFile = "network/network55/H3.irt";
                //@display("p=500,500");
        }
        network55host4: StandardHost {
            parameters:
                routingFile = "network/network55/H4.irt";
                //@display("p=500,700");
        }
        network55host5: StandardHost {
            parameters:
                routingFile = "network/network55/H5.irt";
                //@display("p=500,900");
        }
        network55host6: StandardHost {
            parameters:
                routingFile = "network/network55/H6.irt";
                //@display("p=500,100");
        }
        network55host7: StandardHost {
            parameters:
                routingFile = "network/network55/H7.irt";
                //@display("p=500,300");
        }
        network55host8: StandardHost {
            parameters:
                routingFile = "network/network55/H8.irt";
                //@display("p=500,500");
        }
        network55host9: StandardHost {
            parameters:
                routingFile = "network/network55/H9.irt";
                //@display("p=500,700");
        }
        network55host10: StandardHost {
            parameters:
                routingFile = "network/network55/H10.irt";
                //@display("p=500,900");
        }
        network55host11: StandardHost {
            parameters:
                routingFile = "network/network55/H11.irt";
                //@display("p=500,100");
        }
        network55host12: StandardHost {
            parameters:
                routingFile = "network/network55/H12.irt";
                //@display("p=500,300");
        }
        network55host13: StandardHost {
            parameters:
                routingFile = "network/network55/H13.irt";
                //@display("p=500,500");
        }
        network55host14: StandardHost {
            parameters:
                routingFile = "network/network55/H14.irt";
                //@display("p=500,700");
        }
        network55host15: StandardHost {
            parameters:
                routingFile = "network/network55/H15.irt";
                //@display("p=500,900");
        }
        network55host16: StandardHost {
            parameters:
                routingFile = "network/network55/H16.irt";
                //@display("p=500,100");
        }
        network55host17: StandardHost {
            parameters:
                routingFile = "network/network55/H17.irt";
                //@display("p=500,300");
        }
        network55host18: StandardHost {
            parameters:
                routingFile = "network/network55/H18.irt";
                //@display("p=500,500");
        }
        network55host19: StandardHost {
            parameters:
                routingFile = "network/network55/H19.irt";
                //@display("p=500,700");
        }
        network55host20: StandardHost {
            parameters:
                routingFile = "network/network55/H20.irt";
                //@display("p=500,900");
        }
        network55host21: StandardHost {
            parameters:
                routingFile = "network/network55/H21.irt";
                //@display("p=500,100");
        }
        network55host22: StandardHost {
            parameters:
                routingFile = "network/network55/H22.irt";
                //@display("p=500,300");
        }
        network55host23: StandardHost {
            parameters:
                routingFile = "network/network55/H23.irt";
                //@display("p=500,500");
        }
        network55host24: StandardHost {
            parameters:
                routingFile = "network/network55/H24.irt";
                //@display("p=500,700");
        }
        network55host25: StandardHost {
            parameters:
                routingFile = "network/network55/H25.irt";
                //@display("p=500,900");
        }
        network55host26: StandardHost {
            parameters:
                routingFile = "network/network55/H26.irt";
                //@display("p=500,100");
        }
        network55host27: StandardHost {
            parameters:
                routingFile = "network/network55/H27.irt";
                //@display("p=500,300");
        }
        network55host28: StandardHost {
            parameters:
                routingFile = "network/network55/H28.irt";
                //@display("p=500,500");
        }
        network55host29: StandardHost {
            parameters:
                routingFile = "network/network55/H29.irt";
                //@display("p=500,700");
        }
        network55host30: StandardHost {
            parameters:
                routingFile = "network/network55/H30.irt";
                //@display("p=500,900");
        }
        network55host31: StandardHost {
            parameters:
                routingFile = "network/network55/H31.irt";
                //@display("p=500,100");
        }
        network55host32: StandardHost {
            parameters:
                routingFile = "network/network55/H32.irt";
                //@display("p=500,300");
        }
        network55host33: StandardHost {
            parameters:
                routingFile = "network/network55/H33.irt";
                //@display("p=500,500");
        }
        network55host34: StandardHost {
            parameters:
                routingFile = "network/network55/H34.irt";
                //@display("p=500,700");
        }
        network55host35: StandardHost {
            parameters:
                routingFile = "network/network55/H35.irt";
                //@display("p=500,900");
        }
        network55host36: StandardHost {
            parameters:
                routingFile = "network/network55/H36.irt";
                //@display("p=500,100");
        }
        network55host37: StandardHost {
            parameters:
                routingFile = "network/network55/H37.irt";
                //@display("p=500,300");
        }
        network55host38: StandardHost {
            parameters:
                routingFile = "network/network55/H38.irt";
                //@display("p=500,500");
        }
        network55host39: StandardHost {
            parameters:
                routingFile = "network/network55/H39.irt";
                //@display("p=500,700");
        }
        network55host40: StandardHost {
            parameters:
                routingFile = "network/network55/H40.irt";
                //@display("p=500,900");
        }

        network56host1: StandardHost {
            parameters:
                routingFile = "network/network56/H1.irt";
                //@display("p=500,100");
        }
        network56host2: StandardHost {
            parameters:
                routingFile = "network/network56/H2.irt";
                //@display("p=500,300");
        }
        network56host3: StandardHost {
            parameters:
                routingFile = "network/network56/H3.irt";
                //@display("p=500,500");
        }
        network56host4: StandardHost {
            parameters:
                routingFile = "network/network56/H4.irt";
                //@display("p=500,700");
        }
        network56host5: StandardHost {
            parameters:
                routingFile = "network/network56/H5.irt";
                //@display("p=500,900");
        }
        network56host6: StandardHost {
            parameters:
                routingFile = "network/network56/H6.irt";
                //@display("p=500,100");
        }
        network56host7: StandardHost {
            parameters:
                routingFile = "network/network56/H7.irt";
                //@display("p=500,300");
        }
        network56host8: StandardHost {
            parameters:
                routingFile = "network/network56/H8.irt";
                //@display("p=500,500");
        }
        network56host9: StandardHost {
            parameters:
                routingFile = "network/network56/H9.irt";
                //@display("p=500,700");
        }
        network56host10: StandardHost {
            parameters:
                routingFile = "network/network56/H10.irt";
                //@display("p=500,900");
        }
        network56host11: StandardHost {
            parameters:
                routingFile = "network/network56/H11.irt";
                //@display("p=500,100");
        }
        network56host12: StandardHost {
            parameters:
                routingFile = "network/network56/H12.irt";
                //@display("p=500,300");
        }
        network56host13: StandardHost {
            parameters:
                routingFile = "network/network56/H13.irt";
                //@display("p=500,500");
        }
        network56host14: StandardHost {
            parameters:
                routingFile = "network/network56/H14.irt";
                //@display("p=500,700");
        }
        network56host15: StandardHost {
            parameters:
                routingFile = "network/network56/H15.irt";
                //@display("p=500,900");
        }
        network56host16: StandardHost {
            parameters:
                routingFile = "network/network56/H16.irt";
                //@display("p=500,100");
        }
        network56host17: StandardHost {
            parameters:
                routingFile = "network/network56/H17.irt";
                //@display("p=500,300");
        }
        network56host18: StandardHost {
            parameters:
                routingFile = "network/network56/H18.irt";
                //@display("p=500,500");
        }
        network56host19: StandardHost {
            parameters:
                routingFile = "network/network56/H19.irt";
                //@display("p=500,700");
        }
        network56host20: StandardHost {
            parameters:
                routingFile = "network/network56/H20.irt";
                //@display("p=500,900");
        }
        network56host21: StandardHost {
            parameters:
                routingFile = "network/network56/H21.irt";
                //@display("p=500,100");
        }
        network56host22: StandardHost {
            parameters:
                routingFile = "network/network56/H22.irt";
                //@display("p=500,300");
        }
        network56host23: StandardHost {
            parameters:
                routingFile = "network/network56/H23.irt";
                //@display("p=500,500");
        }
        network56host24: StandardHost {
            parameters:
                routingFile = "network/network56/H24.irt";
                //@display("p=500,700");
        }
        network56host25: StandardHost {
            parameters:
                routingFile = "network/network56/H25.irt";
                //@display("p=500,900");
        }
        network56host26: StandardHost {
            parameters:
                routingFile = "network/network56/H26.irt";
                //@display("p=500,100");
        }
        network56host27: StandardHost {
            parameters:
                routingFile = "network/network56/H27.irt";
                //@display("p=500,300");
        }
        network56host28: StandardHost {
            parameters:
                routingFile = "network/network56/H28.irt";
                //@display("p=500,500");
        }
        network56host29: StandardHost {
            parameters:
                routingFile = "network/network56/H29.irt";
                //@display("p=500,700");
        }
        network56host30: StandardHost {
            parameters:
                routingFile = "network/network56/H30.irt";
                //@display("p=500,900");
        }
        network56host31: StandardHost {
            parameters:
                routingFile = "network/network56/H31.irt";
                //@display("p=500,100");
        }
        network56host32: StandardHost {
            parameters:
                routingFile = "network/network56/H32.irt";
                //@display("p=500,300");
        }
        network56host33: StandardHost {
            parameters:
                routingFile = "network/network56/H33.irt";
                //@display("p=500,500");
        }
        network56host34: StandardHost {
            parameters:
                routingFile = "network/network56/H34.irt";
                //@display("p=500,700");
        }
        network56host35: StandardHost {
            parameters:
                routingFile = "network/network56/H35.irt";
                //@display("p=500,900");
        }
        network56host36: StandardHost {
            parameters:
                routingFile = "network/network56/H36.irt";
                //@display("p=500,100");
        }
        network56host37: StandardHost {
            parameters:
                routingFile = "network/network56/H37.irt";
                //@display("p=500,300");
        }
        network56host38: StandardHost {
            parameters:
                routingFile = "network/network56/H38.irt";
                //@display("p=500,500");
        }
        network56host39: StandardHost {
            parameters:
                routingFile = "network/network56/H39.irt";
                //@display("p=500,700");
        }
        network56host40: StandardHost {
            parameters:
                routingFile = "network/network56/H40.irt";
                //@display("p=500,900");
        }

        network57host1: StandardHost {
            parameters:
                routingFile = "network/network57/H1.irt";
                //@display("p=500,100");
        }
        network57host2: StandardHost {
            parameters:
                routingFile = "network/network57/H2.irt";
                //@display("p=500,300");
        }
        network57host3: StandardHost {
            parameters:
                routingFile = "network/network57/H3.irt";
                //@display("p=500,500");
        }
        network57host4: StandardHost {
            parameters:
                routingFile = "network/network57/H4.irt";
                //@display("p=500,700");
        }
        network57host5: StandardHost {
            parameters:
                routingFile = "network/network57/H5.irt";
                //@display("p=500,900");
        }
        network57host6: StandardHost {
            parameters:
                routingFile = "network/network57/H6.irt";
                //@display("p=500,100");
        }
        network57host7: StandardHost {
            parameters:
                routingFile = "network/network57/H7.irt";
                //@display("p=500,300");
        }
        network57host8: StandardHost {
            parameters:
                routingFile = "network/network57/H8.irt";
                //@display("p=500,500");
        }
        network57host9: StandardHost {
            parameters:
                routingFile = "network/network57/H9.irt";
                //@display("p=500,700");
        }
        network57host10: StandardHost {
            parameters:
                routingFile = "network/network57/H10.irt";
                //@display("p=500,900");
        }
        network57host11: StandardHost {
            parameters:
                routingFile = "network/network57/H11.irt";
                //@display("p=500,100");
        }
        network57host12: StandardHost {
            parameters:
                routingFile = "network/network57/H12.irt";
                //@display("p=500,300");
        }
        network57host13: StandardHost {
            parameters:
                routingFile = "network/network57/H13.irt";
                //@display("p=500,500");
        }
        network57host14: StandardHost {
            parameters:
                routingFile = "network/network57/H14.irt";
                //@display("p=500,700");
        }
        network57host15: StandardHost {
            parameters:
                routingFile = "network/network57/H15.irt";
                //@display("p=500,900");
        }
        network57host16: StandardHost {
            parameters:
                routingFile = "network/network57/H16.irt";
                //@display("p=500,100");
        }
        network57host17: StandardHost {
            parameters:
                routingFile = "network/network57/H17.irt";
                //@display("p=500,300");
        }
        network57host18: StandardHost {
            parameters:
                routingFile = "network/network57/H18.irt";
                //@display("p=500,500");
        }
        network57host19: StandardHost {
            parameters:
                routingFile = "network/network57/H19.irt";
                //@display("p=500,700");
        }
        network57host20: StandardHost {
            parameters:
                routingFile = "network/network57/H20.irt";
                //@display("p=500,900");
        }
        network57host21: StandardHost {
            parameters:
                routingFile = "network/network57/H21.irt";
                //@display("p=500,100");
        }
        network57host22: StandardHost {
            parameters:
                routingFile = "network/network57/H22.irt";
                //@display("p=500,300");
        }
        network57host23: StandardHost {
            parameters:
                routingFile = "network/network57/H23.irt";
                //@display("p=500,500");
        }
        network57host24: StandardHost {
            parameters:
                routingFile = "network/network57/H24.irt";
                //@display("p=500,700");
        }
        network57host25: StandardHost {
            parameters:
                routingFile = "network/network57/H25.irt";
                //@display("p=500,900");
        }
        network57host26: StandardHost {
            parameters:
                routingFile = "network/network57/H26.irt";
                //@display("p=500,100");
        }
        network57host27: StandardHost {
            parameters:
                routingFile = "network/network57/H27.irt";
                //@display("p=500,300");
        }
        network57host28: StandardHost {
            parameters:
                routingFile = "network/network57/H28.irt";
                //@display("p=500,500");
        }
        network57host29: StandardHost {
            parameters:
                routingFile = "network/network57/H29.irt";
                //@display("p=500,700");
        }
        network57host30: StandardHost {
            parameters:
                routingFile = "network/network57/H30.irt";
                //@display("p=500,900");
        }
        network57host31: StandardHost {
            parameters:
                routingFile = "network/network57/H31.irt";
                //@display("p=500,100");
        }
        network57host32: StandardHost {
            parameters:
                routingFile = "network/network57/H32.irt";
                //@display("p=500,300");
        }
        network57host33: StandardHost {
            parameters:
                routingFile = "network/network57/H33.irt";
                //@display("p=500,500");
        }
        network57host34: StandardHost {
            parameters:
                routingFile = "network/network57/H34.irt";
                //@display("p=500,700");
        }
        network57host35: StandardHost {
            parameters:
                routingFile = "network/network57/H35.irt";
                //@display("p=500,900");
        }
        network57host36: StandardHost {
            parameters:
                routingFile = "network/network57/H36.irt";
                //@display("p=500,100");
        }
        network57host37: StandardHost {
            parameters:
                routingFile = "network/network57/H37.irt";
                //@display("p=500,300");
        }
        network57host38: StandardHost {
            parameters:
                routingFile = "network/network57/H38.irt";
                //@display("p=500,500");
        }
        network57host39: StandardHost {
            parameters:
                routingFile = "network/network57/H39.irt";
                //@display("p=500,700");
        }
        network57host40: StandardHost {
            parameters:
                routingFile = "network/network57/H40.irt";
                //@display("p=500,900");
        }

        network58host1: StandardHost {
            parameters:
                routingFile = "network/network58/H1.irt";
                //@display("p=500,100");
        }
        network58host2: StandardHost {
            parameters:
                routingFile = "network/network58/H2.irt";
                //@display("p=500,300");
        }
        network58host3: StandardHost {
            parameters:
                routingFile = "network/network58/H3.irt";
                //@display("p=500,500");
        }
        network58host4: StandardHost {
            parameters:
                routingFile = "network/network58/H4.irt";
                //@display("p=500,700");
        }
        network58host5: StandardHost {
            parameters:
                routingFile = "network/network58/H5.irt";
                //@display("p=500,900");
        }
        network58host6: StandardHost {
            parameters:
                routingFile = "network/network58/H6.irt";
                //@display("p=500,100");
        }
        network58host7: StandardHost {
            parameters:
                routingFile = "network/network58/H7.irt";
                //@display("p=500,300");
        }
        network58host8: StandardHost {
            parameters:
                routingFile = "network/network58/H8.irt";
                //@display("p=500,500");
        }
        network58host9: StandardHost {
            parameters:
                routingFile = "network/network58/H9.irt";
                //@display("p=500,700");
        }
        network58host10: StandardHost {
            parameters:
                routingFile = "network/network58/H10.irt";
                //@display("p=500,900");
        }
        network58host11: StandardHost {
            parameters:
                routingFile = "network/network58/H11.irt";
                //@display("p=500,100");
        }
        network58host12: StandardHost {
            parameters:
                routingFile = "network/network58/H12.irt";
                //@display("p=500,300");
        }
        network58host13: StandardHost {
            parameters:
                routingFile = "network/network58/H13.irt";
                //@display("p=500,500");
        }
        network58host14: StandardHost {
            parameters:
                routingFile = "network/network58/H14.irt";
                //@display("p=500,700");
        }
        network58host15: StandardHost {
            parameters:
                routingFile = "network/network58/H15.irt";
                //@display("p=500,900");
        }
        network58host16: StandardHost {
            parameters:
                routingFile = "network/network58/H16.irt";
                //@display("p=500,100");
        }
        network58host17: StandardHost {
            parameters:
                routingFile = "network/network58/H17.irt";
                //@display("p=500,300");
        }
        network58host18: StandardHost {
            parameters:
                routingFile = "network/network58/H18.irt";
                //@display("p=500,500");
        }
        network58host19: StandardHost {
            parameters:
                routingFile = "network/network58/H19.irt";
                //@display("p=500,700");
        }
        network58host20: StandardHost {
            parameters:
                routingFile = "network/network58/H20.irt";
                //@display("p=500,900");
        }
        network58host21: StandardHost {
            parameters:
                routingFile = "network/network58/H21.irt";
                //@display("p=500,100");
        }
        network58host22: StandardHost {
            parameters:
                routingFile = "network/network58/H22.irt";
                //@display("p=500,300");
        }
        network58host23: StandardHost {
            parameters:
                routingFile = "network/network58/H23.irt";
                //@display("p=500,500");
        }
        network58host24: StandardHost {
            parameters:
                routingFile = "network/network58/H24.irt";
                //@display("p=500,700");
        }
        network58host25: StandardHost {
            parameters:
                routingFile = "network/network58/H25.irt";
                //@display("p=500,900");
        }
        network58host26: StandardHost {
            parameters:
                routingFile = "network/network58/H26.irt";
                //@display("p=500,100");
        }
        network58host27: StandardHost {
            parameters:
                routingFile = "network/network58/H27.irt";
                //@display("p=500,300");
        }
        network58host28: StandardHost {
            parameters:
                routingFile = "network/network58/H28.irt";
                //@display("p=500,500");
        }
        network58host29: StandardHost {
            parameters:
                routingFile = "network/network58/H29.irt";
                //@display("p=500,700");
        }
        network58host30: StandardHost {
            parameters:
                routingFile = "network/network58/H30.irt";
                //@display("p=500,900");
        }
        network58host31: StandardHost {
            parameters:
                routingFile = "network/network58/H31.irt";
                //@display("p=500,100");
        }
        network58host32: StandardHost {
            parameters:
                routingFile = "network/network58/H32.irt";
                //@display("p=500,300");
        }
        network58host33: StandardHost {
            parameters:
                routingFile = "network/network58/H33.irt";
                //@display("p=500,500");
        }
        network58host34: StandardHost {
            parameters:
                routingFile = "network/network58/H34.irt";
                //@display("p=500,700");
        }
        network58host35: StandardHost {
            parameters:
                routingFile = "network/network58/H35.irt";
                //@display("p=500,900");
        }
        network58host36: StandardHost {
            parameters:
                routingFile = "network/network58/H36.irt";
                //@display("p=500,100");
        }
        network58host37: StandardHost {
            parameters:
                routingFile = "network/network58/H37.irt";
                //@display("p=500,300");
        }
        network58host38: StandardHost {
            parameters:
                routingFile = "network/network58/H38.irt";
                //@display("p=500,500");
        }
        network58host39: StandardHost {
            parameters:
                routingFile = "network/network58/H39.irt";
                //@display("p=500,700");
        }
        network58host40: StandardHost {
            parameters:
                routingFile = "network/network58/H40.irt";
                //@display("p=500,900");
        }

        network59host1: StandardHost {
            parameters:
                routingFile = "network/network59/H1.irt";
                //@display("p=500,100");
        }
        network59host2: StandardHost {
            parameters:
                routingFile = "network/network59/H2.irt";
                //@display("p=500,300");
        }
        network59host3: StandardHost {
            parameters:
                routingFile = "network/network59/H3.irt";
                //@display("p=500,500");
        }
        network59host4: StandardHost {
            parameters:
                routingFile = "network/network59/H4.irt";
                //@display("p=500,700");
        }
        network59host5: StandardHost {
            parameters:
                routingFile = "network/network59/H5.irt";
                //@display("p=500,900");
        }
        network59host6: StandardHost {
            parameters:
                routingFile = "network/network59/H6.irt";
                //@display("p=500,100");
        }
        network59host7: StandardHost {
            parameters:
                routingFile = "network/network59/H7.irt";
                //@display("p=500,300");
        }
        network59host8: StandardHost {
            parameters:
                routingFile = "network/network59/H8.irt";
                //@display("p=500,500");
        }
        network59host9: StandardHost {
            parameters:
                routingFile = "network/network59/H9.irt";
                //@display("p=500,700");
        }
        network59host10: StandardHost {
            parameters:
                routingFile = "network/network59/H10.irt";
                //@display("p=500,900");
        }
        network59host11: StandardHost {
            parameters:
                routingFile = "network/network59/H11.irt";
                //@display("p=500,100");
        }
        network59host12: StandardHost {
            parameters:
                routingFile = "network/network59/H12.irt";
                //@display("p=500,300");
        }
        network59host13: StandardHost {
            parameters:
                routingFile = "network/network59/H13.irt";
                //@display("p=500,500");
        }
        network59host14: StandardHost {
            parameters:
                routingFile = "network/network59/H14.irt";
                //@display("p=500,700");
        }
        network59host15: StandardHost {
            parameters:
                routingFile = "network/network59/H15.irt";
                //@display("p=500,900");
        }
        network59host16: StandardHost {
            parameters:
                routingFile = "network/network59/H16.irt";
                //@display("p=500,100");
        }
        network59host17: StandardHost {
            parameters:
                routingFile = "network/network59/H17.irt";
                //@display("p=500,300");
        }
        network59host18: StandardHost {
            parameters:
                routingFile = "network/network59/H18.irt";
                //@display("p=500,500");
        }
        network59host19: StandardHost {
            parameters:
                routingFile = "network/network59/H19.irt";
                //@display("p=500,700");
        }
        network59host20: StandardHost {
            parameters:
                routingFile = "network/network59/H20.irt";
                //@display("p=500,900");
        }
        network59host21: StandardHost {
            parameters:
                routingFile = "network/network59/H21.irt";
                //@display("p=500,100");
        }
        network59host22: StandardHost {
            parameters:
                routingFile = "network/network59/H22.irt";
                //@display("p=500,300");
        }
        network59host23: StandardHost {
            parameters:
                routingFile = "network/network59/H23.irt";
                //@display("p=500,500");
        }
        network59host24: StandardHost {
            parameters:
                routingFile = "network/network59/H24.irt";
                //@display("p=500,700");
        }
        network59host25: StandardHost {
            parameters:
                routingFile = "network/network59/H25.irt";
                //@display("p=500,900");
        }
        network59host26: StandardHost {
            parameters:
                routingFile = "network/network59/H26.irt";
                //@display("p=500,100");
        }
        network59host27: StandardHost {
            parameters:
                routingFile = "network/network59/H27.irt";
                //@display("p=500,300");
        }
        network59host28: StandardHost {
            parameters:
                routingFile = "network/network59/H28.irt";
                //@display("p=500,500");
        }
        network59host29: StandardHost {
            parameters:
                routingFile = "network/network59/H29.irt";
                //@display("p=500,700");
        }
        network59host30: StandardHost {
            parameters:
                routingFile = "network/network59/H30.irt";
                //@display("p=500,900");
        }
        network59host31: StandardHost {
            parameters:
                routingFile = "network/network59/H31.irt";
                //@display("p=500,100");
        }
        network59host32: StandardHost {
            parameters:
                routingFile = "network/network59/H32.irt";
                //@display("p=500,300");
        }
        network59host33: StandardHost {
            parameters:
                routingFile = "network/network59/H33.irt";
                //@display("p=500,500");
        }
        network59host34: StandardHost {
            parameters:
                routingFile = "network/network59/H34.irt";
                //@display("p=500,700");
        }
        network59host35: StandardHost {
            parameters:
                routingFile = "network/network59/H35.irt";
                //@display("p=500,900");
        }
        network59host36: StandardHost {
            parameters:
                routingFile = "network/network59/H36.irt";
                //@display("p=500,100");
        }
        network59host37: StandardHost {
            parameters:
                routingFile = "network/network59/H37.irt";
                //@display("p=500,300");
        }
        network59host38: StandardHost {
            parameters:
                routingFile = "network/network59/H38.irt";
                //@display("p=500,500");
        }
        network59host39: StandardHost {
            parameters:
                routingFile = "network/network59/H39.irt";
                //@display("p=500,700");
        }
        network59host40: StandardHost {
            parameters:
                routingFile = "network/network59/H40.irt";
                //@display("p=500,900");
        }

        network60host1: StandardHost {
            parameters:
                routingFile = "network/network60/H1.irt";
                //@display("p=500,100");
        }
        network60host2: StandardHost {
            parameters:
                routingFile = "network/network60/H2.irt";
                //@display("p=500,300");
        }
        network60host3: StandardHost {
            parameters:
                routingFile = "network/network60/H3.irt";
                //@display("p=500,500");
        }
        network60host4: StandardHost {
            parameters:
                routingFile = "network/network60/H4.irt";
                //@display("p=500,700");
        }
        network60host5: StandardHost {
            parameters:
                routingFile = "network/network60/H5.irt";
                //@display("p=500,900");
        }
        network60host6: StandardHost {
            parameters:
                routingFile = "network/network60/H6.irt";
                //@display("p=500,100");
        }
        network60host7: StandardHost {
            parameters:
                routingFile = "network/network60/H7.irt";
                //@display("p=500,300");
        }
        network60host8: StandardHost {
            parameters:
                routingFile = "network/network60/H8.irt";
                //@display("p=500,500");
        }
        network60host9: StandardHost {
            parameters:
                routingFile = "network/network60/H9.irt";
                //@display("p=500,700");
        }
        network60host10: StandardHost {
            parameters:
                routingFile = "network/network60/H10.irt";
                //@display("p=500,900");
        }
        network60host11: StandardHost {
            parameters:
                routingFile = "network/network60/H11.irt";
                //@display("p=500,100");
        }
        network60host12: StandardHost {
            parameters:
                routingFile = "network/network60/H12.irt";
                //@display("p=500,300");
        }
        network60host13: StandardHost {
            parameters:
                routingFile = "network/network60/H13.irt";
                //@display("p=500,500");
        }
        network60host14: StandardHost {
            parameters:
                routingFile = "network/network60/H14.irt";
                //@display("p=500,700");
        }
        network60host15: StandardHost {
            parameters:
                routingFile = "network/network60/H15.irt";
                //@display("p=500,900");
        }
        network60host16: StandardHost {
            parameters:
                routingFile = "network/network60/H16.irt";
                //@display("p=500,100");
        }
        network60host17: StandardHost {
            parameters:
                routingFile = "network/network60/H17.irt";
                //@display("p=500,300");
        }
        network60host18: StandardHost {
            parameters:
                routingFile = "network/network60/H18.irt";
                //@display("p=500,500");
        }
        network60host19: StandardHost {
            parameters:
                routingFile = "network/network60/H19.irt";
                //@display("p=500,700");
        }
        network60host20: StandardHost {
            parameters:
                routingFile = "network/network60/H20.irt";
                //@display("p=500,900");
        }
        network60host21: StandardHost {
            parameters:
                routingFile = "network/network60/H21.irt";
                //@display("p=500,100");
        }
        network60host22: StandardHost {
            parameters:
                routingFile = "network/network60/H22.irt";
                //@display("p=500,300");
        }
        network60host23: StandardHost {
            parameters:
                routingFile = "network/network60/H23.irt";
                //@display("p=500,500");
        }
        network60host24: StandardHost {
            parameters:
                routingFile = "network/network60/H24.irt";
                //@display("p=500,700");
        }
        network60host25: StandardHost {
            parameters:
                routingFile = "network/network60/H25.irt";
                //@display("p=500,900");
        }
        network60host26: StandardHost {
            parameters:
                routingFile = "network/network60/H26.irt";
                //@display("p=500,100");
        }
        network60host27: StandardHost {
            parameters:
                routingFile = "network/network60/H27.irt";
                //@display("p=500,300");
        }
        network60host28: StandardHost {
            parameters:
                routingFile = "network/network60/H28.irt";
                //@display("p=500,500");
        }
        network60host29: StandardHost {
            parameters:
                routingFile = "network/network60/H29.irt";
                //@display("p=500,700");
        }
        network60host30: StandardHost {
            parameters:
                routingFile = "network/network60/H30.irt";
                //@display("p=500,900");
        }
        network60host31: StandardHost {
            parameters:
                routingFile = "network/network60/H31.irt";
                //@display("p=500,100");
        }
        network60host32: StandardHost {
            parameters:
                routingFile = "network/network60/H32.irt";
                //@display("p=500,300");
        }
        network60host33: StandardHost {
            parameters:
                routingFile = "network/network60/H33.irt";
                //@display("p=500,500");
        }
        network60host34: StandardHost {
            parameters:
                routingFile = "network/network60/H34.irt";
                //@display("p=500,700");
        }
        network60host35: StandardHost {
            parameters:
                routingFile = "network/network60/H35.irt";
                //@display("p=500,900");
        }
        network60host36: StandardHost {
            parameters:
                routingFile = "network/network60/H36.irt";
                //@display("p=500,100");
        }
        network60host37: StandardHost {
            parameters:
                routingFile = "network/network60/H37.irt";
                //@display("p=500,300");
        }
        network60host38: StandardHost {
            parameters:
                routingFile = "network/network60/H38.irt";
                //@display("p=500,500");
        }
        network60host39: StandardHost {
            parameters:
                routingFile = "network/network60/H39.irt";
                //@display("p=500,700");
        }
        network60host40: StandardHost {
            parameters:
                routingFile = "network/network60/H40.irt";
                //@display("p=500,900");
        }

        network61host1: StandardHost {
            parameters:
                routingFile = "network/network61/H1.irt";
                //@display("p=500,100");
        }
        network61host2: StandardHost {
            parameters:
                routingFile = "network/network61/H2.irt";
                //@display("p=500,300");
        }
        network61host3: StandardHost {
            parameters:
                routingFile = "network/network61/H3.irt";
                //@display("p=500,500");
        }
        network61host4: StandardHost {
            parameters:
                routingFile = "network/network61/H4.irt";
                //@display("p=500,700");
        }
        network61host5: StandardHost {
            parameters:
                routingFile = "network/network61/H5.irt";
                //@display("p=500,900");
        }
        network61host6: StandardHost {
            parameters:
                routingFile = "network/network61/H6.irt";
                //@display("p=500,100");
        }
        network61host7: StandardHost {
            parameters:
                routingFile = "network/network61/H7.irt";
                //@display("p=500,300");
        }
        network61host8: StandardHost {
            parameters:
                routingFile = "network/network61/H8.irt";
                //@display("p=500,500");
        }
        network61host9: StandardHost {
            parameters:
                routingFile = "network/network61/H9.irt";
                //@display("p=500,700");
        }
        network61host10: StandardHost {
            parameters:
                routingFile = "network/network61/H10.irt";
                //@display("p=500,900");
        }
        network61host11: StandardHost {
            parameters:
                routingFile = "network/network61/H11.irt";
                //@display("p=500,100");
        }
        network61host12: StandardHost {
            parameters:
                routingFile = "network/network61/H12.irt";
                //@display("p=500,300");
        }
        network61host13: StandardHost {
            parameters:
                routingFile = "network/network61/H13.irt";
                //@display("p=500,500");
        }
        network61host14: StandardHost {
            parameters:
                routingFile = "network/network61/H14.irt";
                //@display("p=500,700");
        }
        network61host15: StandardHost {
            parameters:
                routingFile = "network/network61/H15.irt";
                //@display("p=500,900");
        }
        network61host16: StandardHost {
            parameters:
                routingFile = "network/network61/H16.irt";
                //@display("p=500,100");
        }
        network61host17: StandardHost {
            parameters:
                routingFile = "network/network61/H17.irt";
                //@display("p=500,300");
        }
        network61host18: StandardHost {
            parameters:
                routingFile = "network/network61/H18.irt";
                //@display("p=500,500");
        }
        network61host19: StandardHost {
            parameters:
                routingFile = "network/network61/H19.irt";
                //@display("p=500,700");
        }
        network61host20: StandardHost {
            parameters:
                routingFile = "network/network61/H20.irt";
                //@display("p=500,900");
        }
        network61host21: StandardHost {
            parameters:
                routingFile = "network/network61/H21.irt";
                //@display("p=500,100");
        }
        network61host22: StandardHost {
            parameters:
                routingFile = "network/network61/H22.irt";
                //@display("p=500,300");
        }
        network61host23: StandardHost {
            parameters:
                routingFile = "network/network61/H23.irt";
                //@display("p=500,500");
        }
        network61host24: StandardHost {
            parameters:
                routingFile = "network/network61/H24.irt";
                //@display("p=500,700");
        }
        network61host25: StandardHost {
            parameters:
                routingFile = "network/network61/H25.irt";
                //@display("p=500,900");
        }
        network61host26: StandardHost {
            parameters:
                routingFile = "network/network61/H26.irt";
                //@display("p=500,100");
        }
        network61host27: StandardHost {
            parameters:
                routingFile = "network/network61/H27.irt";
                //@display("p=500,300");
        }
        network61host28: StandardHost {
            parameters:
                routingFile = "network/network61/H28.irt";
                //@display("p=500,500");
        }
        network61host29: StandardHost {
            parameters:
                routingFile = "network/network61/H29.irt";
                //@display("p=500,700");
        }
        network61host30: StandardHost {
            parameters:
                routingFile = "network/network61/H30.irt";
                //@display("p=500,900");
        }
        network61host31: StandardHost {
            parameters:
                routingFile = "network/network61/H31.irt";
                //@display("p=500,100");
        }
        network61host32: StandardHost {
            parameters:
                routingFile = "network/network61/H32.irt";
                //@display("p=500,300");
        }
        network61host33: StandardHost {
            parameters:
                routingFile = "network/network61/H33.irt";
                //@display("p=500,500");
        }
        network61host34: StandardHost {
            parameters:
                routingFile = "network/network61/H34.irt";
                //@display("p=500,700");
        }
        network61host35: StandardHost {
            parameters:
                routingFile = "network/network61/H35.irt";
                //@display("p=500,900");
        }
        network61host36: StandardHost {
            parameters:
                routingFile = "network/network61/H36.irt";
                //@display("p=500,100");
        }
        network61host37: StandardHost {
            parameters:
                routingFile = "network/network61/H37.irt";
                //@display("p=500,300");
        }
        network61host38: StandardHost {
            parameters:
                routingFile = "network/network61/H38.irt";
                //@display("p=500,500");
        }
        network61host39: StandardHost {
            parameters:
                routingFile = "network/network61/H39.irt";
                //@display("p=500,700");
        }
        network61host40: StandardHost {
            parameters:
                routingFile = "network/network61/H40.irt";
                //@display("p=500,900");
        }

        network62host1: StandardHost {
            parameters:
                routingFile = "network/network62/H1.irt";
                //@display("p=500,100");
        }
        network62host2: StandardHost {
            parameters:
                routingFile = "network/network62/H2.irt";
                //@display("p=500,300");
        }
        network62host3: StandardHost {
            parameters:
                routingFile = "network/network62/H3.irt";
                //@display("p=500,500");
        }
        network62host4: StandardHost {
            parameters:
                routingFile = "network/network62/H4.irt";
                //@display("p=500,700");
        }
        network62host5: StandardHost {
            parameters:
                routingFile = "network/network62/H5.irt";
                //@display("p=500,900");
        }
        network62host6: StandardHost {
            parameters:
                routingFile = "network/network62/H6.irt";
                //@display("p=500,100");
        }
        network62host7: StandardHost {
            parameters:
                routingFile = "network/network62/H7.irt";
                //@display("p=500,300");
        }
        network62host8: StandardHost {
            parameters:
                routingFile = "network/network62/H8.irt";
                //@display("p=500,500");
        }
        network62host9: StandardHost {
            parameters:
                routingFile = "network/network62/H9.irt";
                //@display("p=500,700");
        }
        network62host10: StandardHost {
            parameters:
                routingFile = "network/network62/H10.irt";
                //@display("p=500,900");
        }
        network62host11: StandardHost {
            parameters:
                routingFile = "network/network62/H11.irt";
                //@display("p=500,100");
        }
        network62host12: StandardHost {
            parameters:
                routingFile = "network/network62/H12.irt";
                //@display("p=500,300");
        }
        network62host13: StandardHost {
            parameters:
                routingFile = "network/network62/H13.irt";
                //@display("p=500,500");
        }
        network62host14: StandardHost {
            parameters:
                routingFile = "network/network62/H14.irt";
                //@display("p=500,700");
        }
        network62host15: StandardHost {
            parameters:
                routingFile = "network/network62/H15.irt";
                //@display("p=500,900");
        }
        network62host16: StandardHost {
            parameters:
                routingFile = "network/network62/H16.irt";
                //@display("p=500,100");
        }
        network62host17: StandardHost {
            parameters:
                routingFile = "network/network62/H17.irt";
                //@display("p=500,300");
        }
        network62host18: StandardHost {
            parameters:
                routingFile = "network/network62/H18.irt";
                //@display("p=500,500");
        }
        network62host19: StandardHost {
            parameters:
                routingFile = "network/network62/H19.irt";
                //@display("p=500,700");
        }
        network62host20: StandardHost {
            parameters:
                routingFile = "network/network62/H20.irt";
                //@display("p=500,900");
        }
        network62host21: StandardHost {
            parameters:
                routingFile = "network/network62/H21.irt";
                //@display("p=500,100");
        }
        network62host22: StandardHost {
            parameters:
                routingFile = "network/network62/H22.irt";
                //@display("p=500,300");
        }
        network62host23: StandardHost {
            parameters:
                routingFile = "network/network62/H23.irt";
                //@display("p=500,500");
        }
        network62host24: StandardHost {
            parameters:
                routingFile = "network/network62/H24.irt";
                //@display("p=500,700");
        }
        network62host25: StandardHost {
            parameters:
                routingFile = "network/network62/H25.irt";
                //@display("p=500,900");
        }
        network62host26: StandardHost {
            parameters:
                routingFile = "network/network62/H26.irt";
                //@display("p=500,100");
        }
        network62host27: StandardHost {
            parameters:
                routingFile = "network/network62/H27.irt";
                //@display("p=500,300");
        }
        network62host28: StandardHost {
            parameters:
                routingFile = "network/network62/H28.irt";
                //@display("p=500,500");
        }
        network62host29: StandardHost {
            parameters:
                routingFile = "network/network62/H29.irt";
                //@display("p=500,700");
        }
        network62host30: StandardHost {
            parameters:
                routingFile = "network/network62/H30.irt";
                //@display("p=500,900");
        }
        network62host31: StandardHost {
            parameters:
                routingFile = "network/network62/H31.irt";
                //@display("p=500,100");
        }
        network62host32: StandardHost {
            parameters:
                routingFile = "network/network62/H32.irt";
                //@display("p=500,300");
        }
        network62host33: StandardHost {
            parameters:
                routingFile = "network/network62/H33.irt";
                //@display("p=500,500");
        }
        network62host34: StandardHost {
            parameters:
                routingFile = "network/network62/H34.irt";
                //@display("p=500,700");
        }
        network62host35: StandardHost {
            parameters:
                routingFile = "network/network62/H35.irt";
                //@display("p=500,900");
        }
        network62host36: StandardHost {
            parameters:
                routingFile = "network/network62/H36.irt";
                //@display("p=500,100");
        }
        network62host37: StandardHost {
            parameters:
                routingFile = "network/network62/H37.irt";
                //@display("p=500,300");
        }
        network62host38: StandardHost {
            parameters:
                routingFile = "network/network62/H38.irt";
                //@display("p=500,500");
        }
        network62host39: StandardHost {
            parameters:
                routingFile = "network/network62/H39.irt";
                //@display("p=500,700");
        }
        network62host40: StandardHost {
            parameters:
                routingFile = "network/network62/H40.irt";
                //@display("p=500,900");
        }

        network63host1: StandardHost {
            parameters:
                routingFile = "network/network63/H1.irt";
                //@display("p=500,100");
        }
        network63host2: StandardHost {
            parameters:
                routingFile = "network/network63/H2.irt";
                //@display("p=500,300");
        }
        network63host3: StandardHost {
            parameters:
                routingFile = "network/network63/H3.irt";
                //@display("p=500,500");
        }
        network63host4: StandardHost {
            parameters:
                routingFile = "network/network63/H4.irt";
                //@display("p=500,700");
        }
        network63host5: StandardHost {
            parameters:
                routingFile = "network/network63/H5.irt";
                //@display("p=500,900");
        }
        network63host6: StandardHost {
            parameters:
                routingFile = "network/network63/H6.irt";
                //@display("p=500,100");
        }
        network63host7: StandardHost {
            parameters:
                routingFile = "network/network63/H7.irt";
                //@display("p=500,300");
        }
        network63host8: StandardHost {
            parameters:
                routingFile = "network/network63/H8.irt";
                //@display("p=500,500");
        }
        network63host9: StandardHost {
            parameters:
                routingFile = "network/network63/H9.irt";
                //@display("p=500,700");
        }
        network63host10: StandardHost {
            parameters:
                routingFile = "network/network63/H10.irt";
                //@display("p=500,900");
        }
        network63host11: StandardHost {
            parameters:
                routingFile = "network/network63/H11.irt";
                //@display("p=500,100");
        }
        network63host12: StandardHost {
            parameters:
                routingFile = "network/network63/H12.irt";
                //@display("p=500,300");
        }
        network63host13: StandardHost {
            parameters:
                routingFile = "network/network63/H13.irt";
                //@display("p=500,500");
        }
        network63host14: StandardHost {
            parameters:
                routingFile = "network/network63/H14.irt";
                //@display("p=500,700");
        }
        network63host15: StandardHost {
            parameters:
                routingFile = "network/network63/H15.irt";
                //@display("p=500,900");
        }
        network63host16: StandardHost {
            parameters:
                routingFile = "network/network63/H16.irt";
                //@display("p=500,100");
        }
        network63host17: StandardHost {
            parameters:
                routingFile = "network/network63/H17.irt";
                //@display("p=500,300");
        }
        network63host18: StandardHost {
            parameters:
                routingFile = "network/network63/H18.irt";
                //@display("p=500,500");
        }
        network63host19: StandardHost {
            parameters:
                routingFile = "network/network63/H19.irt";
                //@display("p=500,700");
        }
        network63host20: StandardHost {
            parameters:
                routingFile = "network/network63/H20.irt";
                //@display("p=500,900");
        }
        network63host21: StandardHost {
            parameters:
                routingFile = "network/network63/H21.irt";
                //@display("p=500,100");
        }
        network63host22: StandardHost {
            parameters:
                routingFile = "network/network63/H22.irt";
                //@display("p=500,300");
        }
        network63host23: StandardHost {
            parameters:
                routingFile = "network/network63/H23.irt";
                //@display("p=500,500");
        }
        network63host24: StandardHost {
            parameters:
                routingFile = "network/network63/H24.irt";
                //@display("p=500,700");
        }
        network63host25: StandardHost {
            parameters:
                routingFile = "network/network63/H25.irt";
                //@display("p=500,900");
        }
        network63host26: StandardHost {
            parameters:
                routingFile = "network/network63/H26.irt";
                //@display("p=500,100");
        }
        network63host27: StandardHost {
            parameters:
                routingFile = "network/network63/H27.irt";
                //@display("p=500,300");
        }
        network63host28: StandardHost {
            parameters:
                routingFile = "network/network63/H28.irt";
                //@display("p=500,500");
        }
        network63host29: StandardHost {
            parameters:
                routingFile = "network/network63/H29.irt";
                //@display("p=500,700");
        }
        network63host30: StandardHost {
            parameters:
                routingFile = "network/network63/H30.irt";
                //@display("p=500,900");
        }
        network63host31: StandardHost {
            parameters:
                routingFile = "network/network63/H31.irt";
                //@display("p=500,100");
        }
        network63host32: StandardHost {
            parameters:
                routingFile = "network/network63/H32.irt";
                //@display("p=500,300");
        }
        network63host33: StandardHost {
            parameters:
                routingFile = "network/network63/H33.irt";
                //@display("p=500,500");
        }
        network63host34: StandardHost {
            parameters:
                routingFile = "network/network63/H34.irt";
                //@display("p=500,700");
        }
        network63host35: StandardHost {
            parameters:
                routingFile = "network/network63/H35.irt";
                //@display("p=500,900");
        }
        network63host36: StandardHost {
            parameters:
                routingFile = "network/network63/H36.irt";
                //@display("p=500,100");
        }
        network63host37: StandardHost {
            parameters:
                routingFile = "network/network63/H37.irt";
                //@display("p=500,300");
        }
        network63host38: StandardHost {
            parameters:
                routingFile = "network/network63/H38.irt";
                //@display("p=500,500");
        }
        network63host39: StandardHost {
            parameters:
                routingFile = "network/network63/H39.irt";
                //@display("p=500,700");
        }
        network63host40: StandardHost {
            parameters:
                routingFile = "network/network63/H40.irt";
                //@display("p=500,900");
        }

        network64host1: StandardHost {
            parameters:
                routingFile = "network/network64/H1.irt";
                //@display("p=500,100");
        }
        network64host2: StandardHost {
            parameters:
                routingFile = "network/network64/H2.irt";
                //@display("p=500,300");
        }
        network64host3: StandardHost {
            parameters:
                routingFile = "network/network64/H3.irt";
                //@display("p=500,500");
        }
        network64host4: StandardHost {
            parameters:
                routingFile = "network/network64/H4.irt";
                //@display("p=500,700");
        }
        network64host5: StandardHost {
            parameters:
                routingFile = "network/network64/H5.irt";
                //@display("p=500,900");
        }
        network64host6: StandardHost {
            parameters:
                routingFile = "network/network64/H6.irt";
                //@display("p=500,100");
        }
        network64host7: StandardHost {
            parameters:
                routingFile = "network/network64/H7.irt";
                //@display("p=500,300");
        }
        network64host8: StandardHost {
            parameters:
                routingFile = "network/network64/H8.irt";
                //@display("p=500,500");
        }
        network64host9: StandardHost {
            parameters:
                routingFile = "network/network64/H9.irt";
                //@display("p=500,700");
        }
        network64host10: StandardHost {
            parameters:
                routingFile = "network/network64/H10.irt";
                //@display("p=500,900");
        }
        network64host11: StandardHost {
            parameters:
                routingFile = "network/network64/H11.irt";
                //@display("p=500,100");
        }
        network64host12: StandardHost {
            parameters:
                routingFile = "network/network64/H12.irt";
                //@display("p=500,300");
        }
        network64host13: StandardHost {
            parameters:
                routingFile = "network/network64/H13.irt";
                //@display("p=500,500");
        }
        network64host14: StandardHost {
            parameters:
                routingFile = "network/network64/H14.irt";
                //@display("p=500,700");
        }
        network64host15: StandardHost {
            parameters:
                routingFile = "network/network64/H15.irt";
                //@display("p=500,900");
        }
        network64host16: StandardHost {
            parameters:
                routingFile = "network/network64/H16.irt";
                //@display("p=500,100");
        }
        network64host17: StandardHost {
            parameters:
                routingFile = "network/network64/H17.irt";
                //@display("p=500,300");
        }
        network64host18: StandardHost {
            parameters:
                routingFile = "network/network64/H18.irt";
                //@display("p=500,500");
        }
        network64host19: StandardHost {
            parameters:
                routingFile = "network/network64/H19.irt";
                //@display("p=500,700");
        }
        network64host20: StandardHost {
            parameters:
                routingFile = "network/network64/H20.irt";
                //@display("p=500,900");
        }
        network64host21: StandardHost {
            parameters:
                routingFile = "network/network64/H21.irt";
                //@display("p=500,100");
        }
        network64host22: StandardHost {
            parameters:
                routingFile = "network/network64/H22.irt";
                //@display("p=500,300");
        }
        network64host23: StandardHost {
            parameters:
                routingFile = "network/network64/H23.irt";
                //@display("p=500,500");
        }
        network64host24: StandardHost {
            parameters:
                routingFile = "network/network64/H24.irt";
                //@display("p=500,700");
        }
        network64host25: StandardHost {
            parameters:
                routingFile = "network/network64/H25.irt";
                //@display("p=500,900");
        }
        network64host26: StandardHost {
            parameters:
                routingFile = "network/network64/H26.irt";
                //@display("p=500,100");
        }
        network64host27: StandardHost {
            parameters:
                routingFile = "network/network64/H27.irt";
                //@display("p=500,300");
        }
        network64host28: StandardHost {
            parameters:
                routingFile = "network/network64/H28.irt";
                //@display("p=500,500");
        }
        network64host29: StandardHost {
            parameters:
                routingFile = "network/network64/H29.irt";
                //@display("p=500,700");
        }
        network64host30: StandardHost {
            parameters:
                routingFile = "network/network64/H30.irt";
                //@display("p=500,900");
        }
        network64host31: StandardHost {
            parameters:
                routingFile = "network/network64/H31.irt";
                //@display("p=500,100");
        }
        network64host32: StandardHost {
            parameters:
                routingFile = "network/network64/H32.irt";
                //@display("p=500,300");
        }
        network64host33: StandardHost {
            parameters:
                routingFile = "network/network64/H33.irt";
                //@display("p=500,500");
        }
        network64host34: StandardHost {
            parameters:
                routingFile = "network/network64/H34.irt";
                //@display("p=500,700");
        }
        network64host35: StandardHost {
            parameters:
                routingFile = "network/network64/H35.irt";
                //@display("p=500,900");
        }
        network64host36: StandardHost {
            parameters:
                routingFile = "network/network64/H36.irt";
                //@display("p=500,100");
        }
        network64host37: StandardHost {
            parameters:
                routingFile = "network/network64/H37.irt";
                //@display("p=500,300");
        }
        network64host38: StandardHost {
            parameters:
                routingFile = "network/network64/H38.irt";
                //@display("p=500,500");
        }
        network64host39: StandardHost {
            parameters:
                routingFile = "network/network64/H39.irt";
                //@display("p=500,700");
        }
        network64host40: StandardHost {
            parameters:
                routingFile = "network/network64/H40.irt";
                //@display("p=500,900");
        }

     


        edge1: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules1.dat";
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules1.dat";
                
                routingTable.routingFile = "ToRNode/Edge1.irt";
                @display("p=2000,500");
         
           //     pppFast[numChannelFastSwitch];
           //     pppSlow[numChannelSlowSwitch];
        }
        
        edge2: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules2.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules2.dat";
                
                routingTable.routingFile = "ToRNode/Edge2.irt";
                @display("p=3500,500");
            gates:
         }
         
        
         edge3: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules3.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules3.dat";
                
                routingTable.routingFile = "ToRNode/Edge3.irt";
                @display("p=2000,1000");
         }
        edge4: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules4.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules4.dat";
                
                routingTable.routingFile = "ToRNode/Edge4.irt";
                @display("p=3500,1000");
         }
         edge5: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules5.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules5.dat";
                
                routingTable.routingFile = "ToRNode/Edge5.irt";
                @display("p=2000,1500");
         }
        edge6: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules6.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules6.dat";
                
                routingTable.routingFile = "ToRNode/Edge6.irt";
                @display("p=3500,1500");
         }
          edge7: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules7.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules7.dat";
                
                routingTable.routingFile = "ToRNode/Edge7.irt";
                @display("p=2000,2000");
         }
        edge8: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules8.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules8.dat";
                
                routingTable.routingFile = "ToRNode/Edge8.irt";
                @display("p=3500,2000");
         
         }
   		edge9: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules9.dat";
                                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules9.dat";
                
                routingTable.routingFile = "ToRNode/Edge9.irt";
                @display("p=2000,2500");
         }
        
        edge10: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules10.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules10.dat";
                
                routingTable.routingFile = "ToRNode/Edge10.irt";
                @display("p=3500,2500");
         }
         
        edge11: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules11.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules11.dat";
                
                routingTable.routingFile = "ToRNode/Edge11.irt";
                @display("p=2000,3000");
         }
        edge12: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules12.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules12.dat";
                
                routingTable.routingFile = "ToRNode/Edge12.irt";
                @display("p=3500,3000");
         }
        edge13: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules13.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules13.dat";
                
                routingTable.routingFile = "ToRNode/Edge13.irt";
                @display("p=2000,3500");
         }
        edge14: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules14.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules14.dat";
                
                routingTable.routingFile = "ToRNode/Edge14.irt";
                @display("p=3500,3500");
         }
        edge15: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules15.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules15.dat";
                
                routingTable.routingFile = "ToRNode/Edge15.irt";
                @display("p=2000,4000");
         }
        edge16: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules16.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules16.dat";
                
                routingTable.routingFile = "ToRNode/Edge16.irt";
                @display("p=3500,4000");
         }
        edge17: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules17.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules17.dat";
                
                routingTable.routingFile = "ToRNode/Edge17.irt";
                @display("p=2000,4500");
         }
        edge18: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules18.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules18.dat";
                
                routingTable.routingFile = "ToRNode/Edge18.irt";
                @display("p=3500,4500");
         }
        edge19: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules19.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules19.dat";
                
                routingTable.routingFile = "ToRNode/Edge19.irt";
                @display("p=2000,5000");
         }
        edge20: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules20.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules20.dat";
                
                routingTable.routingFile = "ToRNode/Edge20.irt";
                @display("p=3500,5000");
         }
        edge21: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules21.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules21.dat";
                
                routingTable.routingFile = "ToRNode/Edge21.irt";
                @display("p=2000,5500");
         }
        edge22: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules22.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules22.dat";
                
                routingTable.routingFile = "ToRNode/Edge22.irt";
                @display("p=3500,5500");
         }
        edge23: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules23.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules23.dat";
                
                routingTable.routingFile = "ToRNode/Edge23.irt";
                @display("p=2000,6000");
         }
        edge24: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules24.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules24.dat";
                
                routingTable.routingFile = "ToRNode/Edge24.irt";
                @display("p=3500,6000");
         }
        edge25: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules25.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules25.dat";
                
                routingTable.routingFile = "ToRNode/Edge25.irt";
                @display("p=2000,6500");
         }
        edge26: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules26.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules26.dat";
                
                routingTable.routingFile = "ToRNode/Edge26.irt";
                @display("p=3500,6500");
         }
        edge27: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules27.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules27.dat";
                
                routingTable.routingFile = "ToRNode/Edge27.irt";
                @display("p=2000,7000");
         }
        edge28: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules28.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules28.dat";
                
                routingTable.routingFile = "ToRNode/Edge28.irt";
                @display("p=3500,7000");
         }
        edge29: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules29.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules29.dat";
                
                routingTable.routingFile = "ToRNode/Edge29.irt";
                @display("p=2000,7500");
         }
        edge30: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules30.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules30.dat";
                
                routingTable.routingFile = "ToRNode/Edge30.irt";
                @display("p=3500,7500");
         }
        edge31: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules31.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules31.dat";
                
                routingTable.routingFile = "ToRNode/Edge31.irt";
                @display("p=2000,8000");
         }
        edge32: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules32.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules32.dat";
                
                routingTable.routingFile = "ToRNode/Edge32.irt";
                @display("p=3500,8000");
         }
        edge33: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules33.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules33.dat";
                
                routingTable.routingFile = "ToRNode/Edge33.irt";
                @display("p=2000,8500");
         }
        edge34: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules34.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules34.dat";
                
                routingTable.routingFile = "ToRNode/Edge34.irt";
                @display("p=3500,8500");
         }
        edge35: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules35.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules35.dat";
                
                routingTable.routingFile = "ToRNode/Edge35.irt";
                @display("p=2000,9000");
         }
        edge36: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules36.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules36.dat";
                
                routingTable.routingFile = "ToRNode/Edge36.irt";
                @display("p=3500,9000");
         }
        edge37: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules37.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules37.dat";
                
                routingTable.routingFile = "ToRNode/Edge37.irt";
                @display("p=2000,9500");
         }
        edge38: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules38.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules38.dat";
                
                routingTable.routingFile = "ToRNode/Edge38.irt";
                @display("p=3500,9500");
         }
        edge39: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules39.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules39.dat";
                
                routingTable.routingFile = "ToRNode/Edge39.irt";
                @display("p=2000,10000");
         }
        edge40: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules40.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules40.dat";
                
                routingTable.routingFile = "ToRNode/Edge40.irt";
                @display("p=3500,10000");
         }
        edge41: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules41.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules41.dat";
                
                routingTable.routingFile = "ToRNode/Edge41.irt";
                @display("p=2000,10500");
         }
        edge42: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules42.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules42.dat";
                
                routingTable.routingFile = "ToRNode/Edge42.irt";
                @display("p=3500,10500");
         }
        edge43: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules43.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules43.dat";
                
                routingTable.routingFile = "ToRNode/Edge43.irt";
                @display("p=2000,11000");
         }
        edge44: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules44.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules44.dat";
                
                routingTable.routingFile = "ToRNode/Edge44.irt";
                @display("p=3500,11000");
         }
        edge45: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules45.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules45.dat";
                
                routingTable.routingFile = "ToRNode/Edge45.irt";
                @display("p=2000,11500");
         }
        edge46: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules46.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules46.dat";
                
                routingTable.routingFile = "ToRNode/Edge46.irt";
                @display("p=3500,11500");
         }
        edge47: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules47.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules47.dat";
                
                routingTable.routingFile = "ToRNode/Edge47.irt";
                @display("p=2000,12000");
         }
        edge48: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules48.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules48.dat";
                
                routingTable.routingFile = "ToRNode/Edge48.irt";
                @display("p=3500,12000");
         }
        edge49: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules49.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules49.dat";
                
                routingTable.routingFile = "ToRNode/Edge49.irt";
                @display("p=2000,12500");
         }
        edge50: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules50.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules50.dat";
                
                routingTable.routingFile = "ToRNode/Edge50.irt";
                @display("p=3500,12500");
         }
        edge51: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules51.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules51.dat";
                
                routingTable.routingFile = "ToRNode/Edge51.irt";
                @display("p=2000,13000");
         }
        edge52: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules52.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules52.dat";
                
                routingTable.routingFile = "ToRNode/Edge52.irt";
                @display("p=3500,13000");
         }
        edge53: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules53.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules53.dat";
                
                routingTable.routingFile = "ToRNode/Edge53.irt";
                @display("p=2000,13500");
         }
        edge54: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules54.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules54.dat";
                
                routingTable.routingFile = "ToRNode/Edge54.irt";
                @display("p=3500,13500");
         }
        edge55: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules55.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules55.dat";
                
                routingTable.routingFile = "ToRNode/Edge55.irt";
                @display("p=2000,14000");
         }
        edge56: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules56.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules56.dat";
                
                routingTable.routingFile = "ToRNode/Edge56.irt";
                @display("p=3500,14000");
         }
        edge57: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules57.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules57.dat";
                
                routingTable.routingFile = "ToRNode/Edge57.irt";
                @display("p=2000,14500");
         }
        edge58: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules58.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules58.dat";
                
                routingTable.routingFile = "ToRNode/Edge58.irt";
                @display("p=3500,14500");
         }
        edge59: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules59.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules59.dat";
                
                routingTable.routingFile = "ToRNode/Edge59.irt";
                @display("p=2000,15000");
         }
        edge60: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules60.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules60.dat";
                
                routingTable.routingFile = "ToRNode/Edge60.irt";
                @display("p=3500,15000");
         }
        edge61: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules61.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules61.dat";
                
                routingTable.routingFile = "ToRNode/Edge61.irt";
                @display("p=2000,15500");
         }
        edge62: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules62.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules62.dat";
                
                routingTable.routingFile = "ToRNode/Edge62.irt";
                @display("p=3500,15500");
         }
        edge63: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules63.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules63.dat";
                
                routingTable.routingFile = "ToRNode/Edge63.irt";
                @display("p=2000,16000");
         }
        edge64: OBS_EdgeNode {
            parameters:
                numChannelFastSwitch = numChannelFastSwitch; // Number of output data channels (control channel not included).
                numChannelSlowSwitch = numChannelSlowSwitch;
                obs.assembler.dispatcher.dispatcherRules = "Rules/DispatcherRules64.dat";
                obs.assembler.edgeDestQueue.routeTableFile = "Rules/DispatcherRules64.dat";
                
                routingTable.routingFile = "ToRNode/Edge64.irt";
                @display("p=3500,16000");
         }
         
         
        controller: Controller {
            parameters:
          
 //         	RoutingTableSlowSwitch.routeTableFile = "RoutingFileSlowSwitch.dat";
   //       	RoutingTableFastSwitch.routeTableFile = "RoutingFileFastswitch.dat";
              	
  //            	RoutingTableSlowSwitch.routeTableFile = "RoutingFiles/RoutingFileSlowSwitch60.txt";
  //           	RoutingTableFastSwitch.routeTableFile = "RoutingFiles/RoutingFileFastswitch40.txt";
          
    	RoutingTableSlowSwitch.routeTableFile = "RoutingFiles/RoutingFileSlowSwitch70.txt";
     RoutingTableFastSwitch.routeTableFile = "RoutingFiles/RoutingFileFastswitch30.txt";
          
     //         	RoutingTableSlowSwitch.routeTableFile = "RoutingFiles/RoutingFileSlowSwitch80.txt";
     //         	RoutingTableFastSwitch.routeTableFile = "RoutingFiles/RoutingFileFastswitch20.txt";
         
          //    	RoutingTableSlowSwitch.routeTableFile = "RoutingFiles/RoutingFileSlowSwitch90.txt";
          //    	RoutingTableFastSwitch.routeTableFile = "RoutingFiles/RoutingFileFastswitch10.txt";
              	
              	
 //   RoutingTableFastSwitch.routeTableFile = "RoutingFileFastswitchSeparate.dat";
  //  RoutingTableSlowSwitch.routeTableFile = "RoutingFileFastswitchSeparate.dat";
              	
          
                @display("p=2800,1500;i=block/control");

        }

	controlswitch1: Router {
            @display("p=2800,1000");
            
           routingFile = "Control1.irt";
        }
    

        slowSwitch: CoreNode {
            parameters:
                @display("p=2800,500");

        }

        fastSwitch: CoreNode {
            parameters:
                @display("p=2800,2500");

        }

 controlswitch2: Router {
                @display("p=3000,500");
            
           routingFile = "Control2.irt";
            
        }

    connections:
        
   		controlswitch1.pppg++ <--> fiber <--> controller.pppcontrol++;
        controlswitch1.pppg++ <--> fiber <--> controller.pppconfigure++;
        controlswitch1.pppg++ <--> fiber <-->  fastSwitch.pppconfigure;
		controlswitch2.pppg++ <--> fiber <--> controller.pppcontrol++;
		controlswitch2.pppg++ <--> fiber <--> controller.pppconfigure++;
		controlswitch2.pppg++ <--> fiber <--> slowSwitch.pppconfigure;
		
        controlswitch1.pppg++ <--> fiber <--> edge1.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge2.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge3.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge4.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge5.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge6.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge7.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge8.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge9.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge10.pppcontrol;
        
		controlswitch1.pppg++ <--> fiber <--> edge11.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge12.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge13.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge14.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge15.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge16.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge17.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge18.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge19.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge20.pppcontrol;
       
		controlswitch1.pppg++ <--> fiber <--> edge21.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge22.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge23.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge24.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge25.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge26.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge27.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge28.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge29.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge30.pppcontrol;
       
		controlswitch1.pppg++ <--> fiber <--> edge31.pppcontrol;
        controlswitch1.pppg++ <--> fiber <--> edge32.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge33.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge34.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge35.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge36.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge37.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge38.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge39.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge40.pppcontrol;
       
		controlswitch2.pppg++ <--> fiber <--> edge41.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge42.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge43.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge44.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge45.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge46.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge47.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge48.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge49.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge50.pppcontrol;
       
		controlswitch2.pppg++ <--> fiber <--> edge51.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge52.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge53.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge54.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge55.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge56.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge57.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge58.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge59.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge60.pppcontrol;
       
		controlswitch2.pppg++ <--> fiber <--> edge61.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge62.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge63.pppcontrol;
        controlswitch2.pppg++ <--> fiber <--> edge64.pppcontrol;
       

    //    edge1.pppcontrol <--> fiber <--> controller.pppcontrol++;
     //   edge2.pppcontrol <--> fiber <--> controller.pppcontrol++;
    //    edge3.pppcontrol <--> fiber <--> controller.pppcontrol++;
     //   edge4.pppcontrol <--> fiber <--> controller.pppcontrol++;
      //  edge5.pppcontrol <--> fiber <--> controller.pppcontrol++;
     //   edge6.pppcontrol <--> fiber <--> controller.pppcontrol++;
     //   edge7.pppcontrol <--> fiber <--> controller.pppcontrol++;
      //  edge8.pppcontrol <--> fiber <--> controller.pppcontrol++;
       // edge9.pppcontrol <--> fiber <--> controller.pppcontrol++;
        //edge10.pppcontrol <--> fiber <--> controller.pppcontrol++; 


//        slowSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;
 //       fastSwitch.pppconfigure <--> fiber <--> controller.pppconfigure++;

        network1host1.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host2.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host3.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host4.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host5.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host6.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host7.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host8.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host9.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host10.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host11.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host12.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host13.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host14.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host15.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host16.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host17.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host18.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host19.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host20.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host21.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host22.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host23.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host24.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host25.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host26.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host27.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host28.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host29.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host30.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host31.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host32.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host33.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host34.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host35.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host36.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host37.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host38.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host39.pppg++ <--> fiber <--> edge1.pppIO++;
        network1host40.pppg++ <--> fiber <--> edge1.pppIO++;


        network2host1.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host2.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host3.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host4.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host5.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host6.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host7.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host8.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host9.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host10.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host11.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host12.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host13.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host14.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host15.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host16.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host17.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host18.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host19.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host20.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host21.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host22.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host23.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host24.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host25.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host26.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host27.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host28.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host29.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host30.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host31.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host32.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host33.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host34.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host35.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host36.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host37.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host38.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host39.pppg++ <--> fiber <--> edge2.pppIO++;
        network2host40.pppg++ <--> fiber <--> edge2.pppIO++;
        
        network3host1.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host2.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host3.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host4.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host5.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host6.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host7.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host8.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host9.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host10.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host11.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host12.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host13.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host14.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host15.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host16.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host17.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host18.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host19.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host20.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host21.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host22.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host23.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host24.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host25.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host26.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host27.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host28.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host29.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host30.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host31.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host32.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host33.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host34.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host35.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host36.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host37.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host38.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host39.pppg++ <--> fiber <--> edge3.pppIO++;
        network3host40.pppg++ <--> fiber <--> edge3.pppIO++;


		network4host1.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host2.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host3.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host4.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host5.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host6.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host7.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host8.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host9.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host10.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host11.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host12.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host13.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host14.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host15.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host16.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host17.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host18.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host19.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host20.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host21.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host22.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host23.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host24.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host25.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host26.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host27.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host28.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host29.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host30.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host31.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host32.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host33.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host34.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host35.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host36.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host37.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host38.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host39.pppg++ <--> fiber <--> edge4.pppIO++;
        network4host40.pppg++ <--> fiber <--> edge4.pppIO++;
        
        network5host1.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host2.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host3.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host4.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host5.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host6.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host7.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host8.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host9.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host10.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host11.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host12.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host13.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host14.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host15.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host16.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host17.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host18.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host19.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host20.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host21.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host22.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host23.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host24.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host25.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host26.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host27.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host28.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host29.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host30.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host31.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host32.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host33.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host34.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host35.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host36.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host37.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host38.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host39.pppg++ <--> fiber <--> edge5.pppIO++;
        network5host40.pppg++ <--> fiber <--> edge5.pppIO++;

		network6host1.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host2.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host3.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host4.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host5.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host6.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host7.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host8.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host9.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host10.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host11.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host12.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host13.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host14.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host15.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host16.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host17.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host18.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host19.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host20.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host21.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host22.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host23.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host24.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host25.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host26.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host27.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host28.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host29.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host30.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host31.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host32.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host33.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host34.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host35.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host36.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host37.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host38.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host39.pppg++ <--> fiber <--> edge6.pppIO++;
        network6host40.pppg++ <--> fiber <--> edge6.pppIO++;

		network7host1.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host2.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host3.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host4.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host5.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host6.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host7.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host8.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host9.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host10.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host11.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host12.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host13.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host14.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host15.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host16.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host17.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host18.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host19.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host20.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host21.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host22.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host23.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host24.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host25.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host26.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host27.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host28.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host29.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host30.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host31.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host32.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host33.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host34.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host35.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host36.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host37.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host38.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host39.pppg++ <--> fiber <--> edge7.pppIO++;
        network7host40.pppg++ <--> fiber <--> edge7.pppIO++;
        
        network8host1.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host2.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host3.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host4.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host5.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host6.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host7.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host8.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host9.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host10.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host11.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host12.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host13.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host14.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host15.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host16.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host17.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host18.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host19.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host20.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host21.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host22.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host23.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host24.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host25.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host26.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host27.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host28.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host29.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host30.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host31.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host32.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host33.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host34.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host35.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host36.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host37.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host38.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host39.pppg++ <--> fiber <--> edge8.pppIO++;
        network8host40.pppg++ <--> fiber <--> edge8.pppIO++;
        
        network9host1.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host2.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host3.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host4.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host5.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host6.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host7.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host8.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host9.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host10.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host11.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host12.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host13.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host14.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host15.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host16.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host17.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host18.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host19.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host20.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host21.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host22.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host23.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host24.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host25.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host26.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host27.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host28.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host29.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host30.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host31.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host32.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host33.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host34.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host35.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host36.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host37.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host38.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host39.pppg++ <--> fiber <--> edge9.pppIO++;
        network9host40.pppg++ <--> fiber <--> edge9.pppIO++;
        
        network10host1.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host2.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host3.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host4.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host5.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host6.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host7.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host8.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host9.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host10.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host11.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host12.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host13.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host14.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host15.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host16.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host17.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host18.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host19.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host20.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host21.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host22.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host23.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host24.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host25.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host26.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host27.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host28.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host29.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host30.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host31.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host32.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host33.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host34.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host35.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host36.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host37.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host38.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host39.pppg++ <--> fiber <--> edge10.pppIO++;
        network10host40.pppg++ <--> fiber <--> edge10.pppIO++;
      

	network11host1.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host2.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host3.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host4.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host5.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host6.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host7.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host8.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host9.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host10.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host11.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host12.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host13.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host14.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host15.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host16.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host17.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host18.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host19.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host20.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host21.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host22.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host23.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host24.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host25.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host26.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host27.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host28.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host29.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host30.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host31.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host32.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host33.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host34.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host35.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host36.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host37.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host38.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host39.pppg++ <--> fiber <--> edge11.pppIO++;
        network11host40.pppg++ <--> fiber <--> edge11.pppIO++;
      
	network12host1.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host2.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host3.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host4.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host5.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host6.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host7.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host8.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host9.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host10.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host11.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host12.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host13.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host14.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host15.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host16.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host17.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host18.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host19.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host20.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host21.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host22.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host23.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host24.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host25.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host26.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host27.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host28.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host29.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host30.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host31.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host32.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host33.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host34.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host35.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host36.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host37.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host38.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host39.pppg++ <--> fiber <--> edge12.pppIO++;
        network12host40.pppg++ <--> fiber <--> edge12.pppIO++;
      
  	network13host1.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host2.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host3.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host4.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host5.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host6.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host7.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host8.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host9.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host10.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host11.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host12.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host13.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host14.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host15.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host16.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host17.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host18.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host19.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host20.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host21.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host22.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host23.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host24.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host25.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host26.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host27.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host28.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host29.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host30.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host31.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host32.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host33.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host34.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host35.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host36.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host37.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host38.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host39.pppg++ <--> fiber <--> edge13.pppIO++;
        network13host40.pppg++ <--> fiber <--> edge13.pppIO++;
      
  	network14host1.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host2.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host3.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host4.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host5.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host6.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host7.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host8.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host9.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host10.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host11.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host12.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host13.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host14.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host15.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host16.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host17.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host18.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host19.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host20.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host21.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host22.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host23.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host24.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host25.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host26.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host27.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host28.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host29.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host30.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host31.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host32.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host33.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host34.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host35.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host36.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host37.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host38.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host39.pppg++ <--> fiber <--> edge14.pppIO++;
        network14host40.pppg++ <--> fiber <--> edge14.pppIO++;
      
  	network15host1.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host2.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host3.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host4.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host5.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host6.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host7.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host8.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host9.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host10.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host11.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host12.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host13.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host14.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host15.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host16.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host17.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host18.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host19.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host20.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host21.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host22.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host23.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host24.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host25.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host26.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host27.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host28.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host29.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host30.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host31.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host32.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host33.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host34.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host35.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host36.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host37.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host38.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host39.pppg++ <--> fiber <--> edge15.pppIO++;
        network15host40.pppg++ <--> fiber <--> edge15.pppIO++;
      
  	network16host1.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host2.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host3.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host4.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host5.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host6.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host7.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host8.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host9.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host10.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host11.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host12.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host13.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host14.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host15.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host16.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host17.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host18.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host19.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host20.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host21.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host22.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host23.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host24.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host25.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host26.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host27.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host28.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host29.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host30.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host31.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host32.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host33.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host34.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host35.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host36.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host37.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host38.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host39.pppg++ <--> fiber <--> edge16.pppIO++;
        network16host40.pppg++ <--> fiber <--> edge16.pppIO++;
      
  	network17host1.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host2.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host3.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host4.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host5.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host6.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host7.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host8.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host9.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host10.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host11.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host12.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host13.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host14.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host15.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host16.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host17.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host18.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host19.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host20.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host21.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host22.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host23.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host24.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host25.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host26.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host27.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host28.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host29.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host30.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host31.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host32.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host33.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host34.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host35.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host36.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host37.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host38.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host39.pppg++ <--> fiber <--> edge17.pppIO++;
        network17host40.pppg++ <--> fiber <--> edge17.pppIO++;
      
  	network18host1.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host2.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host3.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host4.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host5.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host6.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host7.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host8.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host9.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host10.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host11.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host12.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host13.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host14.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host15.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host16.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host17.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host18.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host19.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host20.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host21.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host22.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host23.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host24.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host25.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host26.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host27.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host28.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host29.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host30.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host31.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host32.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host33.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host34.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host35.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host36.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host37.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host38.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host39.pppg++ <--> fiber <--> edge18.pppIO++;
        network18host40.pppg++ <--> fiber <--> edge18.pppIO++;
      
  	network19host1.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host2.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host3.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host4.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host5.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host6.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host7.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host8.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host9.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host10.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host11.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host12.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host13.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host14.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host15.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host16.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host17.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host18.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host19.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host20.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host21.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host22.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host23.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host24.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host25.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host26.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host27.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host28.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host29.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host30.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host31.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host32.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host33.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host34.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host35.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host36.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host37.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host38.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host39.pppg++ <--> fiber <--> edge19.pppIO++;
        network19host40.pppg++ <--> fiber <--> edge19.pppIO++;
      
  	network20host1.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host2.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host3.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host4.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host5.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host6.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host7.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host8.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host9.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host10.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host11.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host12.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host13.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host14.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host15.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host16.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host17.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host18.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host19.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host20.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host21.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host22.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host23.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host24.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host25.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host26.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host27.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host28.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host29.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host30.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host31.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host32.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host33.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host34.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host35.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host36.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host37.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host38.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host39.pppg++ <--> fiber <--> edge20.pppIO++;
        network20host40.pppg++ <--> fiber <--> edge20.pppIO++;
      
  	network21host1.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host2.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host3.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host4.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host5.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host6.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host7.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host8.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host9.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host10.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host11.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host12.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host13.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host14.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host15.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host16.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host17.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host18.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host19.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host20.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host21.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host22.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host23.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host24.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host25.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host26.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host27.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host28.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host29.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host30.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host31.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host32.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host33.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host34.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host35.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host36.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host37.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host38.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host39.pppg++ <--> fiber <--> edge21.pppIO++;
        network21host40.pppg++ <--> fiber <--> edge21.pppIO++;
      
  	network22host1.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host2.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host3.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host4.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host5.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host6.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host7.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host8.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host9.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host10.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host11.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host12.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host13.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host14.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host15.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host16.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host17.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host18.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host19.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host20.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host21.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host22.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host23.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host24.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host25.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host26.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host27.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host28.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host29.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host30.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host31.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host32.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host33.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host34.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host35.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host36.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host37.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host38.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host39.pppg++ <--> fiber <--> edge22.pppIO++;
        network22host40.pppg++ <--> fiber <--> edge22.pppIO++;
      
  	network23host1.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host2.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host3.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host4.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host5.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host6.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host7.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host8.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host9.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host10.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host11.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host12.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host13.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host14.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host15.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host16.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host17.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host18.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host19.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host20.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host21.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host22.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host23.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host24.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host25.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host26.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host27.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host28.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host29.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host30.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host31.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host32.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host33.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host34.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host35.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host36.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host37.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host38.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host39.pppg++ <--> fiber <--> edge23.pppIO++;
        network23host40.pppg++ <--> fiber <--> edge23.pppIO++;
      
  	network24host1.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host2.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host3.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host4.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host5.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host6.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host7.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host8.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host9.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host10.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host11.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host12.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host13.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host14.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host15.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host16.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host17.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host18.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host19.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host20.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host21.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host22.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host23.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host24.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host25.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host26.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host27.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host28.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host29.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host30.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host31.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host32.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host33.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host34.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host35.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host36.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host37.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host38.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host39.pppg++ <--> fiber <--> edge24.pppIO++;
        network24host40.pppg++ <--> fiber <--> edge24.pppIO++;
      
  	network25host1.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host2.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host3.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host4.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host5.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host6.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host7.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host8.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host9.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host10.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host11.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host12.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host13.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host14.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host15.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host16.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host17.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host18.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host19.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host20.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host21.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host22.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host23.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host24.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host25.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host26.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host27.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host28.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host29.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host30.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host31.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host32.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host33.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host34.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host35.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host36.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host37.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host38.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host39.pppg++ <--> fiber <--> edge25.pppIO++;
        network25host40.pppg++ <--> fiber <--> edge25.pppIO++;
      
  	network26host1.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host2.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host3.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host4.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host5.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host6.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host7.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host8.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host9.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host10.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host11.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host12.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host13.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host14.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host15.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host16.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host17.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host18.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host19.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host20.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host21.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host22.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host23.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host24.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host25.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host26.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host27.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host28.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host29.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host30.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host31.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host32.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host33.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host34.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host35.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host36.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host37.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host38.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host39.pppg++ <--> fiber <--> edge26.pppIO++;
        network26host40.pppg++ <--> fiber <--> edge26.pppIO++;
      
  	network27host1.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host2.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host3.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host4.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host5.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host6.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host7.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host8.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host9.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host10.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host11.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host12.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host13.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host14.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host15.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host16.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host17.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host18.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host19.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host20.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host21.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host22.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host23.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host24.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host25.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host26.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host27.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host28.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host29.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host30.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host31.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host32.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host33.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host34.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host35.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host36.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host37.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host38.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host39.pppg++ <--> fiber <--> edge27.pppIO++;
        network27host40.pppg++ <--> fiber <--> edge27.pppIO++;
      
  	network28host1.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host2.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host3.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host4.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host5.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host6.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host7.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host8.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host9.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host10.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host11.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host12.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host13.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host14.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host15.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host16.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host17.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host18.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host19.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host20.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host21.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host22.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host23.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host24.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host25.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host26.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host27.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host28.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host29.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host30.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host31.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host32.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host33.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host34.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host35.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host36.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host37.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host38.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host39.pppg++ <--> fiber <--> edge28.pppIO++;
        network28host40.pppg++ <--> fiber <--> edge28.pppIO++;
      
  	network29host1.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host2.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host3.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host4.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host5.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host6.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host7.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host8.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host9.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host10.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host11.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host12.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host13.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host14.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host15.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host16.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host17.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host18.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host19.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host20.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host21.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host22.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host23.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host24.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host25.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host26.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host27.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host28.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host29.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host30.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host31.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host32.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host33.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host34.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host35.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host36.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host37.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host38.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host39.pppg++ <--> fiber <--> edge29.pppIO++;
        network29host40.pppg++ <--> fiber <--> edge29.pppIO++;
      
  	network30host1.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host2.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host3.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host4.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host5.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host6.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host7.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host8.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host9.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host10.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host11.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host12.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host13.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host14.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host15.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host16.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host17.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host18.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host19.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host20.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host21.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host22.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host23.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host24.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host25.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host26.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host27.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host28.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host29.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host30.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host31.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host32.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host33.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host34.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host35.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host36.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host37.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host38.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host39.pppg++ <--> fiber <--> edge30.pppIO++;
        network30host40.pppg++ <--> fiber <--> edge30.pppIO++;
      
  	network31host1.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host2.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host3.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host4.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host5.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host6.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host7.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host8.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host9.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host10.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host11.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host12.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host13.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host14.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host15.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host16.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host17.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host18.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host19.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host20.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host21.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host22.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host23.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host24.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host25.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host26.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host27.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host28.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host29.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host30.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host31.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host32.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host33.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host34.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host35.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host36.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host37.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host38.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host39.pppg++ <--> fiber <--> edge31.pppIO++;
        network31host40.pppg++ <--> fiber <--> edge31.pppIO++;
      
  	network32host1.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host2.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host3.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host4.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host5.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host6.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host7.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host8.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host9.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host10.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host11.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host12.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host13.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host14.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host15.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host16.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host17.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host18.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host19.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host20.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host21.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host22.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host23.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host24.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host25.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host26.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host27.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host28.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host29.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host30.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host31.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host32.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host33.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host34.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host35.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host36.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host37.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host38.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host39.pppg++ <--> fiber <--> edge32.pppIO++;
        network32host40.pppg++ <--> fiber <--> edge32.pppIO++;
      
  	network33host1.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host2.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host3.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host4.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host5.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host6.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host7.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host8.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host9.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host10.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host11.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host12.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host13.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host14.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host15.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host16.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host17.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host18.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host19.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host20.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host21.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host22.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host23.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host24.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host25.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host26.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host27.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host28.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host29.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host30.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host31.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host32.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host33.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host34.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host35.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host36.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host37.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host38.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host39.pppg++ <--> fiber <--> edge33.pppIO++;
        network33host40.pppg++ <--> fiber <--> edge33.pppIO++;
      
  	network34host1.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host2.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host3.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host4.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host5.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host6.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host7.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host8.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host9.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host10.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host11.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host12.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host13.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host14.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host15.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host16.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host17.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host18.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host19.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host20.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host21.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host22.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host23.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host24.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host25.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host26.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host27.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host28.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host29.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host30.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host31.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host32.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host33.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host34.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host35.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host36.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host37.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host38.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host39.pppg++ <--> fiber <--> edge34.pppIO++;
        network34host40.pppg++ <--> fiber <--> edge34.pppIO++;
      
  	network35host1.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host2.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host3.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host4.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host5.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host6.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host7.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host8.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host9.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host10.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host11.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host12.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host13.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host14.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host15.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host16.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host17.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host18.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host19.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host20.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host21.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host22.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host23.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host24.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host25.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host26.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host27.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host28.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host29.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host30.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host31.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host32.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host33.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host34.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host35.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host36.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host37.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host38.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host39.pppg++ <--> fiber <--> edge35.pppIO++;
        network35host40.pppg++ <--> fiber <--> edge35.pppIO++;
      
  	network36host1.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host2.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host3.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host4.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host5.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host6.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host7.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host8.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host9.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host10.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host11.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host12.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host13.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host14.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host15.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host16.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host17.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host18.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host19.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host20.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host21.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host22.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host23.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host24.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host25.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host26.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host27.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host28.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host29.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host30.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host31.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host32.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host33.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host34.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host35.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host36.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host37.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host38.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host39.pppg++ <--> fiber <--> edge36.pppIO++;
        network36host40.pppg++ <--> fiber <--> edge36.pppIO++;
      
  	network37host1.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host2.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host3.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host4.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host5.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host6.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host7.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host8.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host9.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host10.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host11.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host12.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host13.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host14.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host15.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host16.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host17.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host18.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host19.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host20.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host21.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host22.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host23.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host24.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host25.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host26.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host27.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host28.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host29.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host30.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host31.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host32.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host33.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host34.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host35.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host36.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host37.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host38.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host39.pppg++ <--> fiber <--> edge37.pppIO++;
        network37host40.pppg++ <--> fiber <--> edge37.pppIO++;
      
  	network38host1.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host2.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host3.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host4.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host5.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host6.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host7.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host8.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host9.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host10.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host11.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host12.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host13.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host14.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host15.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host16.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host17.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host18.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host19.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host20.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host21.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host22.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host23.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host24.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host25.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host26.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host27.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host28.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host29.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host30.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host31.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host32.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host33.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host34.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host35.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host36.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host37.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host38.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host39.pppg++ <--> fiber <--> edge38.pppIO++;
        network38host40.pppg++ <--> fiber <--> edge38.pppIO++;
      
  	network39host1.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host2.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host3.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host4.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host5.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host6.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host7.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host8.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host9.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host10.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host11.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host12.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host13.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host14.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host15.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host16.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host17.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host18.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host19.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host20.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host21.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host22.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host23.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host24.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host25.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host26.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host27.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host28.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host29.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host30.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host31.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host32.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host33.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host34.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host35.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host36.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host37.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host38.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host39.pppg++ <--> fiber <--> edge39.pppIO++;
        network39host40.pppg++ <--> fiber <--> edge39.pppIO++;
      
  	network40host1.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host2.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host3.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host4.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host5.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host6.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host7.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host8.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host9.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host10.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host11.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host12.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host13.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host14.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host15.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host16.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host17.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host18.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host19.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host20.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host21.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host22.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host23.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host24.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host25.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host26.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host27.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host28.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host29.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host30.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host31.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host32.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host33.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host34.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host35.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host36.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host37.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host38.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host39.pppg++ <--> fiber <--> edge40.pppIO++;
        network40host40.pppg++ <--> fiber <--> edge40.pppIO++;
      
  	network41host1.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host2.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host3.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host4.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host5.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host6.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host7.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host8.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host9.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host10.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host11.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host12.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host13.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host14.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host15.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host16.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host17.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host18.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host19.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host20.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host21.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host22.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host23.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host24.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host25.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host26.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host27.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host28.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host29.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host30.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host31.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host32.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host33.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host34.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host35.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host36.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host37.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host38.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host39.pppg++ <--> fiber <--> edge41.pppIO++;
        network41host40.pppg++ <--> fiber <--> edge41.pppIO++;
      
  	network42host1.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host2.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host3.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host4.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host5.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host6.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host7.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host8.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host9.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host10.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host11.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host12.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host13.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host14.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host15.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host16.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host17.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host18.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host19.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host20.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host21.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host22.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host23.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host24.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host25.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host26.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host27.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host28.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host29.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host30.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host31.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host32.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host33.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host34.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host35.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host36.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host37.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host38.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host39.pppg++ <--> fiber <--> edge42.pppIO++;
        network42host40.pppg++ <--> fiber <--> edge42.pppIO++;
      
  	network43host1.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host2.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host3.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host4.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host5.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host6.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host7.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host8.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host9.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host10.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host11.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host12.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host13.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host14.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host15.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host16.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host17.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host18.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host19.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host20.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host21.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host22.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host23.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host24.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host25.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host26.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host27.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host28.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host29.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host30.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host31.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host32.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host33.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host34.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host35.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host36.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host37.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host38.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host39.pppg++ <--> fiber <--> edge43.pppIO++;
        network43host40.pppg++ <--> fiber <--> edge43.pppIO++;
      
  	network44host1.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host2.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host3.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host4.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host5.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host6.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host7.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host8.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host9.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host10.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host11.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host12.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host13.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host14.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host15.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host16.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host17.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host18.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host19.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host20.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host21.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host22.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host23.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host24.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host25.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host26.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host27.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host28.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host29.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host30.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host31.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host32.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host33.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host34.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host35.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host36.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host37.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host38.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host39.pppg++ <--> fiber <--> edge44.pppIO++;
        network44host40.pppg++ <--> fiber <--> edge44.pppIO++;
      
  	network45host1.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host2.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host3.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host4.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host5.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host6.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host7.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host8.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host9.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host10.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host11.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host12.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host13.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host14.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host15.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host16.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host17.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host18.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host19.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host20.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host21.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host22.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host23.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host24.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host25.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host26.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host27.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host28.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host29.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host30.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host31.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host32.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host33.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host34.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host35.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host36.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host37.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host38.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host39.pppg++ <--> fiber <--> edge45.pppIO++;
        network45host40.pppg++ <--> fiber <--> edge45.pppIO++;
      
  	network46host1.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host2.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host3.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host4.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host5.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host6.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host7.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host8.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host9.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host10.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host11.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host12.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host13.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host14.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host15.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host16.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host17.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host18.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host19.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host20.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host21.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host22.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host23.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host24.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host25.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host26.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host27.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host28.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host29.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host30.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host31.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host32.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host33.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host34.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host35.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host36.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host37.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host38.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host39.pppg++ <--> fiber <--> edge46.pppIO++;
        network46host40.pppg++ <--> fiber <--> edge46.pppIO++;
      
	network47host1.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host2.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host3.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host4.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host5.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host6.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host7.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host8.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host9.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host10.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host11.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host12.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host13.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host14.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host15.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host16.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host17.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host18.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host19.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host20.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host21.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host22.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host23.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host24.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host25.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host26.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host27.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host28.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host29.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host30.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host31.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host32.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host33.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host34.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host35.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host36.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host37.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host38.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host39.pppg++ <--> fiber <--> edge47.pppIO++;
        network47host40.pppg++ <--> fiber <--> edge47.pppIO++;
      
  	network48host1.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host2.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host3.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host4.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host5.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host6.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host7.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host8.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host9.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host10.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host11.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host12.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host13.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host14.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host15.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host16.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host17.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host18.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host19.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host20.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host21.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host22.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host23.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host24.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host25.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host26.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host27.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host28.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host29.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host30.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host31.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host32.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host33.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host34.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host35.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host36.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host37.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host38.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host39.pppg++ <--> fiber <--> edge48.pppIO++;
        network48host40.pppg++ <--> fiber <--> edge48.pppIO++;
      
  	network49host1.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host2.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host3.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host4.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host5.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host6.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host7.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host8.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host9.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host10.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host11.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host12.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host13.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host14.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host15.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host16.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host17.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host18.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host19.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host20.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host21.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host22.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host23.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host24.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host25.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host26.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host27.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host28.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host29.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host30.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host31.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host32.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host33.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host34.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host35.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host36.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host37.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host38.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host39.pppg++ <--> fiber <--> edge49.pppIO++;
        network49host40.pppg++ <--> fiber <--> edge49.pppIO++;
      
  	network50host1.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host2.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host3.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host4.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host5.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host6.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host7.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host8.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host9.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host10.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host11.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host12.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host13.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host14.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host15.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host16.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host17.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host18.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host19.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host20.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host21.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host22.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host23.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host24.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host25.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host26.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host27.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host28.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host29.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host30.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host31.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host32.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host33.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host34.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host35.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host36.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host37.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host38.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host39.pppg++ <--> fiber <--> edge50.pppIO++;
        network50host40.pppg++ <--> fiber <--> edge50.pppIO++;
      
  	network51host1.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host2.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host3.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host4.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host5.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host6.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host7.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host8.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host9.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host10.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host11.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host12.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host13.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host14.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host15.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host16.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host17.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host18.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host19.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host20.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host21.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host22.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host23.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host24.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host25.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host26.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host27.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host28.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host29.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host30.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host31.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host32.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host33.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host34.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host35.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host36.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host37.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host38.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host39.pppg++ <--> fiber <--> edge51.pppIO++;
        network51host40.pppg++ <--> fiber <--> edge51.pppIO++;
      
  	network52host1.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host2.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host3.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host4.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host5.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host6.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host7.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host8.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host9.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host10.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host11.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host12.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host13.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host14.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host15.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host16.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host17.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host18.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host19.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host20.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host21.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host22.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host23.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host24.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host25.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host26.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host27.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host28.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host29.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host30.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host31.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host32.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host33.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host34.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host35.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host36.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host37.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host38.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host39.pppg++ <--> fiber <--> edge52.pppIO++;
        network52host40.pppg++ <--> fiber <--> edge52.pppIO++;
      
  	network53host1.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host2.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host3.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host4.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host5.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host6.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host7.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host8.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host9.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host10.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host11.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host12.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host13.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host14.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host15.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host16.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host17.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host18.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host19.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host20.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host21.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host22.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host23.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host24.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host25.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host26.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host27.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host28.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host29.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host30.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host31.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host32.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host33.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host34.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host35.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host36.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host37.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host38.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host39.pppg++ <--> fiber <--> edge53.pppIO++;
        network53host40.pppg++ <--> fiber <--> edge53.pppIO++;
      
  	network54host1.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host2.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host3.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host4.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host5.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host6.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host7.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host8.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host9.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host10.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host11.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host12.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host13.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host14.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host15.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host16.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host17.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host18.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host19.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host20.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host21.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host22.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host23.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host24.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host25.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host26.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host27.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host28.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host29.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host30.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host31.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host32.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host33.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host34.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host35.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host36.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host37.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host38.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host39.pppg++ <--> fiber <--> edge54.pppIO++;
        network54host40.pppg++ <--> fiber <--> edge54.pppIO++;
      
  	network55host1.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host2.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host3.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host4.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host5.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host6.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host7.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host8.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host9.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host10.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host11.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host12.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host13.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host14.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host15.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host16.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host17.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host18.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host19.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host20.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host21.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host22.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host23.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host24.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host25.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host26.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host27.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host28.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host29.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host30.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host31.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host32.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host33.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host34.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host35.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host36.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host37.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host38.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host39.pppg++ <--> fiber <--> edge55.pppIO++;
        network55host40.pppg++ <--> fiber <--> edge55.pppIO++;
      
  	network56host1.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host2.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host3.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host4.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host5.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host6.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host7.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host8.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host9.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host10.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host11.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host12.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host13.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host14.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host15.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host16.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host17.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host18.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host19.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host20.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host21.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host22.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host23.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host24.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host25.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host26.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host27.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host28.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host29.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host30.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host31.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host32.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host33.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host34.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host35.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host36.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host37.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host38.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host39.pppg++ <--> fiber <--> edge56.pppIO++;
        network56host40.pppg++ <--> fiber <--> edge56.pppIO++;
      
  	network57host1.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host2.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host3.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host4.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host5.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host6.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host7.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host8.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host9.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host10.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host11.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host12.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host13.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host14.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host15.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host16.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host17.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host18.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host19.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host20.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host21.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host22.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host23.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host24.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host25.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host26.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host27.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host28.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host29.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host30.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host31.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host32.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host33.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host34.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host35.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host36.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host37.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host38.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host39.pppg++ <--> fiber <--> edge57.pppIO++;
        network57host40.pppg++ <--> fiber <--> edge57.pppIO++;
      
  	network58host1.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host2.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host3.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host4.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host5.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host6.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host7.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host8.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host9.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host10.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host11.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host12.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host13.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host14.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host15.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host16.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host17.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host18.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host19.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host20.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host21.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host22.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host23.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host24.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host25.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host26.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host27.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host28.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host29.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host30.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host31.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host32.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host33.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host34.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host35.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host36.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host37.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host38.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host39.pppg++ <--> fiber <--> edge58.pppIO++;
        network58host40.pppg++ <--> fiber <--> edge58.pppIO++;
      
  	network59host1.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host2.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host3.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host4.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host5.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host6.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host7.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host8.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host9.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host10.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host11.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host12.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host13.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host14.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host15.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host16.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host17.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host18.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host19.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host20.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host21.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host22.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host23.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host24.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host25.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host26.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host27.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host28.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host29.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host30.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host31.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host32.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host33.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host34.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host35.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host36.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host37.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host38.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host39.pppg++ <--> fiber <--> edge59.pppIO++;
        network59host40.pppg++ <--> fiber <--> edge59.pppIO++;
      
  	network60host1.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host2.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host3.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host4.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host5.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host6.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host7.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host8.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host9.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host10.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host11.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host12.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host13.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host14.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host15.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host16.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host17.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host18.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host19.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host20.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host21.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host22.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host23.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host24.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host25.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host26.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host27.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host28.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host29.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host30.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host31.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host32.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host33.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host34.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host35.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host36.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host37.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host38.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host39.pppg++ <--> fiber <--> edge60.pppIO++;
        network60host40.pppg++ <--> fiber <--> edge60.pppIO++;
      
  	network61host1.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host2.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host3.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host4.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host5.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host6.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host7.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host8.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host9.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host10.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host11.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host12.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host13.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host14.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host15.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host16.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host17.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host18.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host19.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host20.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host21.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host22.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host23.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host24.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host25.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host26.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host27.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host28.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host29.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host30.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host31.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host32.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host33.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host34.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host35.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host36.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host37.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host38.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host39.pppg++ <--> fiber <--> edge61.pppIO++;
        network61host40.pppg++ <--> fiber <--> edge61.pppIO++;
      
  	network62host1.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host2.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host3.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host4.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host5.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host6.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host7.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host8.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host9.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host10.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host11.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host12.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host13.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host14.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host15.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host16.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host17.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host18.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host19.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host20.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host21.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host22.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host23.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host24.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host25.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host26.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host27.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host28.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host29.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host30.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host31.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host32.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host33.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host34.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host35.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host36.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host37.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host38.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host39.pppg++ <--> fiber <--> edge62.pppIO++;
        network62host40.pppg++ <--> fiber <--> edge62.pppIO++;
      
  	network63host1.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host2.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host3.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host4.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host5.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host6.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host7.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host8.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host9.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host10.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host11.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host12.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host13.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host14.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host15.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host16.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host17.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host18.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host19.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host20.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host21.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host22.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host23.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host24.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host25.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host26.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host27.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host28.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host29.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host30.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host31.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host32.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host33.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host34.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host35.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host36.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host37.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host38.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host39.pppg++ <--> fiber <--> edge63.pppIO++;
        network63host40.pppg++ <--> fiber <--> edge63.pppIO++;
      
  	network64host1.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host2.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host3.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host4.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host5.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host6.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host7.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host8.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host9.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host10.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host11.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host12.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host13.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host14.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host15.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host16.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host17.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host18.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host19.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host20.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host21.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host22.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host23.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host24.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host25.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host26.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host27.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host28.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host29.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host30.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host31.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host32.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host33.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host34.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host35.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host36.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host37.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host38.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host39.pppg++ <--> fiber <--> edge64.pppIO++;
        network64host40.pppg++ <--> fiber <--> edge64.pppIO++;
      
  
        //Core 1 connections
      


        for i=0..numChannelSlowSwitch-1 {
            edge1.pppSlow++ <--> fiber <--> slowSwitch.pppIO++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge2.pppSlow++;
        }
 		for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge3.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge4.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge5.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge6.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge7.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge8.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge9.pppSlow++;
        }
       
 	for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge10.pppSlow++;
        }
        
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge11.pppSlow++;
        }
        
for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge12.pppSlow++;
        }
        
for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge13.pppSlow++;
        }
        
for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge14.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge15.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge16.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge17.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge18.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge19.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge20.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge21.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge22.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge23.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge24.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge25.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge26.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge27.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge28.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge29.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge30.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge31.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge32.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge33.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge34.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge35.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge36.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge37.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge38.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge39.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge40.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge41.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge42.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge43.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge44.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge45.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge46.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge47.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge48.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge49.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge50.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge51.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge52.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge53.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge54.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge55.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge56.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge57.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge58.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge59.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge60.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge61.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge62.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge63.pppSlow++;
        }
        for i=0..numChannelSlowSwitch-1 {
            slowSwitch.pppIO++ <--> fiber <--> edge64.pppSlow++;
        }
        
        

        for i=0..numChannelFastSwitch-1 {
            edge1.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge2.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
		for i=0..numChannelFastSwitch-1 {
            edge3.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge4.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge5.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge6.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge7.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge8.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge9.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
        for i=0..numChannelFastSwitch-1 {
            edge10.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }

 for i=0..numChannelFastSwitch-1 {
            edge11.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }
 for i=0..numChannelFastSwitch-1 {
            edge12.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge13.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge14.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge15.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge16.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge17.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge18.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge19.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge20.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge21.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge22.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge23.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge24.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge25.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge26.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge27.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge28.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge29.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge30.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge31.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge32.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge33.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge34.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge35.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge36.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge37.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge38.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge39.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge40.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge41.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge42.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge43.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge44.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge45.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge46.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge47.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge48.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge49.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge50.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge51.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge52.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge53.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge54.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge55.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge56.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge57.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge58.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge59.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge60.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge61.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge62.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge63.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        } for i=0..numChannelFastSwitch-1 {
            edge64.pppFast++ <--> fiber <--> fastSwitch.pppIO++;
        }

}
