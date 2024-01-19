#!/bin/bash
cpupower -c all frequency-set -g performance
cpupower -c all frequency-info > ../info/frequency.info

lscpu > ../info/cpu.info

cat /sys/devices/system/cpu/cpu0/cache/index0/* > L1.info
cat /sys/devices/system/cpu/cpu0/cache/index2/* > L2.info
cat /sys/devices/system/cpu/cpu0/cache/index3/* > L3.info

    