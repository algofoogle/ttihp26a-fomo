v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -200 120 -140 {lab=VCC}
N 120 -110 120 -60 {lab=VHIGH}
N 120 -60 240 -60 {lab=VHIGH}
N 240 -200 240 -140 {lab=VCC}
N 240 -110 240 -60 {lab=VHIGH}
N 120 -200 240 -200 {lab=VCC}
N 240 -60 360 -60 {lab=VHIGH}
N 360 -200 360 -140 {lab=VCC}
N 360 -110 360 -60 {lab=VHIGH}
N 240 -200 360 -200 {lab=VCC}
N 360 -60 480 -60 {lab=VHIGH}
N 480 -200 480 -140 {lab=VCC}
N 480 -110 480 -60 {lab=VHIGH}
N 360 -200 480 -200 {lab=VCC}
N 480 -60 520 -60 {lab=VHIGH}
N 60 -200 120 -200 {lab=VCC}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 -140 0 0 {name=M1
l=2u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -140 0 0 {name=M3
l=1u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 340 -140 0 0 {name=M6
l=0.5u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 460 -140 0 0 {name=M8
l=0.15u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 80 -140 1 0 {name=p1 sig_type=std_logic lab=sel[0]}
C {lab_pin.sym} 200 -140 1 0 {name=p2 sig_type=std_logic lab=sel[1]}
C {lab_pin.sym} 320 -140 1 0 {name=p3 sig_type=std_logic lab=sel[2]}
C {lab_pin.sym} 440 -140 1 0 {name=p4 sig_type=std_logic lab=sel[3]}
C {ipin.sym} 60 -200 0 0 {name=p5 lab=VCC}
C {opin.sym} 520 -60 0 0 {name=p6 lab=VHIGH}
C {ipin.sym} 60 -240 0 0 {name=p7 lab=sel[3:0]}
