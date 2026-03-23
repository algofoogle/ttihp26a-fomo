v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -200 260 -200 {lab=VLO}
N 140 -200 140 -150 {lab=VLO}
N 140 -120 140 -60 {lab=VGND}
N 260 -200 260 -150 {lab=VLO}
N 260 -120 260 -60 {lab=VGND}
N 140 -60 260 -60 {lab=VGND}
N 260 -200 380 -200 {lab=VLO}
N 380 -200 380 -150 {lab=VLO}
N 380 -120 380 -60 {lab=VGND}
N 260 -60 380 -60 {lab=VGND}
N 380 -200 500 -200 {lab=VLO}
N 500 -200 500 -150 {lab=VLO}
N 500 -120 500 -60 {lab=VGND}
N 380 -60 500 -60 {lab=VGND}
N 100 -60 140 -60 {lab=VGND}
N 500 -200 540 -200 {lab=VLO}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -120 0 0 {name=M2
l=2.5u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 100 -120 1 0 {name=p10 sig_type=std_logic lab=sel[0]}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 -120 0 0 {name=M4
l=1.25u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 -120 0 0 {name=M5
l=0.65u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 480 -120 0 0 {name=M7
l=0.15u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 220 -120 1 0 {name=p1 sig_type=std_logic lab=sel[1]}
C {lab_pin.sym} 340 -120 1 0 {name=p3 sig_type=std_logic lab=sel[2]}
C {lab_pin.sym} 460 -120 1 0 {name=p4 sig_type=std_logic lab=sel[3]}
C {ipin.sym} 100 -60 0 0 {name=p2 lab=VGND}
C {opin.sym} 540 -200 2 1 {name=p5 lab=VLOW}
C {ipin.sym} 100 -220 0 0 {name=p7 lab=sel[3:0]}
