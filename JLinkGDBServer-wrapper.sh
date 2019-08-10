#!/bin/bash

#
# STM32F4xx
#
# Properties for xxx -> C/C++ Build -> Settings -> Devices
# Boards -> Keil -> STM32F4-Discovery -> STM32F407VG
#
# qemu-system-gnuarmeclipse --verbose --board STM32F4-Discovery --mcu STM32F407VG --gdb tcp::1234 -d unimp,guest_errors --semihosting-config enable=on,target=native --semihosting-cmdline shub
#

# qemu-wrapper.sh           --verbose --board STM32F4-Discovery       --mcu STM32F411RE --gdb tcp::1234 -d unimp,guest_errors --semihosting-config enable=on,target=native --semihosting-cmdline shub

TOOL_NAME="JLinkGDBServerCLExe"
#TOOL_NAME="JLinkGDBServerExe"
TOOL_MCU_ECLIPSE="`find "${DEVENV_HOME}/tools/toolchain/" -type f -name ${TOOL_NAME}`"

if [ -z "${TOOL_MCU_ECLIPSE}" ]
then
  echo "Don't find ${TOOL_NAME} @ \"${DEVENV_HOME}/tools/toolchain\""
  exit ${LINENO}
fi


#echo "========================================================================="
#${TOOL_MCU_ECLIPSE} --board ?
#${TOOL_MCU_ECLIPSE} --mcu ?
#echo "========================================================================="
#echo ""

echo "`basename "${TOOL_MCU_ECLIPSE}"` $@"
${TOOL_MCU_ECLIPSE} "$@"

