v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 710 -300 710 -250 { lab=GND}
N 710 -540 710 -450 {
lab=vin}
N 1490 -540 1490 -520 { lab=vin}
N 1490 -540 1740 -540 { lab=vin}
N 1740 -540 1740 -520 { lab=vin}
N 1740 -460 1740 -420 { lab=#net1}
N 1530 -490 1700 -490 { lab=#net2}
N 1490 -460 1490 -420 { lab=#net2}
N 1490 -360 1490 -300 { lab=#net3}
N 1490 -300 1740 -300 { lab=#net3}
N 1740 -360 1740 -300 { lab=#net3}
N 1580 -300 1580 -280 { lab=#net3}
N 1490 -390 1740 -390 { lab=GND}
N 1670 -390 1670 -210 { lab=GND}
N 1580 -210 1670 -210 { lab=GND}
N 1740 -490 1840 -490 { lab=vin}
N 1840 -540 1840 -490 { lab=vin}
N 1730 -540 1840 -540 { lab=vin}
N 1390 -490 1490 -490 { lab=vin}
N 1390 -540 1390 -490 { lab=vin}
N 1390 -540 1490 -540 { lab=vin}
N 1580 -250 1670 -250 { lab=GND}
N 1960 -510 2000 -510 { lab=#net1}
N 1830 -540 1960 -540 { lab=vin}
N 2040 -510 2140 -510 { lab=vin}
N 2040 -540 2140 -540 { lab=vin}
N 2140 -540 2140 -510 { lab=vin}
N 2040 -480 2040 -440 { lab=out}
N 1670 -210 1960 -210 { lab=GND}
N 2040 -210 2130 -210 { lab=GND}
N 1960 -370 2000 -370 { lab=vb}
N 1510 -250 1540 -250 { lab=vb}
N 1600 -490 1600 -440 { lab=#net2}
N 1490 -440 1600 -440 { lab=#net2}
N 1960 -440 1970 -440 { lab=#net4}
N 2030 -440 2040 -440 { lab=out}
N 2040 -440 2040 -400 { lab=out}
N 2040 -370 2140 -370 { lab=GND}
N 2140 -370 2140 -210 { lab=GND}
N 2130 -210 2140 -210 { lab=GND}
N 2040 -340 2040 -210 { lab=GND}
N 1430 -390 1450 -390 { lab=neg}
N 1780 -390 1810 -390 { lab=pos}
N 1960 -510 1960 -470 { lab=#net1}
N 1740 -440 1800 -440 { lab=#net1}
N 1770 -470 1880 -470 { lab=#net1}
N 1770 -470 1770 -440 { lab=#net1}
N 2040 -440 2100 -440 { lab=out}
N 2100 -440 2110 -440 { lab=out}
N 2110 -440 2120 -440 { lab=out}
N 1980 -420 2000 -420 { lab=GND}
N 1920 -420 1920 -210 { lab=GND}
N 1250 -330 1290 -330 { lab=vb}
N 1250 -380 1250 -330 { lab=vb}
N 1250 -380 1330 -380 { lab=vb}
N 1330 -300 1330 -280 { lab=GND}
N 1330 -330 1410 -330 { lab=GND}
N 1410 -330 1410 -290 { lab=GND}
N 1330 -290 1410 -290 { lab=GND}
N 1220 -330 1250 -330 { lab=vb}
N 1330 -380 1330 -360 { lab=vb}
N 1330 -430 1330 -380 { lab=vb}
N 1580 -220 1580 -210 { lab=GND}
N 1330 -280 1330 -210 { lab=GND}
N 1880 -470 1960 -470 { lab=#net1}
N 1960 -540 2040 -540 { lab=vin}
N 1960 -210 1980 -210 { lab=GND}
N 1980 -210 2040 -210 { lab=GND}
N 1920 -420 1980 -420 { lab=GND}
N 1800 -440 1860 -440 { lab=#net1}
N 1920 -440 1960 -440 { lab=#net4}
N 350 -410 350 -390 { lab=vin}
N 350 -330 350 -300 {
lab=GND}
N 710 -540 1290 -540 {
lab=vin}
N 1290 -540 1390 -540 {
lab=vin}
N 1330 -210 1580 -210 {
lab=GND}
N 790 -410 850 -410 {
lab=neg}
N 350 -540 710 -540 {
lab=vin}
N 1330 -480 1330 -430 {
lab=vb}
N 1230 -480 1330 -480 {
lab=vb}
N 1230 -480 1230 -460 {
lab=vb}
N 350 -540 350 -410 {
lab=vin}
N 610 -380 640 -380 { lab=en}
N 480 -180 480 -160 { lab=en}
N 480 -100 480 -70 {
lab=GND}
C {devices/gnd.sym} 1450 -210 0 0 {name=l34 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1510 -490 0 1 {name=M8
L=1.2
W=3
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1470 -390 0 0 {name=M9
L=1
W=2
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1760 -390 0 1 {name=M10
L=1
W=2
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1720 -490 0 0 {name=M11
L=1.2
W=3
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1560 -250 0 0 {name=M13
L=1
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2020 -510 0 0 {name=M14
L=1.2
W=3
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2020 -370 0 0 {name=M18
L=1
W=1
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1510 -250 0 0 {name=l36 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 1960 -370 0 0 {name=l37 sig_type=std_logic lab=vb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1890 -440 3 1 {name=C1 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 2000 -440 3 0 {name=R7
W=0.69
L=4.5
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1310 -330 0 0 {name=M20
L=1
W=1
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1220 -330 0 0 {name=l38 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 1430 -390 0 0 {name=p5 sig_type=std_logic lab=neg
}
C {devices/lab_pin.sym} 850 -410 2 0 {name=p6 sig_type=std_logic lab=neg
}
C {devices/lab_pin.sym} 2120 -440 0 0 {name=l49 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1810 -390 2 0 {name=p2 sig_type=std_logic lab=pos

}
C {devices/vsource.sym} 350 -360 0 0 {name=V3 value=3.3}
C {devices/gnd.sym} 350 -300 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 710 -250 0 0 {name=l5 lab=GND}
C {devices/isource.sym} 1230 -430 2 0 {name=I0 value=10u}
C {devices/gnd.sym} 1230 -400 0 0 {name=l11 lab=GND}
C {devices/code_shown.sym} -901.25 -1301.875 0 0 {name=NGSPICE
only_toplevel=true
value="

*.include /home/lild4d4/pdk/gf180mcuC/libs.tech/ngspice/design.ngspice
*.lib /home/lild4d4/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
*.lib /home/lild4d4/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
*.lib /home/lild4d4/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice cap_mim
*.lib /home/lild4d4/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice res_typical

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt


*.param R=1k
*R10 out 0 \{R\}
*IL out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL out 0 1p
.options savecurrents

.nodeset v(out)=0
.nodeset v(pos)=0

*TRANSIENT
*.control
*save all
*tran 1ns 2us
*plot v(out) v(ref) v(pos) v(vin)
*plot v(op_out)
*plot v(out)
*plot i(v3)
*plot i(v3)*v(vin)
*.endc

*Stability_Analysis
*.control
*alter IL 0
*alter Vs AC =0
*alter Vt AC=1
*ac dec 10 1 1G
*plot vdb(out)
*plot (180/pi)*vp(out)
*let ph= (180/pi)*vp(out)
*meas ac pm FIND ph WHEN vdb(out)=0
*.endc

*SUPPLY SWEEP
.control
save all
dc V3 4 0 -0.01
plot v(out) v(ref) v(pos) v(vin)
*wrdata /foss/designs/LDO_Design/data/data_SuplySweep_Vout.dat v(out)
*wrdata /foss/designs/LDO_Design/data/data_SuplySweep_Vref.dat v(ref)
*wrdata /foss/designs/LDO_Design/data/data_SuplySweep_Vin.dat v(vin)
plot v(op_out)
*plot i(v4)
.endc

*PSRR_Analysis
.control
save all
alter V3 AC =1
ac dec 100 1 1G
plot vdb(out)
let gm0=@m.xm0.m0[gm]
let Zout=(1.5)/(gm0*v(op_out))
let Zout2=v(out)/gm0
plot vdb(Zout2)
*wrdata /foss/designs/LDO_Design/data/data_PSRR.dat vdb(out)
.endc


**Load_Transient
*.control
*alter IL 50u
*alter R10 3600k
*tran 0.1u 100u
*meas TRAN V_ldo_100u FIND v(out) AT=5u
*meas TRAN V_ldo_10m FIND v(out) AT=100u
*let load_reg= V_ldo_100u-V_ldo_10m
*let load_current =(-1*i(V3)-131.8e-6)
*print load_reg
*plot load_current v(out)-1.8
*.endc
"}
C {devices/lab_pin.sym} 350 -540 0 0 {name=l1 sig_type=std_logic lab=vin}
C {/foss/designs/PMIC_lab-on-chip_power-management/DCDC_LDO_sim/bgr2.sym} -650 1270 0 0 {name=xb1}
C {devices/vsource.sym} 480 -130 0 0 {name=Ven value=3.3}
C {devices/lab_pin.sym} 480 -180 0 0 {name=l46 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 610 -380 0 0 {name=l51 sig_type=std_logic lab=en}
C {devices/gnd.sym} 480 -70 0 0 {name=l48 lab=GND}
