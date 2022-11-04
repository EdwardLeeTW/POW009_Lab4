#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="sources/driver/power controller/VCOMP.c" "sources/driver/power controller/VCOMP_asm.s" "sources/driver/power controller/SyncBuckControl.c" mcc_generated_files/traps.c mcc_generated_files/pwm.c mcc_generated_files/tmr1.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/system.c mcc_generated_files/reset.c mcc_generated_files/clock.c mcc_generated_files/mcc.c mcc_generated_files/adc1.c sources/os/os_scheduler_100us.c sources/os/os_scheduler_1ms.c sources/os/os_sys_time.c sources/os/os.c sources/os/os_timer.c main.c main_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/sources/driver/power controller/VCOMP.o" "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o" "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o" ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pwm.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/sources/os/os_scheduler_100us.o ${OBJECTDIR}/sources/os/os_scheduler_1ms.o ${OBJECTDIR}/sources/os/os_sys_time.o ${OBJECTDIR}/sources/os/os.o ${OBJECTDIR}/sources/os/os_timer.o ${OBJECTDIR}/main.o ${OBJECTDIR}/main_tasks.o
POSSIBLE_DEPFILES="${OBJECTDIR}/sources/driver/power controller/VCOMP.o.d" "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o.d" "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o.d" ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/pwm.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/sources/os/os_scheduler_100us.o.d ${OBJECTDIR}/sources/os/os_scheduler_1ms.o.d ${OBJECTDIR}/sources/os/os_sys_time.o.d ${OBJECTDIR}/sources/os/os.o.d ${OBJECTDIR}/sources/os/os_timer.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/main_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sources/driver/power\ controller/VCOMP.o ${OBJECTDIR}/sources/driver/power\ controller/VCOMP_asm.o ${OBJECTDIR}/sources/driver/power\ controller/SyncBuckControl.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pwm.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/sources/os/os_scheduler_100us.o ${OBJECTDIR}/sources/os/os_scheduler_1ms.o ${OBJECTDIR}/sources/os/os_sys_time.o ${OBJECTDIR}/sources/os/os.o ${OBJECTDIR}/sources/os/os_timer.o ${OBJECTDIR}/main.o ${OBJECTDIR}/main_tasks.o

