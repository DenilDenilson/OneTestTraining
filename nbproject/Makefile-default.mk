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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=LibreriasPIC/adc_10bits.c LibreriasPIC/configDevice.c LibreriasPIC/i2c_Master.c LibreriasPIC/keypad_4x4.c LibreriasPIC/lcd_2x16.c LibreriasPIC/spi_Master.c LibreriasPIC/usart.c LibreriasPIC/main_v2.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/LibreriasPIC/adc_10bits.p1 ${OBJECTDIR}/LibreriasPIC/configDevice.p1 ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1 ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1 ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1 ${OBJECTDIR}/LibreriasPIC/spi_Master.p1 ${OBJECTDIR}/LibreriasPIC/usart.p1 ${OBJECTDIR}/LibreriasPIC/main_v2.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/LibreriasPIC/adc_10bits.p1.d ${OBJECTDIR}/LibreriasPIC/configDevice.p1.d ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1.d ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1.d ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1.d ${OBJECTDIR}/LibreriasPIC/spi_Master.p1.d ${OBJECTDIR}/LibreriasPIC/usart.p1.d ${OBJECTDIR}/LibreriasPIC/main_v2.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/LibreriasPIC/adc_10bits.p1 ${OBJECTDIR}/LibreriasPIC/configDevice.p1 ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1 ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1 ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1 ${OBJECTDIR}/LibreriasPIC/spi_Master.p1 ${OBJECTDIR}/LibreriasPIC/usart.p1 ${OBJECTDIR}/LibreriasPIC/main_v2.p1

# Source Files
SOURCEFILES=LibreriasPIC/adc_10bits.c LibreriasPIC/configDevice.c LibreriasPIC/i2c_Master.c LibreriasPIC/keypad_4x4.c LibreriasPIC/lcd_2x16.c LibreriasPIC/spi_Master.c LibreriasPIC/usart.c LibreriasPIC/main_v2.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F45K50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/LibreriasPIC/adc_10bits.p1: LibreriasPIC/adc_10bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1 LibreriasPIC/adc_10bits.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/adc_10bits.d ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/configDevice.p1: LibreriasPIC/configDevice.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/configDevice.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/configDevice.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/configDevice.p1 LibreriasPIC/configDevice.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/configDevice.d ${OBJECTDIR}/LibreriasPIC/configDevice.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/configDevice.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/i2c_Master.p1: LibreriasPIC/i2c_Master.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1 LibreriasPIC/i2c_Master.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/i2c_Master.d ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1: LibreriasPIC/keypad_4x4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1 LibreriasPIC/keypad_4x4.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.d ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1: LibreriasPIC/lcd_2x16.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1 LibreriasPIC/lcd_2x16.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.d ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/spi_Master.p1: LibreriasPIC/spi_Master.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/spi_Master.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/spi_Master.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/spi_Master.p1 LibreriasPIC/spi_Master.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/spi_Master.d ${OBJECTDIR}/LibreriasPIC/spi_Master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/spi_Master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/usart.p1: LibreriasPIC/usart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/usart.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/usart.p1 LibreriasPIC/usart.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/usart.d ${OBJECTDIR}/LibreriasPIC/usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/main_v2.p1: LibreriasPIC/main_v2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/main_v2.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/main_v2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/main_v2.p1 LibreriasPIC/main_v2.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/main_v2.d ${OBJECTDIR}/LibreriasPIC/main_v2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/main_v2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/LibreriasPIC/adc_10bits.p1: LibreriasPIC/adc_10bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1 LibreriasPIC/adc_10bits.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/adc_10bits.d ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/adc_10bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/configDevice.p1: LibreriasPIC/configDevice.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/configDevice.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/configDevice.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/configDevice.p1 LibreriasPIC/configDevice.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/configDevice.d ${OBJECTDIR}/LibreriasPIC/configDevice.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/configDevice.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/i2c_Master.p1: LibreriasPIC/i2c_Master.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1 LibreriasPIC/i2c_Master.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/i2c_Master.d ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/i2c_Master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1: LibreriasPIC/keypad_4x4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1 LibreriasPIC/keypad_4x4.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.d ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/keypad_4x4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1: LibreriasPIC/lcd_2x16.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1 LibreriasPIC/lcd_2x16.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.d ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/lcd_2x16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/spi_Master.p1: LibreriasPIC/spi_Master.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/spi_Master.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/spi_Master.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/spi_Master.p1 LibreriasPIC/spi_Master.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/spi_Master.d ${OBJECTDIR}/LibreriasPIC/spi_Master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/spi_Master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/usart.p1: LibreriasPIC/usart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/usart.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/usart.p1 LibreriasPIC/usart.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/usart.d ${OBJECTDIR}/LibreriasPIC/usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LibreriasPIC/main_v2.p1: LibreriasPIC/main_v2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/LibreriasPIC" 
	@${RM} ${OBJECTDIR}/LibreriasPIC/main_v2.p1.d 
	@${RM} ${OBJECTDIR}/LibreriasPIC/main_v2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LibreriasPIC/main_v2.p1 LibreriasPIC/main_v2.c 
	@-${MV} ${OBJECTDIR}/LibreriasPIC/main_v2.d ${OBJECTDIR}/LibreriasPIC/main_v2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LibreriasPIC/main_v2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Trainer2023_OneAllTesting.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
