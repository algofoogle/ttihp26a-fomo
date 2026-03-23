v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Chain of 30 inverters (even!)} 200 -280 0 0 0.4 0.4 {}
N 160 -240 160 -220 {lab=VCC}
N 160 -140 160 -120 {lab=VGND}
C {inverter.sym} 180 -180 0 0 {name=x[29:0]}
C {lab_pin.sym} 120 -180 0 0 {name=p1 sig_type=std_logic lab=J[28:0],A
}
C {lab_pin.sym} 240 -180 0 1 {name=p2 sig_type=std_logic lab=Y,J[28:0]}
C {ipin.sym} 100 -80 0 0 {name=p3 lab=A}
C {opin.sym} 280 -80 0 0 {name=p4 lab=Y}
C {iopin.sym} 160 -240 0 1 {name=p5 lab=VCC}
C {iopin.sym} 160 -120 0 1 {name=p6 lab=VGND}