# Source Files
SOURCEFILES=sources/driver/power controller/VCOMP.c sources/driver/power controller/VCOMP_asm.s sources/driver/power controller/SyncBuckControl.c mcc_generated_files/traps.c mcc_generated_files/pwm.c mcc_generated_files/tmr1.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/system.c mcc_generated_files/reset.c mcc_generated_files/clock.c mcc_generated_files/mcc.c mcc_generated_files/adc1.c sources/os/os_scheduler_100us.c sources/os/os_scheduler_1ms.c sources/os/os_sys_time.c sources/os/os.c sources/os/os_timer.c main.c main_tasks.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CK256MP508
MP_LINKER_FILE_OPTION=,--script=p33CK256MP508.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/sources/driver/power\ controller/VCOMP.o: sources/driver/power\ controller/VCOMP.c  .generated_files/flags/default/6f5852bdb63a70a2f7fe1ea0d5a85f8d8a6158e3 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/driver/power controller" 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP.o".d 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "sources/driver/power controller/VCOMP.c"  -o "${OBJECTDIR}/sources/driver/power controller/VCOMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/driver/power controller/VCOMP.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/driver/power\ controller/SyncBuckControl.o: sources/driver/power\ controller/SyncBuckControl.c  .generated_files/flags/default/fc680ebde39e301c65366cb89b409884eb462b01 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/driver/power controller" 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o".d 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "sources/driver/power controller/SyncBuckControl.c"  -o "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/4cb09bffdbc153934c8d8776507bc1d4e3404bca .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pwm.o: mcc_generated_files/pwm.c  .generated_files/flags/default/61f99e6e571bcfaf093b06f0ea387c4915b5d3db .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm.c  -o ${OBJECTDIR}/mcc_generated_files/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/62e7c06c66f53b5ca2b6324b1f0687c597cd6f69 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/82cc30d6b2cc485a1996e9e4cedc4735f5af6062 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/203908e94a9b28f56834997b21f817e7ae390f66 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/a8f512e7d598a238b62ccec43588d4501d9a83f2 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/2bcff0f9c64ce17185305391f4402284db4fbf1 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/ef6553fbf7a4a5dc322d59ffd627978fdc1e9a6a .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/57f7b9dda7f09d39c4feb912c2ae56d792299eec .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/8001458cfde7c55df2370dd2ee8e33bd346c42ad .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_scheduler_100us.o: sources/os/os_scheduler_100us.c  .generated_files/flags/default/50ec25e9cbd1e2700d119b7fbeb72ca9025f232f .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_100us.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_100us.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_scheduler_100us.c  -o ${OBJECTDIR}/sources/os/os_scheduler_100us.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_scheduler_100us.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_scheduler_1ms.o: sources/os/os_scheduler_1ms.c  .generated_files/flags/default/c118b05da765fbe5c800a61a04b75f5b4b00f542 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_1ms.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_scheduler_1ms.c  -o ${OBJECTDIR}/sources/os/os_scheduler_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_scheduler_1ms.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_sys_time.o: sources/os/os_sys_time.c  .generated_files/flags/default/edea11bc54438038675e68f0edb00334e3b1b431 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_sys_time.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_sys_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_sys_time.c  -o ${OBJECTDIR}/sources/os/os_sys_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_sys_time.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os.o: sources/os/os.c  .generated_files/flags/default/5e78055ec405d8695255dc972af65e6e06151c3 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os.c  -o ${OBJECTDIR}/sources/os/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_timer.o: sources/os/os_timer.c  .generated_files/flags/default/5d59f6f60185443029b1a5cc0043873ebb582b1a .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_timer.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_timer.c  -o ${OBJECTDIR}/sources/os/os_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/491d5cbeca651a40a2ea27f26275fb9f76e43788 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main_tasks.o: main_tasks.c  .generated_files/flags/default/44ca990a972a558cc7e1c073e0fbcc165e89c3f5 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_tasks.o.d 
	@${RM} ${OBJECTDIR}/main_tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main_tasks.c  -o ${OBJECTDIR}/main_tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main_tasks.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/sources/driver/power\ controller/VCOMP.o: sources/driver/power\ controller/VCOMP.c  .generated_files/flags/default/7f260fa845053038f3b72fc3a2946a5a2d9b0b36 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/driver/power controller" 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP.o".d 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "sources/driver/power controller/VCOMP.c"  -o "${OBJECTDIR}/sources/driver/power controller/VCOMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/driver/power controller/VCOMP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/driver/power\ controller/SyncBuckControl.o: sources/driver/power\ controller/SyncBuckControl.c  .generated_files/flags/default/6b902fa20ad4c7bb72d37ca5b235bb3e381641f5 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/driver/power controller" 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o".d 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "sources/driver/power controller/SyncBuckControl.c"  -o "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/driver/power controller/SyncBuckControl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/a9f6a70d685fe53ed6c5629cc627e33bf2051b7f .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pwm.o: mcc_generated_files/pwm.c  .generated_files/flags/default/2f8fc861384652d52d0ff0dfbab23abdd176ce69 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm.c  -o ${OBJECTDIR}/mcc_generated_files/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/b5fc2bfcf047cebb08cc89c80bf54d2c1483d972 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/c03d6eb87af827c331801623f9485bcd0ff21313 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/78ae94c908e82b8285080e155256f645886d1da5 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/d883555d98c437c41d44fe46dba2a16d8e3a774e .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/6eedbf0f15a58d778a644ce8a155a39105a9b4f3 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/56d5e25a244b24f733aa1c0c5e27b220beff5b87 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/6e4dd1c855dadc69e2ff9e34e19b52f5d4a8f669 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/f76c9807c840a3f3bc8e3bb7d151fcac6911cf0e .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_scheduler_100us.o: sources/os/os_scheduler_100us.c  .generated_files/flags/default/478a7a4e66a2662c5d7fa08ac7494c74fae9df6 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_100us.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_100us.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_scheduler_100us.c  -o ${OBJECTDIR}/sources/os/os_scheduler_100us.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_scheduler_100us.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_scheduler_1ms.o: sources/os/os_scheduler_1ms.c  .generated_files/flags/default/da21761116c1b09954c8107ff685bd3e841c4aa6 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_1ms.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_scheduler_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_scheduler_1ms.c  -o ${OBJECTDIR}/sources/os/os_scheduler_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_scheduler_1ms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_sys_time.o: sources/os/os_sys_time.c  .generated_files/flags/default/52f0cdb77db7acb1f4e74cc4d2b1ed4c6c69329 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_sys_time.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_sys_time.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_sys_time.c  -o ${OBJECTDIR}/sources/os/os_sys_time.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_sys_time.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os.o: sources/os/os.c  .generated_files/flags/default/a6b40351ca24fcdfe8e30f324aa00034dbf20f61 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os.c  -o ${OBJECTDIR}/sources/os/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/os/os_timer.o: sources/os/os_timer.c  .generated_files/flags/default/77e9730328c97f44e684f2ce61252c6a7dfcf880 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/os" 
	@${RM} ${OBJECTDIR}/sources/os/os_timer.o.d 
	@${RM} ${OBJECTDIR}/sources/os/os_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/os/os_timer.c  -o ${OBJECTDIR}/sources/os/os_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/os/os_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/eafbd052a31a3e4281f62e8d133b50f311181697 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main_tasks.o: main_tasks.c  .generated_files/flags/default/8bf65d6bfce25487c291641598623349b17d2ab9 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_tasks.o.d 
	@${RM} ${OBJECTDIR}/main_tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main_tasks.c  -o ${OBJECTDIR}/main_tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main_tasks.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/sources/driver/power\ controller/VCOMP_asm.o: sources/driver/power\ controller/VCOMP_asm.s  .generated_files/flags/default/773cb45f02dcfd760055f0e1187a6b171aa3edad .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/driver/power controller" 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o".d 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o" 
	${MP_CC} $(MP_EXTRA_AS_PRE)  "sources/driver/power controller/VCOMP_asm.s"  -o "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I"sources/driver/power controller" -Wa,-MD,"${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/sources/driver/power\ controller/VCOMP_asm.o: sources/driver/power\ controller/VCOMP_asm.s  .generated_files/flags/default/e272127e886fc012d3d26a86dda7162b156b5629 .generated_files/flags/default/9a5c5798510c28560f2b9b166d4585072c5e14ef
	@${MKDIR} "${OBJECTDIR}/sources/driver/power controller" 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o".d 
	@${RM} "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o" 
	${MP_CC} $(MP_EXTRA_AS_PRE)  "sources/driver/power controller/VCOMP_asm.s"  -o "${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I"sources/driver/power controller" -Wa,-MD,"${OBJECTDIR}/sources/driver/power controller/VCOMP_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller"  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"sources/driver/power controller" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/POW009_LabX.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
