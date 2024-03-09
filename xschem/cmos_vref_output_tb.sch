v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -20 270 60 {
lab=vref}
N 130 -20 270 -20 {
lab=vref}
N 130 20 190 20 {
lab=GND}
N 190 20 190 120 {
lab=GND}
N -160 -20 -120 -20 {
lab=#net1}
N -160 -50 -160 -20 {
lab=#net1}
C {sky130_fd_pr/corner.sym} 70 -330 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -360 -210 0 0 {name=VS value="dc 1.8"}
C {devices/vdd.sym} -360 -240 0 0 {name=l7 lab=V18}
C {devices/gnd.sym} -360 -180 0 0 {name=l8 lab=GND}
C {devices/code.sym} 190 -330 0 0 {name=stimuli
only_toplevel=false
value="
*.control
*tran 10p 5us
*save all
*write tb_gain.raw
*.endc
"}
C {devices/lab_pin.sym} 270 50 0 1 {name=l10 sig_type=std_logic lab=vref}
C {devices/code.sym} 300 -330 0 0 {name=parameters
only_toplevel=false
value="
.option TRTOL=5
.option SCALE=1e-6

.param vref_m1width=3
.param vref_m1length=20
.param vref_m1fingers=1
.param vref_m2width=3
.param vref_m2length=100
.param vref_m2fingers=1
.param vref_m3width=720
.param vref_m3length=2
.param vref_m3fingers=24
.param vref_m4width=60
.param vref_m4length=2
.param vref_m4fingers=4
.param vref_m56width=20
.param vref_m56length=20
.param vref_m56fingers=1
.param vref_m78width=50
.param vref_m78length=20
.param vref_m78fingers=5
.param vref_m9width=100
.param vref_m789length=20

"}
C {devices/capa.sym} 270 90 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 270 120 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 190 120 0 0 {name=l20 lab=GND}
C {/home/moduhub/work/sky130_ak_ip__cmos_vref/xschem/cmos_vref.sym} 10 0 0 0 {name=X1}
C {devices/vdd.sym} -160 -110 0 0 {name=l1 lab=V18}
C {devices/vsource.sym} -160 -80 0 0 {name=Vsense1 value="dc 0"}