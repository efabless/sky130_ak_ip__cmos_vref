v {xschem version=3.4.5 file_version=1.2
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
lab=GND}
N -290 -20 -120 -20 {
lab=#net1}
N -290 -70 -290 -20 {
lab=#net1}
N -190 -50 -120 -50 {
lab=#net2}
N -190 -70 -190 -50 {
lab=#net2}
N 130 40 270 40 {
lab=vbg}
N 130 -50 170 -50 {
lab=GND}
N 130 -20 170 -20 {
lab=GND}
N 270 10 270 40 {
lab=vbg}
N -160 10 -120 10 {
lab=#net2}
N 270 40 370 40 {
lab=vbg}
N 270 100 370 100 {
lab=GND}
N 170 -50 170 10 {
lab=GND}
N 130 130 170 130 {
lab=vptat}
N -160 -50 -160 10 {
lab=#net2}
C {devices/vsource.sym} -190 -270 0 0 {name=Vavdd value="DC \{Vavdd\}"}
C {devices/vdd.sym} -190 -300 0 0 {name=l7 lab=avdd}
C {devices/gnd.sym} -190 -240 0 0 {name=l8 lab=GND}
C {devices/code.sym} 190 -330 0 0 {name=stimuli
only_toplevel=false
value="
.option warn=1
.nodeset v(vbg)=1.2
.nodeset v(vptat)=0.1
.control
save vbg
dc TEMP -40 85 5

let temp_diff = \{temperature|maximum\}-\{temperature|minimum\}
let vref_diff = maximum(vbg)-minimum(vbg)
let vref_nom = (maximum(vbg)+minimum(vbg))/2
let temp_coeff = vref_diff/(vref_nom*temp_diff)

echo $&temp_coeff > \{simpath\}/\{filename\}_\{N\}.data

quit
.endc
"}
C {devices/lab_pin.sym} 270 10 0 1 {name=l10 sig_type=std_logic lab=vbg}
C {devices/gnd.sym} 170 10 0 0 {name=l20 lab=GND}
C {../xschem/sky130_ak_ip__cmos_vref.sym} 10 40 0 0 {name=X1}
C {devices/vdd.sym} -290 -130 0 0 {name=l1 lab=avdd}
C {devices/vsource.sym} -290 -100 0 0 {name=Vsense1 value="dc 0"}
C {devices/vdd.sym} -200 40 0 0 {name=l4 lab=dvdd}
C {devices/vsource.sym} -30 -270 0 0 {name=Vdvdd value="DC \{Vdvdd\}"}
C {devices/vdd.sym} -30 -300 0 0 {name=l5 lab=dvdd}
C {devices/gnd.sym} -30 -240 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 270 70 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 320 100 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} -190 -130 0 0 {name=l11 lab=dvdd}
C {devices/vsource.sym} -190 -100 0 0 {name=Vsense2 value="dc 0"}
C {devices/res.sym} 370 70 0 0 {name=R1
value=\{Rload\}
device=resistor
m=1}
C {sky130_fd_pr/corner.sym} 60 -330 0 0 {name=CORNER only_toplevel=false corner=\{corner\}}
C {devices/gnd.sym} -160 130 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 170 130 0 1 {name=l3 sig_type=std_logic lab=vptat}
C {devices/code.sym} 320 -330 0 0 {name=STDCELLPATH

only_toplevel=true
format="tcleval( @value )"
value=".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"}
