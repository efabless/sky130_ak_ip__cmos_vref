#!/bin/bash

export NETGEN_COLUMNS=60

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=sky130A} > /dev/null

netgen -batch source run_lvs.tcl | tee netgen.log
