#---------------------------------------------------
# CACE format 4.0 characterization file /foss/designs/cheetah-v3/sky130_ak_ip__cmos_vref/cace/sky130_ak_ip__cmos_vref.txt.x
#---------------------------------------------------

name:		sky130_ak_ip__cmos_vref
description:	All-CMOS voltage reference based on the NFET threshold voltage
commit:		N/A
PDK:		sky130A
foundry:	SkyWater
cace_format:	4.0
authorship {
	designer:	Adan Kvitschal
	company:	ModuHub Tecnologia LTDA
	creation_date:	March 8, 2024
	modification_date:	June 10, 2024 at 11:08pm
	license:	Apache 2.0
}

# Paths to various files

paths {
	root:		..
	documentation:	doc
	schematic:	xschem
	layout:		gds
	magic:		mag
	netlist:	netlist
	testbench:	cace
	simulation:	ngspice
	plots:		plots
	logs:		ngspice/log

	reports:	reports
}

# Project dependencies

dependencies {
}

# Pin names and descriptions

pins {
	name:		vbg
	description:	Bandgap/Reference Voltage Output
	type:		analog
	direction:	output
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		vbgsc
	description:	1024mV scaled reference voltage
	type:		analog
	direction:	output
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		vbgtg
	description:	1048mV scaled reference voltage
	type:		analog
	direction:	output
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		vptat
	description:	PTAT Voltage Output
	type:		analog
	direction:	output
	Vmin:		avss - 0.3
	Vmax:		avdd + 0.3

	+
	name:		avdd18
	description:	Positive analog power supply
	type:		power
	direction:	inout
	Vmin:		1.62
	Vmax:		1.98

	+
	name:		dvdd
	description:	Positive digital power supply
	type:		power
	direction:	inout
	Vmin:		1.62
	Vmax:		1.98

	+
	name:		avss
	description:	Analog ground
	type:		ground
	direction:	inout
	Vmin:		-0.3
	Vmax:		0.3

	+
	name:		dvss
	description:	Digital ground
	type:		ground
	direction:	inout
	Vmin:		-0.3
	Vmax:		0.3

	+
	name:		ena
	description:	Enable
	type:		digital
	direction:	input
	Vmin:		dgnd-0.3
	Vmax:		dvdd+0.3

	+
	name:		trim0
	description:	Trim bit 0
	type:		digital
	direction:	input
	Vmin:		dgnd-0.3
	Vmax:		dvdd+0.3

	+
	name:		trim1
	description:	Trim bit 1
	type:		digital
	direction:	input
	Vmin:		dgnd-0.3
	Vmax:		dvdd+0.3

	+
	name:		trim2
	description:	Trim bit 2
	type:		digital
	direction:	input
	Vmin:		dgnd-0.3
	Vmax:		dvdd+0.3

	+
	name:		trim3
	description:	Trim bit 3
	type:		digital
	direction:	input
	Vmin:		dgnd-0.3
	Vmax:		dvdd+0.3
}

# Default values for electrical parameter measurement conditions
# if not otherwise specified

default_conditions {
	name:		Vdvdd
	description:	Digital Domain Power Supply value
	unit:		V
	typical:	1.8

	+
	name:		Vavdd
	description:	Analog domain power supply value
	unit:		V
	typical:	1.8

	+
	name:		Vena
	description:	Enable pin voltage, active low
	display:	Vena
	unit:		V
	typical:	0

	+
	name:		Rload
	description:	Output load resistance
	display:	RLoad
	unit:		{ohms}
	typical:	10e6

	+
	name:		Cload
	description:	Output load capacitance
	display:	CLoad
	unit:		pF
	typical:	0.1

	+
	name:		temperature
	description:	Ambient temperature
	display:	Temp
	unit:		{degrees}C
	typical:	27

	+
	name:		corner
	description:	Process corner
	display:	Corner
	minimum:	ss
	typical:	tt
	maximum:	ff

	+
	name:		iterations
	description:	Iterations to run
	display:	Iterations
	minimum:	1
	maximum:	10
	step:		linear
	stepsize:	1
}

# List of electrical parameters to be measured and their specified limits

