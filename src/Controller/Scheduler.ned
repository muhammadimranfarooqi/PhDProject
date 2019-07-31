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

package datacenterssimulation.src.Controller;

//
// TODO auto-generated module
//
simple Scheduler
{
	parameters:
 	
 		double switchTimeSlowSwitch @unit(s); // Switching time for slow MEMS switch.
    	double switchTimeFastSwitch @unit(s); // Switching time for fast Optical switch. 
    	
    	double idleTime @unit(s); // Swi
    	double processingTime @unit(s); // Swi
    	double guardTime @unit(s);
    	double sendInterval @unit(s);
    	double timeout @unit(s);

   		double shortBurstSize @unit(B); // Burst maximum size.
     
   		string fastSwitchAddress;
   		string slowSwitchAddress;
   	 	string controllerAddress;
   		
       
    	
    	int numChannelFastSwitch; // Number of output data channels (control channel not included).
   		int numChannelSlowSwitch; // Number of output data channels (control channel not included).     
        volatile int  maxmessageLength @unit(B); // length of messages to generate, in bytes
        double dataRate @unit(bps); // Data rate of the optical channels.
        double dataRateFast @unit(bps); // Data rate of the optical channels.

   		@signal[dupcpdel](type=cPacket);
        @statistic[dupcpdel](title="Duplicate Control Packet Deleted:"; source=dupcpdel; record=count; interpolationmode=none);

        @signal[controlpacketscheduled](type=cPacket);
        @statistic[controlpacketscheduled](title="Control packet scheduled:"; source=controlpacketscheduled; record=count; interpolationmode=none);

  
   		@signal[algo1](type=cPacket);
        @signal[algo2](type=cPacket);
	    @signal[algo3](type=cPacket);
    	@signal[algo4](type=cPacket);
	    @signal[algo5](type=cPacket);
        @signal[algo6](type=cPacket);
        @signal[algo7](type=cPacket);
	    @signal[algo8](type=cPacket);
    	@signal[algo9](type=cPacket);
	    @signal[algo10](type=cPacket);
      
		@signal[algo11](type=cPacket);
        @signal[algo12](type=cPacket);
	    @signal[algo13](type=cPacket);
    	@signal[algo14](type=cPacket);
	    @signal[algo15](type=cPacket);
        @signal[algo16](type=cPacket);
        @signal[algo17](type=cPacket);
	    @signal[algo18](type=cPacket);
    	@signal[algo19](type=cPacket);
	    @signal[algo20](type=cPacket);
            
        @statistic[algo1st](title="Algo1"; source=algo1; record=count; interpolationmode=none);
      	@statistic[algo2st](title="Algo2"; source=algo2; record=count; interpolationmode=none);
		@statistic[algo3st](title="Algo3"; source=algo3; record=count; interpolationmode=none);   
 		@statistic[algo4st](title="Algo4"; source=algo4; record=count; interpolationmode=none);
		@statistic[algo5st](title="Algo5"; source=algo5; record=count; interpolationmode=none);
		@statistic[algo6st](title="Algo6"; source=algo6; record=count; interpolationmode=none);
      	@statistic[algo7st](title="Algo7"; source=algo7; record=count; interpolationmode=none);
		@statistic[algo8st](title="Algo8"; source=algo8; record=count; interpolationmode=none);   
 		@statistic[algo9st](title="Algo9"; source=algo9; record=count; interpolationmode=none);
		@statistic[algo10st](title="Algo10"; source=algo10; record=count; interpolationmode=none);
		
        @statistic[algo11st](title="Algo11"; source=algo11; record=count; interpolationmode=none);
      	@statistic[algo12st](title="Algo12"; source=algo12; record=count; interpolationmode=none);
		@statistic[algo13st](title="Algo13"; source=algo13; record=count; interpolationmode=none);   
 		@statistic[algo14st](title="Algo14"; source=algo14; record=count; interpolationmode=none);
		@statistic[algo15st](title="Algo15"; source=algo15; record=count; interpolationmode=none);
		@statistic[algo16st](title="Algo16"; source=algo16; record=count; interpolationmode=none);
      	@statistic[algo17st](title="Algo17"; source=algo17; record=count; interpolationmode=none);
		@statistic[algo18st](title="Algo18"; source=algo18; record=count; interpolationmode=none);   
 		@statistic[algo19st](title="Algo19"; source=algo19; record=count; interpolationmode=none);
		@statistic[algo20st](title="Algo20"; source=algo20; record=count; interpolationmode=none);
		
 gates:
	    input in[];
    	output out[];
	   	output configureOut[];
    	input configureIn[];
    	
}
