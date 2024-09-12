v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 40 -120 40 {
lab=dvdd}
N -160 70 -120 70 {
lab=dvdd}
N -160 40 -160 70 {
lab=dvdd}
N -160 100 -120 100 {
lab=dvdd}
N -160 70 -160 100 {
lab=dvdd}
N -160 130 -120 130 {
lab=#net1}
N -290 -20 -120 -20 {
lab=#net2}
N -290 -70 -290 -20 {
lab=#net2}
N -190 -50 -120 -50 {
lab=#net3}
N -190 -70 -190 -50 {
lab=#net3}
N 130 40 270 40 {
lab=vbg}
N 130 -50 170 -50 {
lab=GND}
N 130 -20 170 -20 {
lab=GND}
N 320 10 320 40 {
lab=vbg}
N -160 10 -120 10 {
lab=GND}
N 270 40 370 40 {
lab=vbg}
N 170 -50 170 10 {
lab=GND}
C {devices/vsource.sym} -190 -270 0 0 {name=Vavdd value="DC \{Vavdd\}"}
C {devices/vdd.sym} -190 -300 0 0 {name=l7 lab=avdd}
C {devices/gnd.sym} -190 -240 0 0 {name=l8 lab=GND}
C {devices/code.sym} 210 -330 0 0 {name=stimuli
only_toplevel=false
value="
.option warn=1
.option TEMP=\{temperature\}
.control
save vbg
dc Iload \{Iload|minimum\} \{Iload|maximum\} \{Istep\}

let load_diff = \{Iload|maximum\}-\{Iload|minimum\}
let vref_diff = maximum(vbg)-minimum(vbg)
let vref_nom = (maximum(vbg)+minimum(vbg))/2
let load_reg = vref_diff/(vref_nom)

echo $&load_reg > \{simpath\}/\{filename\}_\{N\}.data
quit
.endc
"}
C {devices/lab_pin.sym} 320 10 0 1 {name=l10 sig_type=std_logic lab=vbg}
C {devices/gnd.sym} 170 10 0 0 {name=l20 lab=GND}
C {../xschem/sky130_ak_ip__cmos_vref.sym} 10 40 0 0 {name=X1}
C {devices/vdd.sym} -290 -130 0 0 {name=l1 lab=avdd}
C {devices/vsource.sym} -290 -100 0 0 {name=Vsense1 value="dc 0"}
C {devices/vdd.sym} -200 40 0 0 {name=l4 lab=dvdd}
C {devices/vsource.sym} -30 -270 0 0 {name=Vdvdd value="DC \{Vdvdd\}"}
C {devices/vdd.sym} -30 -300 0 0 {name=l5 lab=dvdd}
C {devices/gnd.sym} -30 -240 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 320 100 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} -190 -130 0 0 {name=l11 lab=dvdd}
C {devices/vsource.sym} -190 -100 0 0 {name=Vsense2 value="dc 0"}
C {devices/gnd.sym} -160 10 0 0 {name=l12 lab=GND}
C {sky130_fd_pr/corner.sym} 60 -330 0 0 {name=CORNER only_toplevel=false corner=\{corner\}}
C {devices/isource.sym} 320 70 0 0 {name=Iload value=\{Iload|maximum\}}
C {devices/gnd.sym} -160 130 0 0 {name=l2 lab=GND}
