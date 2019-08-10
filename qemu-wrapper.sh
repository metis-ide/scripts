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

QEMU_MCU_ECLIPSE="`find "${DEVENV_HOME}/tools/gnu-mcu-eclipse" -type f -name qemu-system-gnuarmeclipse`"

if [ -z "${QEMU_MCU_ECLIPSE}" ]
then
  echo "Don't find qemu-system-gnuarmeclipse @ \"${DEVENV_HOME}/tools/gnu-mcu-eclipse\""
  exit ${LINENO}
fi


echo "========================================================================="
${QEMU_MCU_ECLIPSE} --board ?
${QEMU_MCU_ECLIPSE} --mcu ?
echo "========================================================================="
echo ""

echo "CWD : `pwd`"
echo "`basename "${QEMU_MCU_ECLIPSE}"` $@"
${QEMU_MCU_ECLIPSE} "$@"

