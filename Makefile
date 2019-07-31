#
# OMNeT++/OMNEST Makefile for DataCentersSimulation
#
# This file was generated with the command:
#  opp_makemake -f --deep -O out -I../inet/src/linklayer/ieee80211/radio -I../inet/src/linklayer/ethernet -I../inet/src/networklayer/common -I../inet/src -I../inet/src/networklayer/icmpv6 -I../inet/src/world/obstacles -I../inet/src/networklayer/manetrouting/base -I../inet/src/networklayer/contract -I../inet/src/mobility -I../inet/src/networklayer/xmipv6 -I../inet/src/linklayer/ieee80211/mgmt -I../inet/src/util -I../inet/src/transport/contract -I../inet/src/linklayer/radio/propagation -I../inet/src/linklayer/ieee80211/radio/errormodel -I../inet/src/world/powercontrol -I../inet/src/linklayer/radio -I../inet/src/util/headerserializers/tcp -I../inet/src/networklayer/ipv4 -I../inet/src/util/headerserializers/ipv4 -I../inet/src/base -I../inet/src/util/headerserializers -I../inet/src/world/radio -I../inet/src/linklayer/ieee80211/mac -I../inet/src/linklayer/ppp -I../inet/src/transport/sctp -I../inet/src/networklayer/ipv6 -I../inet/src/util/headerserializers/udp -I../inet/src/networklayer/ipv6tunneling -I../inet/src/battery/models -I../inet/src/applications/pingapp -I../inet/src/linklayer/contract -I../inet/src/util/headerserializers/sctp -I../inet/src/networklayer/arp -I../inet/src/transport/tcp_common -I../inet/src/transport/udp -L../inet/out/$(CONFIGNAME)/src -linet -DINET_IMPORT -KINET_PROJ=../inet
#

