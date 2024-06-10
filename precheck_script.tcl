#!/usr/bin/env wish
#--------------------------------------------
# Script to check schematic for valid layout
# Source this in magic.
#--------------------------------------------

suspendall
box 0um 0um 0um 0um
set failures 0

set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__cap_mim_m3_1_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__cap_mim_m3_1_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__cap_mim_m3_1 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__cap_mim_m3_1.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__cap_mim_m3_1 in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__cap_mim_m3_1_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__cap_mim_m3_1_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__cap_mim_m3_1 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__cap_mim_m3_1.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__cap_mim_m3_1 in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_05v0_nvt_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_05v0_nvt_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_05v0_nvt in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_05v0_nvt.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_05v0_nvt in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_05v0_nvt_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_05v0_nvt_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_05v0_nvt in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_05v0_nvt.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_05v0_nvt in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__pfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__pfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__pfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::_draw]
    if {$device != ""} {
        puts stdout "Found cell  in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell  in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__nfet_01v8_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__nfet_01v8.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__nfet_01v8 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_pr__res_xhigh_po_0p69.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_pr__res_xhigh_po_0p69 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__buf_1_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__buf_1.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__buf_1_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__buf_1.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__buf_1_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__buf_1.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__buf_1_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__buf_1.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__buf_1 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__diode_2_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__diode_2.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__inv_2_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__inv_2_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__inv_2 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__inv_2.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__inv_2 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__diode_2_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__diode_2.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__diode_2_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__diode_2.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__diode_2_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__diode_2.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__diode_2_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__diode_2.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__diode_2 in search path ${dir}."
    }
}
set device [info commands sky130::sky130_fd_sc_hd__decap_6_draw]
if {$device == ""} {
    set templib [lindex [namespace children] 0]
    set device [info commands ${templib}::sky130_fd_sc_hd__decap_6_draw]
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__decap_6 in namespace ${templib}."
    }
}
if {$device == ""} {
    foreach dir [path search] {
        if {![catch {set device [glob ${dir}/sky130_fd_sc_hd__decap_6.mag]}]} {break}
    }
    if {$device != ""} {
        puts stdout "Found cell sky130_fd_sc_hd__decap_6 in search path ${dir}."
    }
}
resumeall
refresh
puts stdout "number of failures = $failures"
quit -noprompt