electrical_parameters {
	name:		vbg_nom
	status:		skip
	description:	Nominal Reference Voltage
	display:	Vbg Nominal
	unit:		V
	spec {
		minimum:	1.18 fail
		typical:	1.20
		maximum:	1.22 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_vref_stat.spice
		format:		ascii .data null result
	}
	conditions {
		name:		corner
		typical:	mc

		+
		name:		iterations
		typical:	10

		+
		name:		output_option
		typical:	1

		+
		name:		ref_pin_option
		typical:	0
	}

	+
	name:		vbgsc_nom
	status:		skip
	description:	Scaled Reference Voltage of 1024mV
	display:	Vbgsc Nominal
	unit:		mV
	spec {
		minimum:	any
		typical:	1024
		maximum:	any
	}
	simulate {
		tool:		ngspice
		template:	tb_vref_stat.spice
		format:		ascii .data null result
	}
	conditions {
		name:		corner
		typical:	mc

		+
		name:		iterations
		typical:	10

		+
		name:		output_option
		typical:	1

		+
		name:		ref_pin_option
		typical:	1
	}

	+
	name:		vbgtg_nom
	status:		skip
	description:	Scaled Reference Voltage of 1048mV
	display:	Vbgtg Nominal
	unit:		mV
	spec {
		minimum:	any
		typical:	1048
		maximum:	any
	}
	simulate {
		tool:		ngspice
		template:	tb_vref_stat.spice
		format:		ascii .data null result
	}
	conditions {
		name:		corner
		typical:	mc

		+
		name:		iterations
		typical:	10

		+
		name:		output_option
		typical:	1

		+
		name:		ref_pin_option
		typical:	2
	}

	+
	name:		Idd_enabled
	status:		skip
	description:	Current draw through analog supply, circuit enabled
	display:	Current consumption
	unit:		{micro}A
	spec {
		minimum:	any
		typical:	2
		maximum:	5 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_power.spice
		format:		ascii .data null result
	}
	conditions {
		name:		Vavdd
		minimum:	1.62
		typical:	1.8
		maximum:	1.98

		+
		name:		temperature
		minimum:	-40
		typical:	27
		maximum:	85

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		Idd_disabled
	status:		skip
	description:	Current draw through analog supply, circuit disabled
	display:	Standby current
	unit:		pA
	spec {
		minimum:	any
		typical:	250
		maximum:	500 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_power.spice
		format:		ascii .data null result
	}
	conditions {
		name:		Vavdd
		minimum:	1.62
		typical:	1.8
		maximum:	1.98

		+
		name:		Vena
		typical:	1.8

		+
		name:		temperature
		minimum:	-40
		typical:	27
		maximum:	85

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		accuracy_vs_process
	status:		skip
	description:	Reference voltage error due to process variation
	display:	Accuracy vs Process
	unit:		%
	spec {
		minimum:	any
		typical:	0.2
		maximum:	0.5 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_vref_stat.spice
		format:		ascii .data null result
	}
	conditions {
		name:		corner
		typical:	mc

		+
		name:		iterations
		typical:	100

		+
		name:		output_option
		typical:	2

		+
		name:		ref_pin_option
		typical:	0
	}

	+
	name:		accuracy_vs_mismatch
	status:		skip
	description:	Reference voltage error due to mismatch around typical corner
	display:	Accuracy vs Mismatch
	unit:		%
	spec {
		minimum:	any
		typical:	0.2
		maximum:	0.5 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_vref_stat.spice
		format:		ascii .data null result
	}
	conditions {
		name:		corner
		typical:	tt_mm

		+
		name:		iterations
		typical:	100

		+
		name:		output_option
		typical:	2

		+
		name:		ref_pin_option
		typical:	0
	}

	+
	name:		psrr_1k
	status:		skip
	description:	PSRR @ 1kHz
	display:	PSRR @ 1kHz
	unit:		dB
	spec {
		minimum:	60 fail
		typical:	70
		maximum:	any
	}
	simulate {
		tool:		ngspice
		template:	tb_psrr.spice
		format:		ascii .data result
	}
	conditions {
		name:		temperature
		minimum:	-40
		typical:	27
		maximum:	85

		+
		name:		frequency
		unit:		Hz
		typical:	1k
		note:		Center frequency for the PSRR simulation

		+
		name:		corner
		minimum:	ss
		typical:	tt
		maximum:	ff
	}

	+
	name:		temp_coeff
	status:		skip
	description:	Vref output Temperature Coefficient
	display:	Temperature Coefficient
	unit:		ppm/{degrees}C
	spec {
		minimum:	any
		typical:	20
		maximum:	30 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_temp_coeff.spice
		format:		ascii .data result
	}
	conditions {
		name:		temperature
		minimum:	-40
		maximum:	85

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		line_reg
	status:		skip
	description:	Reference voltage stability against supply voltage variation
	display:	Line Regulation
	unit:		%
	spec {
		minimum:	any
		typical:	0.05
		maximum:	0.10 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_line_reg.spice
		format:		ascii .data result
	}
	conditions {
		name:		Vavdd
		minimum:	1.62
		maximum:	1.98

		+
		name:		temperature
		typical:	27

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		load_reg
	status:		skip
	description:	Reference voltage stability against load variation
	display:	Load Regulation
	unit:		%
	spec {
		minimum:	any
		typical:	0.05
		maximum:	0.10 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_load_reg.spice
		format:		ascii .data result
	}
	conditions {
		name:		Iload
		unit:		nA
		minimum:	200
		maximum:	1000
		step:		100

		+
		name:		Istep
		unit:		nA
		typical:	100

		+
		name:		temperature
		typical:	27

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		output_noise
	status:		skip
	description:	Output Noise
	display:	Output Noise
	unit:		nV/{sqrt}Hz
	spec {
		minimum:	any
		typical:	20
		maximum:	30 fail
	}
	simulate {
		tool:		ngspice
		template:	tb_onoise.spice
		format:		ascii .data result
	}
	conditions {
		name:		frequency
		minimum:	0.1
		maximum:	10

		+
		name:		temperature
		typical:	27

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		vref_temp_plot
	status:		skip
	description:	Vref vs Temperature
	display:	Vref vs Temperature
	unit:		mV
	simulate {
		tool:		ngspice
		template:	tb_temp_sweep.spice
		format:		ascii .data temp_sweep result
	}
	plot {
		filename:	vref_vs_temp.png
		xaxis:		temp_sweep
		yaxis:		result
	}
	variables {
		name:		temp_sweep
		display:	Temperature
		unit:		{degrees}C

		+
		name:		result
		display:	Reference Voltage
		unit:		V
	}
	conditions {
		name:		temperature
		minimum:	-40
		maximum:	85

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		line_reg_plot
	status:		skip
	description:	Reference Voltage vs Supply Voltage
	display:	Vref vs Vs
	unit:		mV
	simulate {
		tool:		ngspice
		template:	tb_supply_sweep.spice
		format:		ascii .data vsupply result
	}
	plot {
		filename:	vref_vs_vsup.png
		xaxis:		vsupply
		yaxis:		result
	}
	variables {
		name:		vsupply
		display:	Supply Voltage
		unit:		V

		+
		name:		result
		display:	Reference Voltage
		unit:		V
	}
	conditions {
		name:		Vavdd
		minimum:	1.0
		maximum:	1.98

		+
		name:		temperature
		typical:	27

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		trim_plot
	status:		skip
	description:	Reference Voltage vs Trim Word
	display:	Vref vs Trim
	unit:		mV
	simulate {
		tool:		ngspice
		template:	tb_trim.spice
		format:		ascii .data trimword result
	}
	plot {
		filename:	vref_vs_trim.png
		xaxis:		trimword
		yaxis:		result
	}
	variables {
		name:		trimword
		display:	Trim Word
		unit:		U

		+
		name:		result
		display:	Reference Voltage
		unit:		V
	}
	conditions {
		name:		vio
		unit:		V
		typical:	1.8

		+
		name:		temperature
		typical:	27

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		startup_plot
	status:		skip
	description:	Bandgap Voltage startup time
	display:	Startup Time
	unit:		mV
	simulate {
		tool:		ngspice
		template:	tb_startup.spice
		format:		ascii .data time result
	}
	plot {
		filename:	vref_startup.png
		xaxis:		time
		yaxis:		result
	}
	variables {
		name:		time
		display:	Time
		unit:		{micro}s

		+
		name:		result
		display:	Reference Voltage
		unit:		V
	}
	conditions {
		name:		Vena
		unit:		V
		minimum:	0
		maximum:	1.8

		+
		name:		enable_time
		unit:		{micro}s
		typical:	10

		+
		name:		rise_time
		unit:		ns
		typical:	100

		+
		name:		tran_step
		unit:		ns
		typical:	10

		+
		name:		tran_start
		unit:		{micro}s
		typical:	10

		+
		name:		tran_stop
		unit:		{micro}s
		typical:	50

		+
		name:		temperature
		typical:	27

		+
		name:		corner
		enumerate:	ss sf tt fs ff
	}

	+
	name:		vref_process_histogram
	status:		skip
	description:	Reference Voltage vs Process Variation
	display:	Vref vs Process Variation
	unit:		V
	simulate {
		tool:		ngspice
		template:	tb_vref_stat.spice
		format:		ascii .data null result
	}
	plot {
		filename:	vref_vs_process.png
		type:		histogram
		xaxis:		result
	}
	conditions {
		name:		corner
		typical:	mc

		+
		name:		iterations
		maximum:	100

		+
		name:		output_option
		typical:	0

		+
		name:		ref_pin_option
		typical:	0
	}

	+
	name:		vref_mismatch_histogram
	status:		skip
	description:	Reference Voltage vs Mismatch
	display:	Vref vs Mismatch
	unit:		V
	simulate {
		tool:		ngspice
		template:	tb_vref_stat.spice
		format:		ascii .data null result
	}
	plot {
		filename:	vref_vs_mismatch.png
		type:		histogram
		xaxis:		result
	}
	conditions {
		name:		corner
		typical:	tt_mm

		+
		name:		iterations
		maximum:	100

		+
		name:		output_option
		typical:	0

		+
		name:		ref_pin_option
		typical:	0
	}
}

# List of physical parameters to be measured and their specified limits

physical_parameters {
	name:		area
	status:		skip
	description:	Total circuit layout area
	display:	area
	unit:		{micro}m{squared}
	spec {
		maximum:	50000 fail
	}
	evaluate {
		tool:		cace_area
	}

	+
	name:		LVS_errors
	description:	LVS errors
	display:	LVS errors
	spec {
		maximum:	0 fail
	}
	evaluate {
		tool:		cace_lvs run_project_lvs.tcl
	}

	+
	name:		DRC_errors
	status:		skip
	description:	DRC errors
	display:	DRC errors
	spec {
		maximum:	0 fail
	}
	evaluate {
		tool:		cace_drc
	}
}