# Name of target to be created (-o option)
TARGET = DataCentersSimulation$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
#USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../inet/src/linklayer/ieee80211/radio \
    -I../inet/src/linklayer/ethernet \
    -I../inet/src/networklayer/common \
    -I../inet/src \
    -I../inet/src/networklayer/icmpv6 \
    -I../inet/src/world/obstacles \
    -I../inet/src/networklayer/manetrouting/base \
    -I../inet/src/networklayer/contract \
    -I../inet/src/mobility \
    -I../inet/src/networklayer/xmipv6 \
    -I../inet/src/linklayer/ieee80211/mgmt \
    -I../inet/src/util \
    -I../inet/src/transport/contract \
    -I../inet/src/linklayer/radio/propagation \
    -I../inet/src/linklayer/ieee80211/radio/errormodel \
    -I../inet/src/world/powercontrol \
    -I../inet/src/linklayer/radio \
    -I../inet/src/util/headerserializers/tcp \
    -I../inet/src/networklayer/ipv4 \
    -I../inet/src/util/headerserializers/ipv4 \
    -I../inet/src/base \
    -I../inet/src/util/headerserializers \
    -I../inet/src/world/radio \
    -I../inet/src/linklayer/ieee80211/mac \
    -I../inet/src/linklayer/ppp \
    -I../inet/src/transport/sctp \
    -I../inet/src/networklayer/ipv6 \
    -I../inet/src/util/headerserializers/udp \
    -I../inet/src/networklayer/ipv6tunneling \
    -I../inet/src/battery/models \
    -I../inet/src/applications/pingapp \
    -I../inet/src/linklayer/contract \
    -I../inet/src/util/headerserializers/sctp \
    -I../inet/src/networklayer/arp \
    -I../inet/src/transport/tcp_common \
    -I../inet/src/transport/udp \
    -I. \
    -IExamples \
    -IExamples/EdgeNodeExample \
    -IExamples/EdgeNodeExample/RoutingFiles \
    -IExamples/EdgeNodeExample/Rules \
    -IExamples/EdgeNodeExample/ToRNode \
    -IExamples/EdgeNodeExample/network \
    -IExamples/EdgeNodeExample/network/network1 \
    -IExamples/EdgeNodeExample/network/network10 \
    -IExamples/EdgeNodeExample/network/network11 \
    -IExamples/EdgeNodeExample/network/network12 \
    -IExamples/EdgeNodeExample/network/network13 \
    -IExamples/EdgeNodeExample/network/network14 \
    -IExamples/EdgeNodeExample/network/network15 \
    -IExamples/EdgeNodeExample/network/network16 \
    -IExamples/EdgeNodeExample/network/network17 \
    -IExamples/EdgeNodeExample/network/network18 \
    -IExamples/EdgeNodeExample/network/network19 \
    -IExamples/EdgeNodeExample/network/network2 \
    -IExamples/EdgeNodeExample/network/network20 \
    -IExamples/EdgeNodeExample/network/network21 \
    -IExamples/EdgeNodeExample/network/network22 \
    -IExamples/EdgeNodeExample/network/network23 \
    -IExamples/EdgeNodeExample/network/network24 \
    -IExamples/EdgeNodeExample/network/network25 \
    -IExamples/EdgeNodeExample/network/network26 \
    -IExamples/EdgeNodeExample/network/network27 \
    -IExamples/EdgeNodeExample/network/network28 \
    -IExamples/EdgeNodeExample/network/network29 \
    -IExamples/EdgeNodeExample/network/network3 \
    -IExamples/EdgeNodeExample/network/network30 \
    -IExamples/EdgeNodeExample/network/network31 \
    -IExamples/EdgeNodeExample/network/network32 \
    -IExamples/EdgeNodeExample/network/network33 \
    -IExamples/EdgeNodeExample/network/network34 \
    -IExamples/EdgeNodeExample/network/network35 \
    -IExamples/EdgeNodeExample/network/network36 \
    -IExamples/EdgeNodeExample/network/network37 \
    -IExamples/EdgeNodeExample/network/network38 \
    -IExamples/EdgeNodeExample/network/network39 \
    -IExamples/EdgeNodeExample/network/network4 \
    -IExamples/EdgeNodeExample/network/network40 \
    -IExamples/EdgeNodeExample/network/network41 \
    -IExamples/EdgeNodeExample/network/network42 \
    -IExamples/EdgeNodeExample/network/network43 \
    -IExamples/EdgeNodeExample/network/network44 \
    -IExamples/EdgeNodeExample/network/network45 \
    -IExamples/EdgeNodeExample/network/network46 \
    -IExamples/EdgeNodeExample/network/network47 \
    -IExamples/EdgeNodeExample/network/network48 \
    -IExamples/EdgeNodeExample/network/network49 \
    -IExamples/EdgeNodeExample/network/network5 \
    -IExamples/EdgeNodeExample/network/network50 \
    -IExamples/EdgeNodeExample/network/network51 \
    -IExamples/EdgeNodeExample/network/network52 \
    -IExamples/EdgeNodeExample/network/network53 \
    -IExamples/EdgeNodeExample/network/network54 \
    -IExamples/EdgeNodeExample/network/network55 \
    -IExamples/EdgeNodeExample/network/network56 \
    -IExamples/EdgeNodeExample/network/network57 \
    -IExamples/EdgeNodeExample/network/network58 \
    -IExamples/EdgeNodeExample/network/network59 \
    -IExamples/EdgeNodeExample/network/network6 \
    -IExamples/EdgeNodeExample/network/network60 \
    -IExamples/EdgeNodeExample/network/network61 \
    -IExamples/EdgeNodeExample/network/network62 \
    -IExamples/EdgeNodeExample/network/network63 \
    -IExamples/EdgeNodeExample/network/network64 \
    -IExamples/EdgeNodeExample/network/network7 \
    -IExamples/EdgeNodeExample/network/network8 \
    -IExamples/EdgeNodeExample/network/network9 \
    -IExamples/EdgeNodeExample/results \
    -IImran \
    -IImran/results \
    -Isrc \
    -Isrc/Controller \
    -Isrc/EdgeNode \
    -Isrc/OpticalSwitch \
    -Isrc/messages \
    -Isrc/misc \
    -Iutils \
    -I"valgrind log"

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../inet/out/$(CONFIGNAME)/src  -linet
LIBS += -Wl,-rpath,`abspath ../inet/out/$(CONFIGNAME)/src`

