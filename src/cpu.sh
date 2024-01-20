#!/bin/bash

#sudo cpupower -c all frequency-set -g performance

cpupower -c all frequency-info > ../info/frequency.info

lscpu > ../info/cpu.info

cat /sys/devices/system/cpu/cpu0/cache/index0/* > ../info/L1.info
cat /sys/devices/system/cpu/cpu0/cache/index2/* > ../info/L2.info
cat /sys/devices/system/cpu/cpu0/cache/index3/* > ../info/L3.info

    