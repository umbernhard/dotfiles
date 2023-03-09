#!/bin/bash
#

# First time setup:
if ! test /tmp/intel_gpu_top.log; then
	sudo intel_gpu_top -l > /tmp/intel_gpu_top.log &
fi

cat /tmp/intel_gpu_top.log | tail -n 1 | awk -F'[[:space:]]+' '{ printf "%.2f\n", $14 }' 
