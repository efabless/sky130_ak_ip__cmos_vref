#!/usr/bin/env wish
#--------------------------------------------
# Script to create layout from netlist
# Source this in magic.
#--------------------------------------------

suspendall
box 0um 0um 0um 0um
set totalarea 0

set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM2 -spice L 10 W 2 NF 1 M 1}]} {
      select cell XM2
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM2 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM1 -spice L 20 W 2.5 NF 1 M 1}]} {
      select cell XM1
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM1 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM9 -spice L 10 W 50 NF 4 M 1}]} {
      select cell XM9
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM9 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM20 -spice L 0.3 W 10 NF 1 M 1}]} {
      select cell XM20
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM20 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM3 -spice L 2 W 100 NF 1 M 1}]} {
      select cell XM3
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM3 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM4 -spice L 2 W 5 NF 1 M 1}]} {
      select cell XM4
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM4 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM5 -spice L 10 W 10 NF 1 M 1}]} {
      select cell XM5
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM5 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM6 -spice L 10 W 10 NF 1 M 1}]} {
      select cell XM6
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM6 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM7 -spice L 10 W 5 NF 1 M 1}]} {
      select cell XM7
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM7 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM8 -spice L 10 W 5 NF 1 M 1}]} {
      select cell XM8
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM8 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM10 -spice L 10 W 5 NF 1 M 1}]} {
      select cell XM10
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM10 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM11 -spice L 5 W 10 NF 1 M 1}]} {
      select cell XM11
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM11 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__cap_mim_m3_1_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__cap_mim_m3_1_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__cap_mim_m3_1 XC1 -spice W 5 L 5 M 1}]} {
      select cell XC1
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XC1 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM1 -spice L 1 W 2.5 NF 1 M 1}]} {
      select cell XM1
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM1 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM2 -spice L 1 W 5 NF 1 M 1}]} {
      select cell XM2
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM2 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM7 -spice L 10 W 5 NF 1 M 1}]} {
      select cell XM7
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM7 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM4 -spice L 2 W 10 NF 1 M 1}]} {
      select cell XM4
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM4 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM5 -spice L 2 W 10 NF 1 M 1}]} {
      select cell XM5
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM5 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM6 -spice L 10 W 5 NF 1 M 1}]} {
      select cell XM6
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM6 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM3 -spice L 1 W 8 NF 1 M 1}]} {
      select cell XM3
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM3 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM8 -spice L 5 W 40 NF 1 M 1}]} {
      select cell XM8
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM8 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__cap_mim_m3_1_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__cap_mim_m3_1_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__cap_mim_m3_1 XC2 -spice W 5 L 5 M 1}]} {
      select cell XC2
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XC2 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_05v0_nvt_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_05v0_nvt_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_05v0_nvt XM9 -spice L 2 W 20 NF 1 M 1}]} {
      select cell XM9
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM9 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_05v0_nvt_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_05v0_nvt_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_05v0_nvt XM10 -spice L 2 W 20 NF 1 M 1}]} {
      select cell XM10
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM10 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__pfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__pfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__pfet_01v8 XM3 -spice L 10 W 5 NF 1 M 1}]} {
      select cell XM3
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM3 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM1 -spice L 2 W 10 NF 1 M 1}]} {
      select cell XM1
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM1 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM2 -spice L 2 W 10 NF 1 M 1}]} {
      select cell XM2
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM2 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM3 -spice L 2 W 10 NF 1 M 1}]} {
      select cell XM3
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM3 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__nfet_01v8_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__nfet_01v8_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__nfet_01v8 XM4 -spice L 2 W 10 NF 1 M 1}]} {
      select cell XM4
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XM4 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR1 -spice L 3.45 MULT 1 M 1}]} {
      select cell XR1
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR1 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR2 -spice L 6.9 MULT 1 M 1}]} {
      select cell XR2
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR2 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR3 -spice L 13.8 MULT 1 M 1}]} {
      select cell XR3
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR3 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR4 -spice L 27.6 MULT 1 M 1}]} {
      select cell XR4
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR4 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR4 -spice L 264.5 MULT 1 M 1}]} {
      select cell XR4
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR4 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR3 -spice L 74.5 MULT 1 M 1}]} {
      select cell XR3
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR3 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR2 -spice L 8.6 MULT 1 M 1}]} {
      select cell XR2
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR2 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_pr__res_xhigh_po_0p69_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_pr__res_xhigh_po_0p69_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_pr__res_xhigh_po_0p69 XR1 -spice L 54.5 MULT 1 M 1}]} {
      select cell XR1
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device XR1 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__buf_1_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__buf_1 x5 -spice}]} {
      select cell x5
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x5 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__buf_1_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__buf_1 x6 -spice}]} {
      select cell x6
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x6 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__buf_1_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__buf_1 x7 -spice}]} {
      select cell x7
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x7 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__buf_1_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__buf_1_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__buf_1 x8 -spice}]} {
      select cell x8
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x8 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__diode_2_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__diode_2 x9 -spice}]} {
      select cell x9
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x9 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__inv_2_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__inv_2_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__inv_2 x14 -spice}]} {
      select cell x14
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x14 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__diode_2_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__diode_2 x4 -spice}]} {
      select cell x4
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x4 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__diode_2_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__diode_2 x10 -spice}]} {
      select cell x10
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x10 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__diode_2_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__diode_2 x11 -spice}]} {
      select cell x11
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x11 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__diode_2_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__diode_2_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__diode_2 x12 -spice}]} {
      select cell x12
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x12 area is $a"
set totalarea [expr $totalarea + $area]
set device [info commands sky130::sky130_fd_sc_hd__decap_6_draw]
if {$device == ""} {
    set loclib [lindex [namespace children] 0]
    if {[string first :: ${loclib}] == 0} {set loclib [string range $loclib 2 end]}
    set device [info commands ${loclib}::sky130_fd_sc_hd__decap_6_draw]
} else {
    set loclib sky130
}
if {$device != ""} {
    set is_gencell true
} else {
    set is_gencell false
}
set sv {0 0 0 0}
if {$is_gencell == true} {
   if {![catch {magic::gencell ${loclib}::sky130_fd_sc_hd__decap_6 x13 -spice}]} {
      select cell x13
      set v [box values]
      delete
   }
} else {
    if {![catch {getcell ${devtype}}]} {
        identify $instname
        set v [box values]
        delete
    }
}
set w [expr [lindex $v 2] - [lindex $v 0]]
set h [expr [lindex $v 3] - [lindex $v 1]]
set area [expr $w * $h]
puts stdout "single device x13 area is $a"
set totalarea [expr $totalarea + $area]
resumeall
refresh
set total2area [expr int(ceil([magic::i2u [magic::i2u $totalarea]]))]
puts stdout "total device area = $total2area um^2"
quit -noprompt
