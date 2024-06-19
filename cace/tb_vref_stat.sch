v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
lab=GND}
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
N -160 40 -120 40 {
lab=dvdd}
N -200 70 -160 70 {
lab=dvdd}
N 120 170 140 170 {
lab=GND}
N 120 170 120 250 {
lab=GND}
N 200 170 220 170 {
lab=GND}
N 220 170 220 250 {
lab=GND}
N 120 250 220 250 {
lab=GND}
N 130 130 190 130 {
lab=vptat}
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
.nodeset v(vptat)=0.1
.control
set wr_singlescale
let it = 0
let iterations = \{iterations|maximum\}
let output_option = \{output_option\}
let ref_pin_option = \{ref_pin_option\}
let vref_data = vector(iterations)
let vref_mean = 0
print iterations
print vref_data
dowhile it < iterations
	print it
	reset
	save vbg, vbgsc, vbgtg
	op
	if ref_pin_option = 1
		let vref_data[it] = V(vbgsc)
	else
		if ref_pin_option = 2
			let vref_data[it] = V(vbgtg)
		else
			let vref_data[it] = V(vbg)
		end
	end
	if vref_data[it] >= 0 
		if vref_data[it] < 2
			let it = it + 1
		end
	end
end
if output_option = 0
	print V(vref_data)
	let it = 1
	wrdata ngspice/test.data vref_data[0]
	set appendwrite
	dowhile it < iterations
		wrdata \{simpath\}/\{filename\}_\{N\}.data vref_data[it]
		let it = it + 1
	end
	quit
end
let it = 0;
dowhile it < iterations
	let vref_mean = vref_mean + vref_data[it]
	let it = it + 1
end
let vref_mean = vref_mean / iterations
if output_option = 1
	print vref_mean
	wrdata \{simpath\}/\{filename\}_\{N\}.data vref_mean
	quit
end
let vref_deviation = 0
let it = 0;
dowhile it < iterations
	let vref_deviation = vref_deviation + (vref_data[it]-vref_mean)^2
	let it = it+1
end
let vref_deviation = (vref_deviation / iterations)^0.5
let vref_accuracy = 3 * vref_deviation / vref_mean
print vref_data
print vref_accuracy
wrdata \{simpath\}/\{filename\}_\{N\}.data vref_accuracy
quit
.endc
"}
C {devices/lab_pin.sym} 190 40 0 1 {name=l10 sig_type=std_logic lab=vbg}
C {devices/gnd.sym} 170 10 0 0 {name=l20 lab=GND}
C {../xschem/sky130_ak_ip__cmos_vref.sym} 10 40 0 0 {name=X1}
C {devices/vdd.sym} -290 -130 0 0 {name=l1 lab=avdd}
C {devices/vsource.sym} -290 -100 0 0 {name=Vsense1 value="dc 0"}
C {devices/vdd.sym} -200 70 0 0 {name=l4 lab=dvdd}
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
C {devices/vsource.sym} -190 -100 0 0 {name=Vsense2 value="dc 0"}
C {devices/lab_pin.sym} 190 70 0 1 {name=l3 sig_type=std_logic lab=vbgsc}
C {devices/lab_pin.sym} 190 100 0 1 {name=l13 sig_type=std_logic lab=vbgtg}
C {devices/res.sym} 450 -70 0 0 {name=R1
value=\{Rload\}
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 390 -100 0 0 {name=l14 sig_type=std_logic lab=vbg}
C {sky130_fd_pr/corner.sym} 70 -330 0 0 {name=CORNER only_toplevel=false corner=\{corner\}}
C {devices/gnd.sym} 170 250 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -160 130 0 0 {name=l15 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 170 150 1 0 {name=M1
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
C {devices/lab_pin.sym} 190 130 0 1 {name=l16 sig_type=std_logic lab=vptat}
C {devices/code.sym} 350 -330 0 0 {name=STDCELLPATH

only_toplevel=true
format="tcleval( @value )"
value=".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"}
