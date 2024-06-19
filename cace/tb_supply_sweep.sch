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
N 130 -50 170 -50 {
lab=GND}
N 130 -20 170 -20 {
lab=GND}
N -160 10 -120 10 {
lab=#net2}
N 170 -50 170 -20 {
lab=GND}
N 170 -20 170 10 {
lab=GND}
N 370 40 450 40 {
lab=GND}
N 370 -20 450 -20 {
lab=vbg}
N 410 -50 410 -20 {
lab=vbg}
N 130 40 200 40 {
lab=vbg}
N 130 130 200 130 {
lab=vptat}
N -160 -50 -160 10 {
lab=#net2}
C {devices/vsource.sym} -190 -270 0 0 {name=Vavdd value="DC 1.8"}
C {devices/vdd.sym} -190 -300 0 0 {name=l7 lab=avdd}
C {devices/gnd.sym} -190 -240 0 0 {name=l8 lab=GND}
C {devices/code.sym} 210 -330 0 0 {name=stimuli
only_toplevel=false
value="
.option warn=1
.option TEMP=\{temperature\}
.nodeset V(vbg)=1.2
.nodeset V(vptat)=0.2
.control
save vbg
dc Vavdd \{Vavdd|minimum\} \{Vavdd|maximum\} 10m
set wr_singlescale
wrdata \{simpath\}/\{filename\}_\{N\}.data V(vbg)
quit
.endc
"}
C {devices/lab_pin.sym} 410 -50 0 1 {name=l10 sig_type=std_logic lab=vbg}
C {devices/gnd.sym} 170 10 0 0 {name=l20 lab=GND}
C {../xschem/sky130_ak_ip__cmos_vref.sym} 10 40 0 0 {name=X1}
C {devices/vdd.sym} -290 -130 0 0 {name=l1 lab=avdd}
C {devices/vsource.sym} -290 -100 0 0 {name=Vsense1 value="dc 0"}
C {devices/vdd.sym} -200 40 0 0 {name=l4 lab=dvdd}
C {devices/vsource.sym} -30 -270 0 0 {name=Vdvdd value="DC \{Vdvdd\}"}
C {devices/vdd.sym} -30 -300 0 0 {name=l5 lab=dvdd}
C {devices/gnd.sym} -30 -240 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 450 10 0 0 {name=C1
m=1
value=\{Cload\}
device="ceramic capacitor"}
C {devices/gnd.sym} 410 40 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} -190 -130 0 0 {name=l11 lab=dvdd}
C {devices/vsource.sym} -190 -100 0 0 {name=Vsense2 value="dc 0"}
C {devices/res.sym} 370 10 0 0 {name=R1
value=\{Rload\}
device=resistor
m=1}
C {devices/lab_pin.sym} 200 40 0 1 {name=l2 sig_type=std_logic lab=vbg}
C {sky130_fd_pr/corner.sym} 70 -330 0 0 {name=CORNER only_toplevel=false corner=\{corner\}}
C {devices/gnd.sym} -160 130 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 200 130 0 1 {name=l13 sig_type=std_logic lab=vptat}
C {devices/code.sym} 350 -330 0 0 {name=STDCELLPATH

only_toplevel=true
format="tcleval( @value )"
value=".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"}
