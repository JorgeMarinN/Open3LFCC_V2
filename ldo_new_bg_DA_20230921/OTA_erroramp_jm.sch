v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -650 380 -630 { lab=VDD}
N 380 -650 630 -650 { lab=VDD}
N 630 -650 630 -630 { lab=VDD}
N 630 -570 630 -530 { lab=Vmid}
N 420 -600 590 -600 { lab=Vas}
N 380 -570 380 -530 { lab=Vas}
N 380 -470 380 -410 { lab=Vsrc}
N 380 -410 630 -410 { lab=Vsrc}
N 630 -470 630 -410 { lab=Vsrc}
N 470 -410 470 -390 { lab=Vsrc}
N 380 -500 630 -500 { lab=VSS}
N 560 -500 560 -320 { lab=VSS}
N 470 -320 560 -320 { lab=VSS}
N 630 -600 730 -600 { lab=VDD}
N 730 -650 730 -600 { lab=VDD}
N 620 -650 730 -650 { lab=VDD}
N 280 -600 380 -600 { lab=VDD}
N 280 -650 280 -600 { lab=VDD}
N 280 -650 380 -650 { lab=VDD}
N 470 -360 560 -360 { lab=VSS}
N 850 -620 890 -620 { lab=Vmid}
N 720 -650 850 -650 { lab=VDD}
N 930 -620 1030 -620 { lab=VDD}
N 930 -650 1030 -650 { lab=VDD}
N 1030 -650 1030 -620 { lab=VDD}
N 930 -590 930 -550 { lab=OUT}
N 560 -320 850 -320 { lab=VSS}
N 930 -320 1020 -320 { lab=VSS}
N 850 -480 890 -480 { lab=ibias}
N 400 -360 430 -360 { lab=ibias}
N 490 -600 490 -550 { lab=Vas}
N 380 -550 490 -550 { lab=Vas}
N 850 -550 860 -550 { lab=#net1}
N 920 -550 930 -550 { lab=OUT}
N 930 -550 930 -510 { lab=OUT}
N 930 -480 1030 -480 { lab=VSS}
N 1030 -480 1030 -320 { lab=VSS}
N 1020 -320 1030 -320 { lab=VSS}
N 930 -450 930 -320 { lab=VSS}
N 320 -500 340 -500 { lab=IN_M}
N 670 -500 700 -500 { lab=IN_P}
N 850 -620 850 -580 { lab=Vmid}
N 630 -550 690 -550 { lab=Vmid}
N 660 -580 770 -580 { lab=Vmid}
N 660 -580 660 -550 { lab=Vmid}
N 930 -550 990 -550 { lab=OUT}
N 870 -530 890 -530 { lab=VSS}
N 810 -530 810 -320 { lab=VSS}
N 50 -440 90 -440 { lab=ibias}
N 50 -490 50 -440 { lab=ibias}
N 50 -490 130 -490 { lab=ibias}
N 130 -410 130 -390 { lab=VSS}
N 130 -440 210 -440 { lab=VSS}
N 210 -440 210 -400 { lab=VSS}
N 130 -400 210 -400 { lab=VSS}
N 130 -490 130 -470 { lab=ibias}
N 130 -540 130 -490 { lab=ibias}
N 470 -330 470 -320 { lab=VSS}
N 130 -390 130 -320 { lab=VSS}
N 130 -320 470 -320 { lab=VSS}
N 770 -580 850 -580 { lab=Vmid}
N 850 -650 930 -650 { lab=VDD}
N 850 -320 870 -320 { lab=VSS}
N 870 -320 930 -320 { lab=VSS}
N 810 -530 870 -530 { lab=VSS}
N 690 -550 750 -550 { lab=Vmid}
N 810 -550 850 -550 { lab=#net1}
C {devices/ipin.sym} -210 -570 0 0 {name=p2 lab=IN_M
}
C {devices/ipin.sym} -220 -520 0 0 {name=p1 lab=IN_P}
C {devices/ipin.sym} -220 -440 0 0 {name=p3 lab=OUT}
C {devices/ipin.sym} -220 -400 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -220 -360 0 0 {name=p5 lab=VSS
}
C {devices/ipin.sym} -210 -610 0 0 {name=p9 lab=ibias}
C {devices/lab_wire.sym} 320 -500 0 0 {name=l8 sig_type=std_logic lab=IN_M}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 400 -600 0 1 {name=M9
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 360 -500 0 0 {name=M10
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 650 -500 0 1 {name=M11
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 610 -600 0 0 {name=M12
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 450 -360 0 0 {name=M13
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 910 -620 0 0 {name=M14
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 910 -480 0 0 {name=M18
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 780 -550 3 1 {name=C3 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 890 -550 3 0 {name=R7
W=0.69
L=4.5
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 -440 0 0 {name=M20
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
C {devices/lab_wire.sym} 130 -540 0 1 {name=l3 sig_type=std_logic lab=ibias}
C {devices/lab_wire.sym} 1030 -320 0 1 {name=l4 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1030 -650 0 1 {name=l5 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 990 -550 0 1 {name=l6 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 700 -500 0 1 {name=l7 sig_type=std_logic lab=IN_P
\\
}
C {devices/lab_wire.sym} 420 -410 0 1 {name=l10 sig_type=std_logic lab=Vsrc}
C {devices/lab_wire.sym} 740 -580 0 1 {name=l11 sig_type=std_logic lab=Vmid}
C {devices/lab_wire.sym} 380 -560 2 1 {name=l12 sig_type=std_logic lab=Vas}
C {devices/lab_wire.sym} 850 -480 0 1 {name=l1 sig_type=std_logic lab=ibias}
C {devices/lab_wire.sym} 400 -360 0 1 {name=l2 sig_type=std_logic lab=ibias}
