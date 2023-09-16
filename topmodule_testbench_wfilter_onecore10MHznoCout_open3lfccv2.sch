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
N 1490 -800 1550 -800 {
lab=VOUT_CORE}
N 1610 -800 1660 -800 {
lab=VOUT_CORE}
N 1550 -800 1610 -800 {
lab=VOUT_CORE}
N 1610 -590 1610 -550 {
lab=VSS}
N 1610 -800 1610 -770 {
lab=VOUT_CORE}
N -920 -210 -920 -190 { lab=GND}
N -920 -320 -920 -270 { lab=VDIG}
N -660 -210 -660 -190 { lab=GND}
N -660 -320 -660 -270 { lab=VH_LS}
N 1610 -710 1610 -650 {
lab=#net1}
N 1500 -740 1500 -700 {
lab=VSS}
N 510 -850 560 -850 {
lab=D1}
N 510 -820 560 -820 {
lab=D2}
N 510 -790 560 -790 {
lab=D2_N}
N 510 -760 560 -760 {
lab=D1_N}
N 680 -690 680 -680 {
lab=V_CFTOP}
N 860 -800 930 -800 {
lab=V_res}
N 860 -760 890 -760 {
lab=VSS}
N 1110 -800 1140 -800 {
lab=VOUT_CORE}
N 660 -680 680 -680 {
lab=V_CFTOP}
N 660 -680 660 -580 {
lab=V_CFTOP}
N 660 -520 660 -490 {
lab=V_CFBOT}
N 660 -490 770 -490 {
lab=V_CFBOT}
N 770 -690 770 -490 {
lab=V_CFBOT}
N 740 -690 770 -690 {
lab=V_CFBOT}
N 560 -670 560 -640 {
lab=V_CFTOP}
N 560 -670 660 -670 {
lab=V_CFTOP}
N 560 -580 560 -490 {
lab=V_CFBOT}
N 560 -490 660 -490 {
lab=V_CFBOT}
N -450 -510 -420 -510 {
lab=VDIG}
N -120 -510 -100 -510 {
lab=VH_LS}
N -100 -530 -100 -510 {
lab=VH_LS}
N -120 -470 -80 -470 {
lab=D1_N}
N -450 -640 -420 -640 {
lab=VDIG}
N -120 -640 -100 -640 {
lab=VH_LS}
N -100 -660 -100 -640 {
lab=VH_LS}
N -120 -600 -80 -600 {
lab=D2_N}
N -450 -780 -420 -780 {
lab=VDIG}
N -120 -780 -100 -780 {
lab=VH_LS}
N -100 -800 -100 -780 {
lab=VH_LS}
N -120 -740 -80 -740 {
lab=D2}
N -450 -920 -420 -920 {
lab=VDIG}
N -120 -920 -100 -920 {
lab=VH_LS}
N -100 -940 -100 -920 {
lab=VH_LS}
N -120 -880 -80 -880 {
lab=D1}
N -900 -860 -900 -850 {
lab=D1_s}
N -900 -860 -890 -860 {
lab=D1_s}
N -900 -790 -900 -780 {
lab=VSS}
N -910 -780 -900 -780 {
lab=VSS}
N -900 -770 -900 -760 {
lab=D2_s}
N -900 -770 -890 -770 {
lab=D2_s}
N -900 -700 -900 -690 {
lab=VSS}
N -910 -690 -900 -690 {
lab=VSS}
N -900 -680 -900 -670 {
lab=D2_N_s}
N -900 -680 -890 -680 {
lab=D2_N_s}
N -900 -610 -900 -600 {
lab=VSS}
N -910 -600 -900 -600 {
lab=VSS}
N -900 -590 -900 -580 {
lab=D1_N_s}
N -900 -590 -890 -590 {
lab=D1_N_s}
N -900 -520 -900 -510 {
lab=VSS}
N -910 -510 -900 -510 {
lab=VSS}
N -450 -900 -420 -900 {
lab=D1_s}
N -450 -760 -420 -760 {
lab=D2_s}
N -450 -620 -420 -620 {
lab=D2_N_s}
N -450 -490 -420 -490 {
lab=D1_N_s}
N -460 -730 -420 -730 {
lab=VSS}
N -420 -740 -420 -730 {
lab=VSS}
N -460 -870 -420 -870 {
lab=VSS}
N -420 -880 -420 -870 {
lab=VSS}
N -460 -590 -420 -590 {
lab=VSS}
N -420 -600 -420 -590 {
lab=VSS}
N -460 -460 -420 -460 {
lab=VSS}
N -420 -470 -420 -460 {
lab=VSS}
N 1010 -800 1050 -800 {
lab=V_inductor}
N 930 -800 950 -800 {
lab=V_res}
N 860 -1040 860 -990 { lab=VH}
N 860 -930 860 -840 {
lab=#net2}
C {devices/vsource.sym} -830 -240 0 0 {name=V2 value=0}
C {devices/gnd.sym} -830 -190 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} -850 -80 0 0 {name=s1 only_toplevel=false value="
.param VIN = 5
.param VDIG = 1.8
.param VH = 5
.param RL = 50
.option scale=1e-6
.options method=gear
*.option temp=70
.ic v(V_CFTOP) = VH/2
.ic v(V_CFBOT) = 0
*.ic v(V_CFTOP_p) = VH/2
*.ic v(V_CFBOT_p) = 0
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
tran 0.1n 30u
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
C {devices/isource.sym} 1690 -740 0 0 {name=I0 value=0.15
}
C {devices/lab_wire.sym} 1610 -550 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1610 -620 0 0 {name=R2
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
C {devices/vsource.sym} 1610 -740 0 0 {name=V9 value=0}
C {devices/capa.sym} 1500 -770 0 0 {name=C4
m=1
value=51n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1500 -700 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1490 -800 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/lab_wire.sym} -460 -730 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 510 -850 0 0 {name=l18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 510 -820 0 0 {name=l20 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 510 -790 0 0 {name=l25 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 510 -760 0 0 {name=l26 sig_type=std_logic lab=D1_N}
C {devices/lab_wire.sym} 560 -670 0 0 {name=l27 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 560 -490 0 0 {name=l28 sig_type=std_logic lab=V_CFBOT}
C {devices/lab_wire.sym} 1110 -800 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/lab_wire.sym} 890 -760 2 0 {name=l33 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_2.sym} 560 -610 0 0 {name=C5 model=cap_mim_m3_2 W=15 L=30 MF=1978 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 660 -550 0 0 {name=C6 model=cap_mim_m3_1 W=15 L=30 MF=1978 spiceprefix=X}
C {devices/lab_pin.sym} -450 -490 2 1 {name=l14 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -450 -510 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -450 -620 2 1 {name=l4 sig_type=std_logic lab=D2_N_s
}
C {devices/lab_wire.sym} -450 -640 0 0 {name=l5 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -80 -470 0 1 {name=l6 sig_type=std_logic lab=D1_N
}
C {devices/lab_pin.sym} -80 -600 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_pin.sym} -450 -760 2 1 {name=l7 sig_type=std_logic lab=D2_s
}
C {devices/lab_pin.sym} -80 -740 0 1 {name=l8 sig_type=std_logic lab=D2
}
C {devices/lab_pin.sym} -450 -900 2 1 {name=l9 sig_type=std_logic lab=D1_s
}
C {devices/lab_wire.sym} -450 -920 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -100 -940 0 1 {name=l125 sig_type=std_logic lab=VH_LS
}
C {devices/lab_pin.sym} -80 -880 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} -890 -860 0 1 {name=l13 sig_type=std_logic lab=D1_s}
C {devices/vsource.sym} -900 -640 0 0 {name=V12 value="PULSE(0 1.8 16.6n 1n 1n 31.6n 100n)"}
C {devices/vsource.sym} -900 -730 0 0 {name=V13 value="PULSE(0 1.8 15.6n 1n 1n 33.3n 100n)"}
C {devices/lab_wire.sym} -890 -770 0 1 {name=l43 sig_type=std_logic lab=D2_s}
C {devices/lab_pin.sym} -890 -680 0 1 {name=l15 sig_type=std_logic lab=D2_N_s
}
C {devices/vsource.sym} -900 -550 0 0 {name=V14 value="PULSE(0 1.8 65.6n 1n 1n 33.3n 100n)"}
C {devices/lab_pin.sym} -890 -590 0 1 {name=l16 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -910 -510 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -910 -780 0 0 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -910 -690 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -910 -600 0 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -900 -820 0 0 {name=V15 value="PULSE(0 1.8 64.7n 1n 1n 35.4n 100n)"}
C {devices/lab_wire.sym} -450 -780 0 0 {name=l22 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} -460 -870 0 0 {name=l23 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -460 -590 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -460 -460 0 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -100 -800 0 1 {name=l34 sig_type=std_logic lab=VH_LS
}
C {devices/lab_pin.sym} -100 -660 0 1 {name=l35 sig_type=std_logic lab=VH_LS
}
C {devices/lab_pin.sym} -100 -530 0 1 {name=l36 sig_type=std_logic lab=VH_LS
}
C {devices/ind.sym} 1080 -800 1 0 {name=L37
m=1
value=5.1u
footprint=1206
device=inductor}
C {devices/lab_wire.sym} 1030 -800 1 1 {name=l38 sig_type=std_logic lab=V_inductor}
C {devices/res.sym} 980 -800 1 0 {name=R3
value=0
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 930 -800 1 1 {name=l39 sig_type=std_logic lab=V_res}
C {devices/vsource.sym} 860 -960 0 0 {name=V18 value=0}
C {devices/lab_wire.sym} 860 -1040 0 0 {name=l24 sig_type=std_logic lab=VH}
C {LS_FINAL.sym} -270 -900 0 0 {name=x1}
C {LS_FINAL.sym} -270 -760 0 0 {name=x2}
C {LS_FINAL.sym} -270 -620 0 0 {name=x3}
C {LS_FINAL.sym} -270 -490 0 0 {name=x4}
C {power_stage.sym} 460 -590 0 0 {name=X5}
