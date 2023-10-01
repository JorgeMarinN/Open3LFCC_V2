v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {asd} 3790 -3530 0 0 0.4 0.4 {}
N 4100 -4410 4100 -4300 { lab=vdd}
N 4100 -4150 4100 -4130 { lab=GND}
N 4000 -4230 4030 -4230 { lab=en}
N 3620 -4010 3620 -3970 { lab=GND}
N 3620 -4090 3620 -4070 { lab=vdd}
N 3390 -4100 3390 -4080 { lab=en}
N 3390 -4020 3390 -3990 { lab=GND}
N 3620 -4230 3620 -4090 { lab=vdd}
N 4180 -4260 4210 -4260 {
lab=bg_out}
N 4180 -4200 4210 -4200 {
lab=vb}
N 4150 -3890 4150 -3870 {
lab=vb}
N 4150 -3810 4150 -3790 { lab=GND}
C {devices/gnd.sym} 4100 -4130 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 3620 -4040 0 0 {name=Vs value=3.5}
C {devices/vsource.sym} 3390 -4050 0 0 {name=Ven value=3.5}
C {devices/lab_pin.sym} 3390 -4100 0 0 {name=l27 sig_type=std_logic lab=en}
C {devices/gnd.sym} 3620 -3970 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 3390 -3990 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 4760 -4550 0 0 {name= SPICE1 only_toplevel="false" value=
"

.options method=gear
*.options method=trap
.options maxorder=3
.param R=36k
.save all
*R10 ldo_out GND \{R\}
*IL ldo_out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL ldo_out gnd 10p
*.lib "/home/mustafa/mabrains/pdks/share/pdk/sky130A/libs.tech/ngspice/sky130.lib_mod.spice" tt
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT





.nodeset v(x1.inn)=1.2
.nodeset v(x1.inp)=1.2
.nodeset v(x1.mir)=1
.nodeset v(x1.net5)=1
.nodeset v(x1.bg_out)=1.1
*.nodeset v(ldo_out)=1.8
*.nodeset v(pos)=1.1
*.nodeset v(net3)=0.8
*.nodeset v(net1)=0.7
.nodeset v(x1.net6)=0.9
*.nodeset v(net7)=0.75
.nodeset v(xy1.vb)=0.9


.option temp=27
*User_defined_functions
.control
define max(vector_name) (vecmax(vector_name))
define min(vector_name) (vecmin(vector_name))
.endc


*Temp_sweep
.control
save all
save v(xb2.ota_out)
*alter IL 0
dc temp 85 0 -1
let temp_coeff=1000000*(max(bg_out)-min(bg_out))/85
print temp_coeff
let ibo  = @m.xb2.xm26.msky130_fd_pr__pfet_g5v0d10v5[id]
print ibo
*plot v(ldo_out)
plot v(bg_out)
plot i(vs)
plot i(xb2.vibias)
set wr_singlescale
set wr_vecnames
set appendwrite
plot v(xb2.ota_out)

*op
*let ibias  = @m.xb2.xm26.msky130_fd_pr__pfet_g5v0d10v5[id]
*print ibias
.endc


.control
*alter IL 0
*alter R10 1G
op
let iq =i(Vs)
print iq
*print all
set wr_singlescale
set wr_vecnames
set appendwrite
*if v(ldo_out)>1
*wrdata op_point_test v(ldo_out)
*end
.endc


*PSRR_Analysis
.control
*alter IL 0
alter Vs AC =1
*alter Vt AC=0
*alter L1 0
*alter C2 0
ac dec 10 1 1G
meas AC PSRR100 FIND vdb(bg_out) AT=100
meas AC PSRR100k FIND vdb(bg_out) AT=100k
*plot vdb(ldo_out)
plot vdb(bg_out)
.endc
.control
*alter IL 0
*alter R10 1G
op
let iq =i(Vs)
print iq
*print all
set wr_singlescale
set wr_vecnames
set appendwrite
*if v(ldo_out)>1
*wrdata op_point_test v(ldo_out)
*end
.endc


*PSRR_Analysis
.control
*alter IL 0
alter Vs AC =1
*alter Vt AC=0
*alter L1 0
*alter C2 0
ac dec 10 1 1G
meas AC PSRR100 FIND vdb(bg_out) AT=100
meas AC PSRR100k FIND vdb(bg_out) AT=100k
*plot vdb(ldo_out)
plot vdb(bg_out)
.endc


"}
C {devices/lab_pin.sym} 4000 -4230 0 0 {name=l9 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 3620 -4230 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 4100 -4410 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3970 -3670 0 1 {name=R8
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=4}
C {devices/lab_pin.sym} 4210 -4260 2 0 {name=l12 sig_type=std_logic lab=bg_out}
C {devices/lab_pin.sym} 4210 -4200 2 0 {name=l11 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 4150 -3890 2 0 {name=l14 sig_type=std_logic lab=vb}
C {devices/isource.sym} 4150 -3840 2 0 {name=I0 value=7u}
C {devices/gnd.sym} 4150 -3790 0 0 {name=l1 lab=GND}
C {/foss/designs/Open3LFCC_V2/bgr_otard.sym} 2740 -2580 0 0 {name=xb2}
