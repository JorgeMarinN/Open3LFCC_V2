v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -380 -120 0 0 0.4 0.4 {}
N -830 -210 -830 -190 { lab=GND}
N -830 -320 -830 -270 { lab=VSS}
N -750 -210 -750 -190 { lab=GND}
N -750 -320 -750 -270 { lab=VH}
N 1070 -510 1130 -510 {
lab=VOUT_CORE}
N 1190 -510 1240 -510 {
lab=VOUT_CORE}
N 1130 -510 1190 -510 {
lab=VOUT_CORE}
N 1190 -300 1190 -260 {
lab=VSS}
N 1190 -510 1190 -480 {
lab=VOUT_CORE}
N -920 -210 -920 -190 { lab=GND}
N -920 -320 -920 -270 { lab=VDIG}
N -660 -210 -660 -190 { lab=GND}
N -660 -320 -660 -270 { lab=VH_LS}
N 1190 -420 1190 -360 {
lab=#net1}
N 1080 -450 1080 -410 {
lab=VSS}
N 440 -510 510 -510 {
lab=V_res}
N 690 -510 720 -510 {
lab=VOUT_CORE}
N -450 -510 -420 -510 {
lab=VDIG}
N -120 -510 -100 -510 {
lab=VH_LS}
N -100 -530 -100 -510 {
lab=VH_LS}
N -120 -470 -80 -470 {
lab=D1_N}
N -450 -920 -420 -920 {
lab=VDIG}
N -120 -920 -100 -920 {
lab=VH_LS}
N -100 -940 -100 -920 {
lab=VH_LS}
N -120 -880 -80 -880 {
lab=D1}
N -450 -900 -420 -900 {
lab=D1_s}
N -450 -490 -420 -490 {
lab=D1_N_s}
N -460 -870 -420 -870 {
lab=VSS}
N -420 -880 -420 -870 {
lab=VSS}
N -460 -460 -420 -460 {
lab=VSS}
N -420 -470 -420 -460 {
lab=VSS}
N 590 -510 630 -510 {
lab=V_inductor}
N 510 -510 530 -510 {
lab=V_res}
N 340 -510 440 -510 {
lab=V_res}
N 340 -640 340 -600 {
lab=#net2}
N 340 -570 360 -570 {
lab=#net2}
N 360 -620 360 -570 {
lab=#net2}
N 340 -620 360 -620 {
lab=#net2}
N 270 -570 300 -570 {
lab=D1}
N 340 -660 340 -640 {
lab=#net2}
N 340 -430 340 -390 {
lab=VSS}
N 340 -460 360 -460 {
lab=VSS}
N 360 -460 360 -410 {
lab=VSS}
N 340 -410 360 -410 {
lab=VSS}
N 260 -460 300 -460 {
lab=D1_N}
N 340 -540 340 -490 {
lab=V_res}
N 340 -770 340 -720 { lab=VH}
N -910 -860 -910 -850 {
lab=D1_s}
N -910 -860 -900 -860 {
lab=D1_s}
N -910 -790 -910 -780 {
lab=VSS}
N -920 -780 -910 -780 {
lab=VSS}
N -910 -590 -910 -580 {
lab=D1_N_s}
N -910 -590 -900 -590 {
lab=D1_N_s}
N -910 -520 -910 -510 {
lab=VSS}
N -920 -510 -910 -510 {
lab=VSS}
C {devices/vsource.sym} -830 -240 0 0 {name=V2 value=0}
C {devices/gnd.sym} -830 -190 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} -850 -80 0 0 {name=s1 only_toplevel=false value="
.param VIN = 5
.param VDIG = 1.8
.param VH = 5
.param RL = 50
.option scale=1e-6
.options method=gear
.options maxord=6
.options trtol=25
*.option temp=70
.ic v(vout_core)=3
*.probe vd(MP2:G:S)
*.save all
*.save v(d1) v(d2) v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(vout) v(vout_core) v(vdd) v(vh) i(v1) i(v5) i(vmeas) v(v_cftop,v_cfbot)
.save v(D1) v(D2) v(D1_N) v(D2_N) v(VOUT_CORE) v(vh) i(v3) i(v10) i(v11) v(v_cftop,v_cfbot) v(D1,v_cftop) v(D2,vout_core) v(D2_N,v_cfbot) v(D1_Nv,VSS) v(v_out_ls1) v(v_out_ls2) v(d2_n,v_cfbot) v(D1_s) v(D2_s) v(D2_N_s) v(D1_N_s) v(V_res) i(v9)
.save @m.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]
.param mc_mm_switch=0
*.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
*.include /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.options savecurrents
.control
*set gmin = 1e-20
*save all
tran 5n 500u
*write DCDC_v1p4_5MHz_NMOS_PMOS.raw
*wrdata ~/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(vmeas) tran.v(vdd) tran.i(v3) tran.v(vh) tran.i(v5)
*wrdata /foss/designs/personal/3LFCC_AC3E/xschem/hierarchy_sch/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout_core) tran.i(v1)
*wrdata /foss/designs/personal/3LFCC_AC3E/xschem/testbench/TopModule/3LFCC_v1p5_topmodule_wfilter_jmtest.txt tran.v(vout_core) tran.i(v3) tran.i(v4) tran.i(v9)
*wrdata /foss/designs/personal/3LFCC_v1p5_topmodule_wfilter_onecore10MHz_3lfcc23.txt tran.v(vout_core) tran.i(v3) tran.i(v4) tran.i(v9)
wrdata /foss/designs/Open3LFCC_V2/3LFCC_v1p5_topmodule_wfilter_onecore10MHz_open3lfccv2.txt tran.v(vout_core) tran.i(v3) tran.i(v4) tran.i(v9)


*Relación D1 D2 para combinar estados
plot v(D1) v(D2)+5	v(v_cftop,v_cfbot)
*plot v(D1_N) v(D2_N)

*Relación Pulso P y N para acondicionar tiempos muertos (reducir peaks)
plot v(D1) v(D1_N) v(v_cftop,v_cfbot) v(vout_core)
*plot v(D1) v(D1_N)+5 
plot -i(v3)
plot -i(v4)
*plot i(v18) i(v19)
plot i(v10) i(v11)
*plot v(D1) v(D1_N)	 v(D2) v(D2_N) i(v3) v(v_cftop,v_cfbot)
plot v(D1_N_s) v(D2_N_s)+2 v(D2_s)+4 v(D1_s)+6 i(v3)
plot v(D1_N_s) v(D1_s) v(D2_N_s) v(D2_s) i(v3)
plot v(V_res)
plot v(v_cftop,v_cfbot)
plot i(v9)
plot v(vout_core)


*Revisión de estados del convertidor en base a señal de Flycap (caso Cap_ext omitido para ver bien formas de onda de flycap)
*plot v(v_cftop,v_cfbot) v(vout_core) i(v3)

*plot v(v_cftop,v_cfbot) v(D1) v(D2)
*plot v(v_cftop,v_cfbot) v(D2) v(D2_N)
*plot v(v_cftop,v_cfbot) v(D1) v(D1_N)
*plot v(v_cftop,v_cfbot) v(vout_core) 

**Problema actual, eficiencia no se logra calcular debido a que no transicionan bien todo los estados, (Cuando el Flycap esta flotante no esta consumiendo energía, es decir la carga no esta conectada a la fuente de entrada...)
** Si bien D1- D1_N y D2- D2_N estan con sus respectivos tiempos muertos (redución de peaks), falta sincronizar bien D1 con D2 para lograr la conexión correcta para que la carga se conecte a la fuente en estado de flycap flotante.

.endc
"}
C {devices/vsource.sym} -750 -240 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -750 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -750 -320 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/isource.sym} 1270 -450 0 0 {name=I0 value=0.15
}
C {devices/lab_wire.sym} 1190 -260 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1190 -330 0 0 {name=R2
value=44
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -920 -240 0 0 {name=V8 value=\{VDIG\}}
C {devices/gnd.sym} -920 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -920 -320 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} -830 -320 0 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -660 -240 0 0 {name=V4 value=\{VH\}}
C {devices/gnd.sym} -660 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -660 -320 0 0 {name=l24 sig_type=std_logic lab=VH_LS}
C {devices/vsource.sym} 1190 -450 0 0 {name=V9 value=0}
C {devices/capa.sym} 1080 -480 0 0 {name=C4
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1080 -410 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1070 -510 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/lab_wire.sym} 690 -510 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/lab_pin.sym} -450 -490 2 1 {name=l14 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -450 -510 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -80 -470 0 1 {name=l6 sig_type=std_logic lab=D1_N
}
C {devices/lab_pin.sym} -450 -900 2 1 {name=l9 sig_type=std_logic lab=D1_s
}
C {devices/lab_wire.sym} -450 -920 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -100 -940 0 1 {name=l125 sig_type=std_logic lab=VH_LS
}
C {devices/lab_pin.sym} -80 -880 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} -460 -870 0 0 {name=l23 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -460 -460 0 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -100 -530 0 1 {name=l36 sig_type=std_logic lab=VH_LS
}
C {devices/ind.sym} 660 -510 1 0 {name=L37
m=1
value=100u
footprint=1206
device=inductor}
C {devices/lab_wire.sym} 610 -510 1 1 {name=l38 sig_type=std_logic lab=V_inductor}
C {devices/res.sym} 560 -510 1 0 {name=R3
value=0
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 510 -510 1 1 {name=l39 sig_type=std_logic lab=V_res}
C {LS_FINAL.sym} -270 -900 0 0 {name=x1}
C {LS_FINAL.sym} -270 -490 0 0 {name=x4}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 320 -570 0 0 {name=M3
L=0.5
W=4.38
nf=1
mult=4506
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 320 -460 0 0 {name=M1
L=0.5
W=4.38
nf=1
mult=2520
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 340 -690 0 0 {name=V1 value=0}
C {devices/lab_wire.sym} 340 -770 0 0 {name=l4 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 340 -390 2 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 -570 0 0 {name=l18 sig_type=std_logic lab=D1
}
C {devices/lab_pin.sym} 260 -460 0 0 {name=l20 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -900 -860 0 1 {name=l25 sig_type=std_logic lab=D1_s}
C {devices/vsource.sym} -910 -550 0 0 {name=V7 value="PULSE(0 1.8 200.0n 1n 1n 3000.0000000000005n 10000.0n)"}
C {devices/lab_pin.sym} -900 -590 0 1 {name=l28 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -920 -510 0 0 {name=l32 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -920 -780 0 0 {name=l33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -910 -820 0 0 {name=V10 value="PULSE(0 1.8 0n 1n 1n 3400.0000000000005n 10000.0n)"}
