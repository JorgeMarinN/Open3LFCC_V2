v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 3510 -3930 3510 -3820 { lab=vdd}
N 3510 -3930 3930 -3930 { lab=vdd}
N 4230 -3730 4230 -3710 { lab=ldo_out}
N 4230 -3870 4230 -3790 { lab=vdd}
N 4230 -3760 4330 -3760 { lab=vdd}
N 4330 -3870 4330 -3760 { lab=vdd}
N 4150 -3550 4230 -3550 { lab=pos}
N 4230 -3720 4330 -3720 { lab=ldo_out}
N 4330 -3720 4370 -3720 { lab=ldo_out}
N 4230 -3950 4230 -3870 { lab=vdd}
N 4330 -3950 4330 -3870 { lab=vdd}
N 4230 -3950 4330 -3950 { lab=vdd}
N 4230 -3430 4230 -3390 { lab=GND}
N 4230 -3390 4230 -3380 { lab=GND}
N 3930 -3930 4230 -3930 { lab=vdd}
N 4090 -3760 4190 -3760 { lab=#net1}
N 3510 -3670 3510 -3650 { lab=GND}
N 3410 -3750 3440 -3750 { lab=en}
N 3030 -3530 3030 -3490 { lab=GND}
N 3030 -3610 3030 -3590 { lab=vdd}
N 2800 -3620 2800 -3600 { lab=en}
N 2800 -3540 2800 -3510 { lab=GND}
N 3030 -3750 3030 -3610 { lab=vdd}
N 3230 -3300 3230 -3280 { lab=#net2}
N 3230 -3130 3230 -3110 { lab=#net3}
N 3230 -3220 3230 -3210 { lab=#net4}
N 3230 -3150 3230 -3140 { lab=#net3}
N 3250 -3230 3250 -3180 { lab=GND}
N 3250 -3250 3250 -3230 { lab=GND}
N 3230 -3140 3230 -3130 { lab=#net3}
N 3230 -3050 3230 -3040 { lab=#net5}
N 3250 -3080 3250 -3010 { lab=GND}
N 3250 -3010 3250 -2980 { lab=GND}
N 3240 -2980 3250 -2980 { lab=GND}
N 3230 -2980 3240 -2980 { lab=GND}
N 3230 -2980 3230 -2970 { lab=GND}
N 3250 -3170 3250 -3080 { lab=GND}
N 3250 -3180 3250 -3170 { lab=GND}
N 3230 -2980 3230 -2940 { lab=GND}
N 3230 -2940 3230 -2930 { lab=GND}
N 3010 -3220 3010 -3180 { lab=GND}
N 3010 -3300 3010 -3280 { lab=#net2}
N 3010 -3300 3230 -3300 {
lab=#net2}
N 4230 -3630 4230 -3520 {
lab=pos}
N 4230 -3460 4230 -3430 {
lab=GND}
N 4230 -3710 4230 -3690 {
lab=ldo_out}
N 3590 -3780 3620 -3780 {
lab=neg}
N 3590 -3720 3620 -3720 {
lab=vb}
N 4090 -3760 4090 -3690 {
lab=#net1}
N 3710 -3730 3750 -3730 {
lab=pos}
N 3710 -3650 3750 -3650 {
lab=neg}
N 3990 -3870 4030 -3870 {
lab=GND}
N 3850 -3930 3850 -3870 {
lab=vdd}
N 4010 -3510 4010 -3470 {
lab=vb}
C {bgr2.sym} 2150 -2100 0 0 {name=xb2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 4210 -3760 0 0 {name=M24
L=0.5
W=10
nf=1
mult=800
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 4150 -3550 1 0 {name=l25 sig_type=std_logic lab=pos}
C {devices/gnd.sym} 4230 -3380 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 4320 -3720 0 0 {name=p3 lab=ldo_out
}
C {devices/gnd.sym} 4030 -3870 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 3510 -3650 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 3030 -3560 0 0 {name=Vs value=3.5}
C {devices/vsource.sym} 2800 -3570 0 0 {name=Ven value=3.5}
C {devices/lab_pin.sym} 2800 -3620 0 0 {name=l27 sig_type=std_logic lab=en}
C {devices/gnd.sym} 3030 -3490 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 2800 -3510 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 4760 -4550 0 0 {name= SPICE1 only_toplevel="false" value=
"

.param R=36k
.save all
R10 ldo_out GND \{R\}
IL ldo_out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL ldo_out gnd 10p
*.lib "/home/mustafa/mabrains/pdks/share/pdk/sky130A/libs.tech/ngspice/sky130.lib_mod.spice" tt
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT





.nodeset v(x1.inn)=1.2
.nodeset v(x1.inp)=1.2
.nodeset v(x1.mir)=1
.nodeset v(x1.net5)=1
.nodeset v(x1.bg_out)=1.1
.nodeset v(ldo_out)=1.8
.nodeset v(pos)=1.1
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
save v(xb2.mir)
alter IL 0
dc temp 85 0 -1
let temp_coeff=1000000*(max(ldo_out)-min(ldo_out))/85
print temp_coeff
plot v(ldo_out)
plot i(vs1)
plot v(xb2.mir)
set wr_singlescale
set wr_vecnames
set appendwrite
.endc


.control
alter IL 0
*alter R10 1G
op
let iq =i(Vs)
print iq
*print all
set wr_singlescale
set wr_vecnames
set appendwrite
if v(ldo_out)>1
wrdata op_point_test v(ldo_out)
end
.endc



*Stability_Analysis
.control
alter IL 0
alter Vs AC =0
alter Vt AC=1
ac dec 10 1 1G
plot vdb(out)
plot (180/pi)*vp(out)
let ph= (180/pi)*vp(out)
meas ac pm FIND ph WHEN vdb(out)=0
.endc


*PSRR_Analysis
.control
alter IL 0
alter Vs AC =1
alter Vt AC=0
alter L1 0
alter C2 0
ac dec 10 1 1G
meas AC PSRR100 FIND vdb(ldo_out) AT=100
meas AC PSRR100k FIND vdb(ldo_out) AT=100k
plot vdb(ldo_out)
.endc




*supply_sweep
.control
alter IL 0
dc Vs 4 0 -0.01
plot vdd ldo_out
meas DC Vldo_Sup_2 FIND ldo_out AT=3.2
meas DC Vldo_nom FIND ldo_out AT=3.5
meas DC Vldo_Sup_2_8 FIND ldo_out AT=4
let line_reg = abs((Vldo_Sup_2_8-Vldo_Sup_2)/0.8)
print line_reg
*meas DC vin WHEN v(ldo_out)=1.764
*let dropout=vin-1.764
*print dropout
set wr_singlescale
set wr_vecnames
set appendwrite
.endc





*Load_Reg_switches
*V1 c1 0 DC 0 PWL(0 5 20u 5 35u 0 50u 0 100u 0)
*V2 c2 0 DC 0 PWL(0 0 20u 0 35u 0 50u 5 100u 5)
*s1 ldo_out 2 c1 0 switch1 ON
*s2 ldo_out 3 c2 0 switch1 OFF
*.model switch1 sw vt=0.1 ron =0.1 roff =1G
*R1 2 0 18k
*R2 3 0 180

*.control
*alter R10 1G
*tran 0.1u 90u
*plot v(ldo_out) v(c1) v(c2)
*meas TRAN V_ldo_100u FIND v(ldo_out) AT=10u
*meas TRAN V_ldo_10m FIND v(ldo_out) AT=50u
*let load_reg= V_ldo_100u-V_ldo_10m
*print load_reg
*.endc


**Load_Transient
.control
alter IL 50u
alter R10 3600k
tran 0.1u 100u
meas TRAN V_ldo_100u FIND v(ldo_out) AT=5u
meas TRAN V_ldo_10m FIND v(ldo_out) AT=100u
let load_reg= V_ldo_100u-V_ldo_10m
let load_current =(-1*i(Vs)-131.8e-6)
print load_reg
plot load_current v(ldo_out)-1.8
.endc


**Transient
.control
alter R10 36k
alter @IL[PWL] = [ 0 0 10u 0 20u 0 30u 0 ]
alter @Vs[pulse] = [ 1.8 3 10u 10u 1u 100u 200u ]
alter IL 0
tran 0.1u 100u
plot vdd ldo_out
.endc
.control
alter R10 36k
alter @IL[PWL] = [ 0 0 10u 0 20u 0 30u 0 ]
alter @Vs[pulse] = [ 0 2.3 10u 0.1u 1u 100u 200u ]
tran 0.1u 100u
plot vdd ldo_out
.endc
.control
alter R10 36k
alter @IL[PWL] = [ 0 0 10u 0 20u 0 30u 0 ]
alter @Ven[pulse] = [ 0 2.3 10u 0.1u 1u 100u 200u ]
tran 0.1u 100u
*meas TRAN st_up_time when v(ldo_out)>1.782
plot ven ldo_out
.endc





"}
C {devices/lab_pin.sym} 3410 -3750 0 0 {name=l9 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 3030 -3750 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 3510 -3930 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3230 -3180 0 1 {name=R5
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3230 -3250 0 1 {name=R6
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=8}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3230 -3080 0 1 {name=R7
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=2}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3230 -3010 0 1 {name=R8
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=4}
C {devices/gnd.sym} 3230 -2930 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 3010 -3250 0 0 {name=Vs1 value=1}
C {devices/gnd.sym} 3010 -3180 0 0 {name=l10 lab=GND}
C {devices/res.sym} 4230 -3660 0 0 {name=RD2
value=60e3
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 4230 -3490 0 0 {name=RD1
value=40e3
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 3620 -3780 2 0 {name=l12 sig_type=std_logic lab=neg}
C {devices/lab_pin.sym} 3620 -3720 2 0 {name=l11 sig_type=std_logic lab=vb}
C {/foss/designs/Open3LFCC_V2/OTA_erroramp_jm.sym} 3910 -3690 0 0 {name=x1}
C {devices/lab_pin.sym} 3710 -3730 0 0 {name=l13 sig_type=std_logic lab=pos}
C {devices/lab_pin.sym} 3710 -3650 0 0 {name=l14 sig_type=std_logic lab=neg}
C {devices/lab_pin.sym} 4010 -3470 0 0 {name=l15 sig_type=std_logic lab=vb}
