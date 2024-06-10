v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
lab=#net3}
N 130 70 190 70 {
lab=vbgsc}
N 130 100 190 100 {
lab=vbgtg}
N 170 -50 170 10 {
lab=GND}
N 130 40 190 40 {
lab=vbg}
N 390 -100 530 -100 {
lab=vbg}
N 450 -40 530 -40 {
lab=GND}
N 130 130 170 130 {
lab=#net4}
N -150 130 -120 130 {
lab=trim3}
N -150 130 -150 150 {
lab=trim3}
N -230 100 -120 100 {
lab=trim2}
N -230 100 -230 150 {
lab=trim2}
N -310 70 -120 70 {
lab=trim1}
N -310 70 -310 150 {
lab=trim1}
N -390 40 -120 40 {
lab=trim0}
N -390 40 -390 150 {
lab=trim0}
N -390 210 -150 210 {
lab=GND}
N 120 200 140 200 {
lab=GND}
N 120 200 120 260 {
lab=GND}
N 120 260 220 260 {
lab=GND}
N 220 200 220 260 {
lab=GND}
N 200 200 220 200 {
lab=GND}
N 170 130 170 160 {
lab=#net4}
N -160 -50 -160 10 {}
C {devices/vsource.sym} -130 -270 0 0 {name=Vavdd value="dc \{Vavdd\}"}
C {devices/vdd.sym} -130 -300 0 0 {name=l7 lab=avdd}
C {devices/gnd.sym} -130 -240 0 0 {name=l8 lab=GND}
C {devices/code.sym} 220 -330 0 0 {name=stimuli
only_toplevel=false
value="
.option warn=1
.option TEMP=\{temperature\}
.nodeset v(vbg)=1.2
.control
set wr_singlescale
let vref_data = vector(16)
print vref_data
let it = 0
dowhile it < 16
	reset
	save vbg, trim0, trim1, trim2, trim3
	let it_roll=it
	if it_roll%2=1
		alter Vtrim0 0
	end
	let it_roll=floor(it_roll/2)
	if it_roll%2=1
		alter Vtrim1 0
	end
	let it_roll=floor(it_roll/2)
	if it_roll%2=1
		alter Vtrim2 0
	end
	let it_roll=floor(it_roll/2)
	if it_roll%2=1
		alter Vtrim3 0
	end
	print trim0, trim1, trim2, trim3
	op
	let vref_data[it] = V(vbg)
	let it = it + 1
end
print V(vref_data)
let it = 1
setscale 0
wrdata \{simpath\}/\{filename\}_\{N\}.data vref_data[0]
set appendwrite
dowhile it < 16
	setscale it
	wrdata \{simpath\}/\{filename\}_\{N\}.data vref_data[it]
	let it = it + 1
end
quit
.endc
"}
C {devices/lab_pin.sym} 190 40 0 1 {name=l10 sig_type=std_logic lab=vbg}
C {devices/gnd.sym} 170 10 0 0 {name=l20 lab=GND}
C {../xschem/sky130_ak_ip__cmos_vref.sym} 10 40 0 0 {name=X1}
C {devices/vdd.sym} -290 -130 0 0 {name=l1 lab=avdd}
C {devices/vsource.sym} -30 -270 0 0 {name=Vdvdd value="DC \{Vdvdd\}"}
C {devices/vdd.sym} -30 -300 0 0 {name=l5 lab=dvdd}
C {devices/gnd.sym} -30 -240 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 530 -70 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 490 -40 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} -190 -130 0 0 {name=l11 lab=dvdd}
C {devices/lab_pin.sym} 190 70 0 1 {name=l3 sig_type=std_logic lab=vbgsc}
C {devices/lab_pin.sym} 190 100 0 1 {name=l13 sig_type=std_logic lab=vbgtg}
C {devices/res.sym} 450 -70 0 0 {name=R1
value=\{Rload\}
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 390 -100 0 0 {name=l14 sig_type=std_logic lab=vbg}
C {sky130_fd_pr/corner.sym} 70 -330 0 0 {name=CORNER only_toplevel=false corner=\{corner\}}
C {devices/gnd.sym} 170 260 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -390 180 0 0 {name=Vtrim0 value="dc \{vio\}"}
C {devices/ammeter.sym} -290 -100 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} -190 -100 0 0 {name=Vmeas1 savecurrent=true}
C {devices/vsource.sym} -310 180 0 0 {name=Vtrim1 value="dc \{vio\}"}
C {devices/vsource.sym} -230 180 0 0 {name=Vtrim2 value="dc \{vio\}"}
C {devices/vsource.sym} -150 180 0 0 {name=Vtrim3 value="dc \{vio\}"}
C {devices/gnd.sym} -270 210 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -150 130 0 0 {name=l15 sig_type=std_logic lab=trim3}
C {devices/lab_pin.sym} -230 100 0 0 {name=l16 sig_type=std_logic lab=trim2}
C {devices/lab_pin.sym} -310 70 0 0 {name=l17 sig_type=std_logic lab=trim1}
C {devices/lab_pin.sym} -390 40 0 0 {name=l18 sig_type=std_logic lab=trim0}
C {sky130_fd_pr/nfet3_01v8.sym} 170 180 1 0 {name=M1
W=2
L=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/code.sym} 360 -330 0 0 {name=STDCELLPATH

only_toplevel=true
format="tcleval( @value )"
value=".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"}