# Output directory
PROJECT_OUTPUT_DIR = out
PROJECTRELATIVE_PATH =
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/src/Controller/Scheduler.o \
    $O/src/Controller/Horizon.o \
    $O/src/Controller/CoreRoutingTable.o \
    $O/src/EdgeNode/Disassembler.o \
    $O/src/EdgeNode/OBS_DispatcherRule.o \
    $O/src/EdgeNode/OBS_PacketBurstifier.o \
    $O/src/EdgeNode/OBS_BurstSender.o \
    $O/src/EdgeNode/BurstList.o \
    $O/src/EdgeNode/EdgeDestinationQueue.o \
    $O/src/EdgeNode/OBS_PacketDispatcher.o \
    $O/src/EdgeNode/BurstReceiver.o \
    $O/src/OpticalSwitch/Configurator.o \
    $O/src/OpticalSwitch/OpticalCrossConnect.o \
    $O/src/messages/OBS_Burst.o \
    $O/src/misc/OBS_OpticalMonitor.o \
    $O/src/misc/OBS_DropBurst.o \
    $O/src/Controller/CoreRoutingTableEntry_m.o \
    $O/src/Controller/Connection_m.o \
    $O/src/EdgeNode/OBS_BurstifierInfo_m.o \
    $O/src/EdgeNode/EdgeDestinationQueueEntry_m.o \
    $O/src/EdgeNode/OBS_BurstSenderInfo_m.o \
    $O/src/EdgeNode/OBS_ScheduledBurstItem_m.o \
    $O/src/OpticalSwitch/Configure_m.o \
    $O/src/messages/OBS_Burst_m.o \
    $O/src/messages/OBS_BurstControlPacket_m.o

# Message files
MSGFILES = \
    src/Controller/CoreRoutingTableEntry.msg \
    src/Controller/Connection.msg \
    src/EdgeNode/OBS_BurstifierInfo.msg \
    src/EdgeNode/EdgeDestinationQueueEntry.msg \
    src/EdgeNode/OBS_BurstSenderInfo.msg \
    src/EdgeNode/OBS_ScheduledBurstItem.msg \
    src/OpticalSwitch/Configure.msg \
    src/messages/OBS_Burst.msg \
    src/messages/OBS_BurstControlPacket.msg

# Other makefile variables (-K)
INET_PROJ=../inet

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" -loppmain$D $(USERIF_LIBS) $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS) -DINET_IMPORT $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

# we want to recompile everything if COPTS changes,
# so we store COPTS into $COPTS_FILE and have object
# files depend on it (except when "make depend" was called)
COPTS_FILE = $O/.last-copts
ifneq ($(MAKECMDGOALS),depend)
ifneq ("$(COPTS)","$(shell cat $(COPTS_FILE) 2>/dev/null || echo '')")
$(shell $(MKPATH) "$O" && echo "$(COPTS)" >$(COPTS_FILE))
endif
endif

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target
all: $O/$(TARGET)
	$(Q)$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	@echo Creating executable: $@
	$(Q)$(CXX) $(LDFLAGS) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(AS_NEEDED_OFF) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS)

.PHONY: all clean cleanall depend msgheaders

.SUFFIXES: .cc

