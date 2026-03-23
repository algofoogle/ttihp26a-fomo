module digital (ringosc,
    rst_n,
    VPWR,
    VGND,
    divs);
 input ringosc;
 input rst_n;
 inout VPWR;
 inout VGND;
 output [5:0] divs;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire clknet_0_ringosc;
 wire \counter[0] ;
 wire \counter[1] ;
 wire \counter[2] ;
 wire \counter[3] ;
 wire \counter[4] ;
 wire \counter[5] ;
 wire \counter[6] ;
 wire \counter[7] ;
 wire net23;
 wire net21;
 wire net1;
 wire net;
 wire clknet_1_0__leaf_ringosc;
 wire clknet_1_1__leaf_ringosc;
 wire net9;
 wire net10;
 wire net12;
 wire net13;
 wire net14;
 wire net16;
 wire net19;
 wire net24;
 wire net27;

 sg13g2_decap_8 FILLER_0_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_105 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_112 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_0_119 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_0_123 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_135 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_142 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_149 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_156 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_163 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_0_170 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_0_174 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_0_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_98 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_1_104 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_1_142 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_1_146 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_1_174 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_1_38 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_1_44 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_1_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_83 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_90 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_2_134 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_2_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_165 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_2_172 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_2_174 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_2_59 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_2_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_3_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_3_166 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_3_173 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_3_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_3_43 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_3_92 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_4_115 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_4_117 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_4_130 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_4_153 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_4_155 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_4_173 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_4_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_45 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_4_52 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_4_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_4_71 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_4_95 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_4_97 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_1 _31_ (.VDD(VPWR),
    .Y(_08_),
    .A(net14),
    .VSS(VGND));
 sg13g2_inv_1 _32_ (.VDD(VPWR),
    .Y(_09_),
    .A(net10),
    .VSS(VGND));
 sg13g2_nor2_1 _33_ (.A(\counter[0] ),
    .B(_09_),
    .Y(_00_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _34_ (.B1(net10),
    .VDD(VPWR),
    .Y(_10_),
    .VSS(VGND),
    .A1(\counter[0] ),
    .A2(\counter[1] ));
 sg13g2_a21oi_1 _35_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(\counter[0] ),
    .A2(\counter[1] ),
    .Y(_01_),
    .B1(_10_));
 sg13g2_a21oi_1 _36_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(\counter[0] ),
    .A2(\counter[1] ),
    .Y(_11_),
    .B1(\counter[2] ));
 sg13g2_nand3_1 _37_ (.B(\counter[1] ),
    .C(\counter[2] ),
    .A(\counter[0] ),
    .Y(_12_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _38_ (.Y(_13_),
    .A(net10),
    .B(net27),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2_1 _39_ (.A(net12),
    .B(_13_),
    .Y(_02_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2b_1 _40_ (.A(\counter[3] ),
    .B_N(_12_),
    .Y(_14_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and4_1 _41_ (.A(\counter[0] ),
    .B(\counter[1] ),
    .C(\counter[2] ),
    .D(\counter[3] ),
    .X(_15_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _42_ (.A(_09_),
    .B(net19),
    .C(_15_),
    .Y(_03_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xor2_1 _43_ (.B(_15_),
    .A(net13),
    .X(_16_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _44_ (.A(net10),
    .B(_16_),
    .X(_04_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _45_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(net13),
    .A2(_15_),
    .Y(_17_),
    .B1(net24));
 sg13g2_nand3_1 _46_ (.B(net24),
    .C(_15_),
    .A(net13),
    .Y(_18_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _47_ (.Y(_19_),
    .A(net10),
    .B(_18_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2_1 _48_ (.A(_17_),
    .B(_19_),
    .Y(_05_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2b_1 _49_ (.Y(_20_),
    .B(_18_),
    .A_N(net16),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand4_1 _50_ (.B(net24),
    .C(net16),
    .A(net13),
    .Y(_21_),
    .VDD(VPWR),
    .VSS(VGND),
    .D(_15_));
 sg13g2_and3_1 _51_ (.X(_06_),
    .A(net10),
    .B(_20_),
    .C(_21_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _52_ (.B1(net10),
    .VDD(VPWR),
    .Y(_22_),
    .VSS(VGND),
    .A1(_08_),
    .A2(_21_));
 sg13g2_a21oi_1 _53_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_08_),
    .A2(_21_),
    .Y(_07_),
    .B1(_22_));
 sg13g2_dfrbpq_1 _54_ (.RESET_B(net),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_00_),
    .Q(\counter[0] ),
    .CLK(clknet_1_1__leaf_ringosc));
 sg13g2_tiehi _54__2 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net));
 sg13g2_dfrbpq_1 _55_ (.RESET_B(net8),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_01_),
    .Q(\counter[1] ),
    .CLK(clknet_1_1__leaf_ringosc));
 sg13g2_tiehi _55__9 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net8));
 sg13g2_dfrbpq_1 _56_ (.RESET_B(net7),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_02_),
    .Q(\counter[2] ),
    .CLK(clknet_1_1__leaf_ringosc));
 sg13g2_tiehi _56__8 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net7));
 sg13g2_dfrbpq_1 _57_ (.RESET_B(net6),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_03_),
    .Q(\counter[3] ),
    .CLK(clknet_1_1__leaf_ringosc));
 sg13g2_tiehi _57__7 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net6));
 sg13g2_dfrbpq_1 _58_ (.RESET_B(net5),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_04_),
    .Q(\counter[4] ),
    .CLK(clknet_1_0__leaf_ringosc));
 sg13g2_tiehi _58__6 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net5));
 sg13g2_dfrbpq_1 _59_ (.RESET_B(net4),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_05_),
    .Q(\counter[5] ),
    .CLK(clknet_1_0__leaf_ringosc));
 sg13g2_tiehi _59__5 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net4));
 sg13g2_dfrbpq_1 _60_ (.RESET_B(net3),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_06_),
    .Q(\counter[6] ),
    .CLK(clknet_1_0__leaf_ringosc));
 sg13g2_tiehi _60__4 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net3));
 sg13g2_dfrbpq_1 _61_ (.RESET_B(net2),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_07_),
    .Q(\counter[7] ),
    .CLK(clknet_1_0__leaf_ringosc));
 sg13g2_tiehi _61__3 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net2));
 sg13g2_buf_1 _70_ (.A(\counter[2] ),
    .X(net23),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 _71_ (.A(\counter[3] ),
    .X(net21),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 _72_ (.A(net13),
    .X(divs[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 _73_ (.A(net24),
    .X(divs[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 _74_ (.A(net16),
    .X(divs[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 _75_ (.A(net14),
    .X(divs[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_16 clkbuf_0_ringosc (.X(clknet_0_ringosc),
    .A(ringosc),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_16 clkbuf_1_0__f_ringosc (.X(clknet_1_0__leaf_ringosc),
    .A(clknet_0_ringosc),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_16 clkbuf_1_1__f_ringosc (.X(clknet_1_1__leaf_ringosc),
    .A(clknet_0_ringosc),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_dlygate4sd3_1 hold10 (.A(rst_n),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net9));
 sg13g2_dlygate4sd3_1 hold11 (.A(net1),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net10));
 sg13g2_dlygate4sd3_1 hold13 (.A(_11_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net12));
 sg13g2_dlygate4sd3_1 hold14 (.A(\counter[4] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net13));
 sg13g2_dlygate4sd3_1 hold15 (.A(\counter[7] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net14));
 sg13g2_dlygate4sd3_1 hold17 (.A(\counter[6] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net16));
 sg13g2_dlygate4sd3_1 hold20 (.A(_14_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net19));
 sg13g2_dlygate4sd3_1 hold22 (.A(net21),
    .VDD(VPWR),
    .VSS(VGND),
    .X(divs[1]));
 sg13g2_dlygate4sd3_1 hold24 (.A(net23),
    .VDD(VPWR),
    .VSS(VGND),
    .X(divs[0]));
 sg13g2_dlygate4sd3_1 hold25 (.A(\counter[5] ),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net24));
 sg13g2_dlygate4sd3_1 hold28 (.A(_12_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net27));
 sg13g2_buf_1 input1 (.A(net9),
    .X(net1),
    .VDD(VPWR),
    .VSS(VGND));
endmodule
