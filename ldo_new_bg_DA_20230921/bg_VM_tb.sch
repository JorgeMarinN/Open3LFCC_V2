v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -430 380 -410 {
lab=vdd}
N 260 -510 380 -510 {
lab=vdd}
N 380 -510 380 -430 {
lab=vdd}
N 380 -260 380 -240 { lab=GND}
N 460 -370 490 -370 {
lab=out}
N 460 -310 490 -310 {
lab=#net1}
N 110 -120 110 -80 { lab=GND}
N 110 -200 110 -180 { lab=vdd}
N 110 -340 110 -200 { lab=vdd}
N 490 -310 500 -310 {
lab=#net1}
N 500 -310 500 -290 {
lab=#net1}
N 500 -230 500 -210 { lab=GND}
C {devices/code_shown.sym} -581.25 -591.875 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

*TRANSIENT
*.control
*save all
*tran 1ns 2us
*plot v(out)
*.endc

*SUPPLY SWEEP
.control
save all
dc V1 4 0 -0.01
plot v(out) VDD
plot v(vbe) v(out)-v(vbe)
*wrdata /foss/designs/LDO_Design/data/data_SuplySweep_Vout.dat v(out)
*wrdata /foss/designs/LDO_Design/data/data_SuplySweep_Vref.dat v(ref)
*wrdata /foss/designs/LDO_Design/data/data_SuplySweep_Vin.dat v(vin)
.endc

.control
save all
alter V1 AC =1
ac dec 100 1 1G
plot vdb(out)

.endc
"}
C {devices/gnd.sym} 380 -240 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -370 2 0 {name=l12 sig_type=std_logic lab=out}
C {devices/vsource.sym} 110 -150 0 0 {name=V1 value=3}
C {devices/gnd.sym} 110 -80 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 110 -340 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 260 -510 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/isource.sym} 500 -260 2 0 {name=I0 value=1.5u}
C {devices/gnd.sym} 500 -210 0 0 {name=l3 lab=GND}
C {/foss/designs/Open3LFCC_V2/ldo_new_bg_DA_20230921/bg_VM.sym} -980 1310 0 0 {name=xb2}