$O/%.o: %.cc $(COPTS_FILE)
	@$(MKPATH) $(dir $@)
	$(qecho) "$<"
	$(Q)$(CXX) -c $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(qecho) MSGC: $<
	$(Q)$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	$(qecho) Cleaning...
	$(Q)-rm -rf $O
	$(Q)-rm -f DataCentersSimulation DataCentersSimulation.exe libDataCentersSimulation.so libDataCentersSimulation.a libDataCentersSimulation.dll libDataCentersSimulation.dylib
	$(Q)-rm -f ./*_m.cc ./*_m.h
	$(Q)-rm -f Examples/*_m.cc Examples/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/*_m.cc Examples/EdgeNodeExample/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/RoutingFiles/*_m.cc Examples/EdgeNodeExample/RoutingFiles/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/Rules/*_m.cc Examples/EdgeNodeExample/Rules/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/ToRNode/*_m.cc Examples/EdgeNodeExample/ToRNode/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/*_m.cc Examples/EdgeNodeExample/network/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network1/*_m.cc Examples/EdgeNodeExample/network/network1/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network10/*_m.cc Examples/EdgeNodeExample/network/network10/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network11/*_m.cc Examples/EdgeNodeExample/network/network11/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network12/*_m.cc Examples/EdgeNodeExample/network/network12/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network13/*_m.cc Examples/EdgeNodeExample/network/network13/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network14/*_m.cc Examples/EdgeNodeExample/network/network14/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network15/*_m.cc Examples/EdgeNodeExample/network/network15/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network16/*_m.cc Examples/EdgeNodeExample/network/network16/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network17/*_m.cc Examples/EdgeNodeExample/network/network17/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network18/*_m.cc Examples/EdgeNodeExample/network/network18/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network19/*_m.cc Examples/EdgeNodeExample/network/network19/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network2/*_m.cc Examples/EdgeNodeExample/network/network2/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network20/*_m.cc Examples/EdgeNodeExample/network/network20/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network21/*_m.cc Examples/EdgeNodeExample/network/network21/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network22/*_m.cc Examples/EdgeNodeExample/network/network22/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network23/*_m.cc Examples/EdgeNodeExample/network/network23/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network24/*_m.cc Examples/EdgeNodeExample/network/network24/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network25/*_m.cc Examples/EdgeNodeExample/network/network25/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network26/*_m.cc Examples/EdgeNodeExample/network/network26/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network27/*_m.cc Examples/EdgeNodeExample/network/network27/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network28/*_m.cc Examples/EdgeNodeExample/network/network28/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network29/*_m.cc Examples/EdgeNodeExample/network/network29/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network3/*_m.cc Examples/EdgeNodeExample/network/network3/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network30/*_m.cc Examples/EdgeNodeExample/network/network30/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network31/*_m.cc Examples/EdgeNodeExample/network/network31/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network32/*_m.cc Examples/EdgeNodeExample/network/network32/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network33/*_m.cc Examples/EdgeNodeExample/network/network33/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network34/*_m.cc Examples/EdgeNodeExample/network/network34/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network35/*_m.cc Examples/EdgeNodeExample/network/network35/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network36/*_m.cc Examples/EdgeNodeExample/network/network36/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network37/*_m.cc Examples/EdgeNodeExample/network/network37/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network38/*_m.cc Examples/EdgeNodeExample/network/network38/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network39/*_m.cc Examples/EdgeNodeExample/network/network39/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network4/*_m.cc Examples/EdgeNodeExample/network/network4/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network40/*_m.cc Examples/EdgeNodeExample/network/network40/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network41/*_m.cc Examples/EdgeNodeExample/network/network41/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network42/*_m.cc Examples/EdgeNodeExample/network/network42/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network43/*_m.cc Examples/EdgeNodeExample/network/network43/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network44/*_m.cc Examples/EdgeNodeExample/network/network44/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network45/*_m.cc Examples/EdgeNodeExample/network/network45/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network46/*_m.cc Examples/EdgeNodeExample/network/network46/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network47/*_m.cc Examples/EdgeNodeExample/network/network47/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network48/*_m.cc Examples/EdgeNodeExample/network/network48/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network49/*_m.cc Examples/EdgeNodeExample/network/network49/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network5/*_m.cc Examples/EdgeNodeExample/network/network5/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network50/*_m.cc Examples/EdgeNodeExample/network/network50/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network51/*_m.cc Examples/EdgeNodeExample/network/network51/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network52/*_m.cc Examples/EdgeNodeExample/network/network52/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network53/*_m.cc Examples/EdgeNodeExample/network/network53/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network54/*_m.cc Examples/EdgeNodeExample/network/network54/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network55/*_m.cc Examples/EdgeNodeExample/network/network55/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network56/*_m.cc Examples/EdgeNodeExample/network/network56/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network57/*_m.cc Examples/EdgeNodeExample/network/network57/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network58/*_m.cc Examples/EdgeNodeExample/network/network58/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network59/*_m.cc Examples/EdgeNodeExample/network/network59/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network6/*_m.cc Examples/EdgeNodeExample/network/network6/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network60/*_m.cc Examples/EdgeNodeExample/network/network60/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network61/*_m.cc Examples/EdgeNodeExample/network/network61/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network62/*_m.cc Examples/EdgeNodeExample/network/network62/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network63/*_m.cc Examples/EdgeNodeExample/network/network63/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network64/*_m.cc Examples/EdgeNodeExample/network/network64/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network7/*_m.cc Examples/EdgeNodeExample/network/network7/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network8/*_m.cc Examples/EdgeNodeExample/network/network8/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/network/network9/*_m.cc Examples/EdgeNodeExample/network/network9/*_m.h
	$(Q)-rm -f Examples/EdgeNodeExample/results/*_m.cc Examples/EdgeNodeExample/results/*_m.h
	$(Q)-rm -f Imran/*_m.cc Imran/*_m.h
	$(Q)-rm -f Imran/results/*_m.cc Imran/results/*_m.h
	$(Q)-rm -f src/*_m.cc src/*_m.h
	$(Q)-rm -f src/Controller/*_m.cc src/Controller/*_m.h
	$(Q)-rm -f src/EdgeNode/*_m.cc src/EdgeNode/*_m.h
	$(Q)-rm -f src/OpticalSwitch/*_m.cc src/OpticalSwitch/*_m.h
	$(Q)-rm -f src/messages/*_m.cc src/messages/*_m.h
	$(Q)-rm -f src/misc/*_m.cc src/misc/*_m.h
	$(Q)-rm -f utils/*_m.cc utils/*_m.h
	$(Q)-rm -f valgrind log/*_m.cc valgrind log/*_m.h

cleanall: clean
	$(Q)-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(qecho) Creating dependencies...
	$(Q)$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc Examples/*.cc Examples/EdgeNodeExample/*.cc Examples/EdgeNodeExample/RoutingFiles/*.cc Examples/EdgeNodeExample/Rules/*.cc Examples/EdgeNodeExample/ToRNode/*.cc Examples/EdgeNodeExample/network/*.cc Examples/EdgeNodeExample/network/network1/*.cc Examples/EdgeNodeExample/network/network10/*.cc Examples/EdgeNodeExample/network/network11/*.cc Examples/EdgeNodeExample/network/network12/*.cc Examples/EdgeNodeExample/network/network13/*.cc Examples/EdgeNodeExample/network/network14/*.cc Examples/EdgeNodeExample/network/network15/*.cc Examples/EdgeNodeExample/network/network16/*.cc Examples/EdgeNodeExample/network/network17/*.cc Examples/EdgeNodeExample/network/network18/*.cc Examples/EdgeNodeExample/network/network19/*.cc Examples/EdgeNodeExample/network/network2/*.cc Examples/EdgeNodeExample/network/network20/*.cc Examples/EdgeNodeExample/network/network21/*.cc Examples/EdgeNodeExample/network/network22/*.cc Examples/EdgeNodeExample/network/network23/*.cc Examples/EdgeNodeExample/network/network24/*.cc Examples/EdgeNodeExample/network/network25/*.cc Examples/EdgeNodeExample/network/network26/*.cc Examples/EdgeNodeExample/network/network27/*.cc Examples/EdgeNodeExample/network/network28/*.cc Examples/EdgeNodeExample/network/network29/*.cc Examples/EdgeNodeExample/network/network3/*.cc Examples/EdgeNodeExample/network/network30/*.cc Examples/EdgeNodeExample/network/network31/*.cc Examples/EdgeNodeExample/network/network32/*.cc Examples/EdgeNodeExample/network/network33/*.cc Examples/EdgeNodeExample/network/network34/*.cc Examples/EdgeNodeExample/network/network35/*.cc Examples/EdgeNodeExample/network/network36/*.cc Examples/EdgeNodeExample/network/network37/*.cc Examples/EdgeNodeExample/network/network38/*.cc Examples/EdgeNodeExample/network/network39/*.cc Examples/EdgeNodeExample/network/network4/*.cc Examples/EdgeNodeExample/network/network40/*.cc Examples/EdgeNodeExample/network/network41/*.cc Examples/EdgeNodeExample/network/network42/*.cc Examples/EdgeNodeExample/network/network43/*.cc Examples/EdgeNodeExample/network/network44/*.cc Examples/EdgeNodeExample/network/network45/*.cc Examples/EdgeNodeExample/network/network46/*.cc Examples/EdgeNodeExample/network/network47/*.cc Examples/EdgeNodeExample/network/network48/*.cc Examples/EdgeNodeExample/network/network49/*.cc Examples/EdgeNodeExample/network/network5/*.cc Examples/EdgeNodeExample/network/network50/*.cc Examples/EdgeNodeExample/network/network51/*.cc Examples/EdgeNodeExample/network/network52/*.cc Examples/EdgeNodeExample/network/network53/*.cc Examples/EdgeNodeExample/network/network54/*.cc Examples/EdgeNodeExample/network/network55/*.cc Examples/EdgeNodeExample/network/network56/*.cc Examples/EdgeNodeExample/network/network57/*.cc Examples/EdgeNodeExample/network/network58/*.cc Examples/EdgeNodeExample/network/network59/*.cc Examples/EdgeNodeExample/network/network6/*.cc Examples/EdgeNodeExample/network/network60/*.cc Examples/EdgeNodeExample/network/network61/*.cc Examples/EdgeNodeExample/network/network62/*.cc Examples/EdgeNodeExample/network/network63/*.cc Examples/EdgeNodeExample/network/network64/*.cc Examples/EdgeNodeExample/network/network7/*.cc Examples/EdgeNodeExample/network/network8/*.cc Examples/EdgeNodeExample/network/network9/*.cc Examples/EdgeNodeExample/results/*.cc Imran/*.cc Imran/results/*.cc src/*.cc src/Controller/*.cc src/EdgeNode/*.cc src/OpticalSwitch/*.cc src/messages/*.cc src/misc/*.cc utils/*.cc valgrind log/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/src/Controller/Connection_m.o: src/Controller/Connection_m.cc \
	src/Controller/Connection_m.h
$O/src/Controller/CoreRoutingTable.o: src/Controller/CoreRoutingTable.cc \
	src/Controller/CoreRoutingTable.h \
	src/Controller/CoreRoutingTableEntry_m.h
$O/src/Controller/CoreRoutingTableEntry_m.o: src/Controller/CoreRoutingTableEntry_m.cc \
	src/Controller/CoreRoutingTableEntry_m.h
$O/src/Controller/Horizon.o: src/Controller/Horizon.cc \
	src/Controller/Connection_m.h \
	src/Controller/Horizon.h
$O/src/Controller/Scheduler.o: src/Controller/Scheduler.cc \
	src/Controller/Connection_m.h \
	src/Controller/CoreRoutingTable.h \
	src/Controller/CoreRoutingTableEntry_m.h \
	src/Controller/Horizon.h \
	src/Controller/Scheduler.h \
	src/OpticalSwitch/Configure_m.h \
	src/messages/OBS_BurstControlPacket_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h
$O/src/EdgeNode/BurstList.o: src/EdgeNode/BurstList.cc \
	src/EdgeNode/BurstList.h \
	src/EdgeNode/OBS_ScheduledBurstItem_m.h \
	src/messages/OBS_Burst.h \
	src/messages/OBS_Burst_m.h
$O/src/EdgeNode/BurstReceiver.o: src/EdgeNode/BurstReceiver.cc \
	src/EdgeNode/BurstReceiver.h \
	src/EdgeNode/EdgeDestinationQueue.h \
	src/EdgeNode/EdgeDestinationQueueEntry_m.h \
	src/messages/OBS_Burst.h \
	src/messages/OBS_Burst_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h
$O/src/EdgeNode/Disassembler.o: src/EdgeNode/Disassembler.cc \
	src/EdgeNode/Disassembler.h \
	src/EdgeNode/EdgeDestinationQueue.h \
	src/EdgeNode/EdgeDestinationQueueEntry_m.h \
	src/messages/OBS_Burst.h \
	src/messages/OBS_Burst_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h
$O/src/EdgeNode/EdgeDestinationQueue.o: src/EdgeNode/EdgeDestinationQueue.cc \
	src/EdgeNode/EdgeDestinationQueue.h \
	src/EdgeNode/EdgeDestinationQueueEntry_m.h
$O/src/EdgeNode/EdgeDestinationQueueEntry_m.o: src/EdgeNode/EdgeDestinationQueueEntry_m.cc \
	src/EdgeNode/EdgeDestinationQueueEntry_m.h
$O/src/EdgeNode/OBS_BurstSender.o: src/EdgeNode/OBS_BurstSender.cc \
	src/EdgeNode/BurstList.h \
	src/EdgeNode/EdgeDestinationQueue.h \
	src/EdgeNode/EdgeDestinationQueueEntry_m.h \
	src/EdgeNode/OBS_BurstSender.h \
	src/EdgeNode/OBS_BurstSenderInfo_m.h \
	src/EdgeNode/OBS_BurstifierInfo_m.h \
	src/EdgeNode/OBS_ScheduledBurstItem_m.h \
	src/messages/OBS_Burst.h \
	src/messages/OBS_BurstControlPacket_m.h \
	src/messages/OBS_Burst_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/base/ModuleAccess.h \
	$(INET_PROJ)/src/base/NotificationBoard.h \
	$(INET_PROJ)/src/base/NotifierConsts.h \
	$(INET_PROJ)/src/linklayer/contract/MACAddress.h \
	$(INET_PROJ)/src/networklayer/common/IInterfaceTable.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceEntry.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceTableAccess.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceToken.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4ControlInfo.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4ControlInfo_m.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h
$O/src/EdgeNode/OBS_BurstSenderInfo_m.o: src/EdgeNode/OBS_BurstSenderInfo_m.cc \
	src/EdgeNode/OBS_BurstSenderInfo_m.h
$O/src/EdgeNode/OBS_BurstifierInfo_m.o: src/EdgeNode/OBS_BurstifierInfo_m.cc \
	src/EdgeNode/OBS_BurstifierInfo_m.h
$O/src/EdgeNode/OBS_DispatcherRule.o: src/EdgeNode/OBS_DispatcherRule.cc \
	src/EdgeNode/OBS_DispatcherRule.h \
	$(INET_PROJ)/src/base/ByteArray.h \
	$(INET_PROJ)/src/base/ByteArray_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h \
	$(INET_PROJ)/src/transport/tcp_common/TCPSegment.h \
	$(INET_PROJ)/src/transport/tcp_common/TCPSegment_m.h \
	$(INET_PROJ)/src/transport/udp/UDPPacket.h \
	$(INET_PROJ)/src/transport/udp/UDPPacket_m.h
$O/src/EdgeNode/OBS_PacketBurstifier.o: src/EdgeNode/OBS_PacketBurstifier.cc \
	src/EdgeNode/EdgeDestinationQueue.h \
	src/EdgeNode/EdgeDestinationQueueEntry_m.h \
	src/EdgeNode/OBS_BurstifierInfo_m.h \
	src/EdgeNode/OBS_PacketBurstifier.h \
	src/messages/OBS_Burst.h \
	src/messages/OBS_BurstControlPacket_m.h \
	src/messages/OBS_Burst_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/linklayer/contract/MACAddress.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4ControlInfo.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4ControlInfo_m.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h
$O/src/EdgeNode/OBS_PacketDispatcher.o: src/EdgeNode/OBS_PacketDispatcher.cc \
	src/EdgeNode/EdgeDestinationQueue.h \
	src/EdgeNode/EdgeDestinationQueueEntry_m.h \
	src/EdgeNode/OBS_DispatcherRule.h \
	src/EdgeNode/OBS_PacketDispatcher.h \
	$(INET_PROJ)/src/base/ByteArray.h \
	$(INET_PROJ)/src/base/ByteArray_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h \
	$(INET_PROJ)/src/transport/tcp_common/TCPSegment.h \
	$(INET_PROJ)/src/transport/tcp_common/TCPSegment_m.h \
	$(INET_PROJ)/src/transport/udp/UDPPacket.h \
	$(INET_PROJ)/src/transport/udp/UDPPacket_m.h
$O/src/EdgeNode/OBS_ScheduledBurstItem_m.o: src/EdgeNode/OBS_ScheduledBurstItem_m.cc \
	src/EdgeNode/OBS_ScheduledBurstItem_m.h
$O/src/OpticalSwitch/Configurator.o: src/OpticalSwitch/Configurator.cc \
	src/OpticalSwitch/Configurator.h \
	src/OpticalSwitch/Configure_m.h \
	src/OpticalSwitch/OpticalCrossConnect.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h
$O/src/OpticalSwitch/Configure_m.o: src/OpticalSwitch/Configure_m.cc \
	src/OpticalSwitch/Configure_m.h
$O/src/OpticalSwitch/OpticalCrossConnect.o: src/OpticalSwitch/OpticalCrossConnect.cc \
	src/OpticalSwitch/OpticalCrossConnect.h \
	src/messages/OBS_Burst.h \
	src/messages/OBS_Burst_m.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/base/IPassiveQueue.h \
	$(INET_PROJ)/src/base/ModuleAccess.h \
	$(INET_PROJ)/src/base/NotificationBoard.h \
	$(INET_PROJ)/src/base/NotifierConsts.h \
	$(INET_PROJ)/src/linklayer/contract/MACAddress.h \
	$(INET_PROJ)/src/linklayer/contract/TxNotifDetails.h \
	$(INET_PROJ)/src/linklayer/ppp/PPPFrame_m.h \
	$(INET_PROJ)/src/networklayer/common/IInterfaceTable.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceEntry.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceTableAccess.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceToken.h \
	$(INET_PROJ)/src/util/opp_utils.h
$O/src/messages/OBS_Burst.o: src/messages/OBS_Burst.cc \
	src/messages/OBS_Burst.h \
	src/messages/OBS_Burst_m.h
$O/src/messages/OBS_BurstControlPacket_m.o: src/messages/OBS_BurstControlPacket_m.cc \
	src/messages/OBS_BurstControlPacket_m.h
$O/src/messages/OBS_Burst_m.o: src/messages/OBS_Burst_m.cc \
	src/messages/OBS_Burst_m.h
$O/src/misc/OBS_DropBurst.o: src/misc/OBS_DropBurst.cc \
	src/messages/OBS_Burst.h \
	src/messages/OBS_BurstControlPacket_m.h \
	src/messages/OBS_Burst_m.h
$O/src/misc/OBS_OpticalMonitor.o: src/misc/OBS_OpticalMonitor.cc \
	src/messages/OBS_Burst.h \
	src/messages/OBS_BurstControlPacket_m.h \
	src/messages/OBS_Burst_m.h \
	src/misc/OBS_OpticalMonitor.h

