// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul  3 17:16:29 2022
// Host        : PC-20200608RQAQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [25:0]P;

  wire [16:0]A;
  wire [8:0]B;
  wire CLK;
  wire [25:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "25" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_15 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "17" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "9" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "25" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_15
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [16:0]A;
  input [8:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [25:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [16:0]A;
  wire [8:0]B;
  wire CLK;
  wire [25:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "25" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_15_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
KGg++J83s0yJ7o2/XMVLkRRTRjS0oC9h86tQjl1+xE1m53Uwmm0+K41skiYHo3Urr6lMQ4q2jL5Y
R/1NOu1WGg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jCBx8aLaNWpgdwu0tsffQfmLNKET4Uy44Upxw9AlkO9Ma9Y+tqZHrHroYhGJUxa/dyJZ7Z0HDJ1t
hUhVV6SjuhVMs1NLM1MVw9F3MTSW7MB/qx7j0WAj62FJgoxsCtt6g392p1JAAosX8yACeLKiQ0KF
mnMpugzqSRDI445k7So=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zdO8kU0uCj5Mggk0oLUcYcllNQJVD7vxIj25evesPPwBvXuv6EUsbKmUaCAlFUyG0YQ0mxWxXmzV
V/dRqKxqZ1ZI8+mX4IFaTJSCcYctMZsCl+2EWvQQHakV4QzWuCyca1phNacrRJfur8Ssc/Mhbez3
GLQCRrSfyBYyi3u9J+SAJRcJapyB1syXXhclDtup6m1z2C5S+NX/ql6kVXkcd9P+C5ordunfutgU
6uco8UymF/9QFYiBCWlTkHAgd7DH3dCI1E72N2H/KpX0/0xFBk++NCVuNucOwd9h4/hAyr4L+SI0
6Dzmn6kaBO4lnMAj5P58GIeWO/EtqrPeWg4UJw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdbUT4bIXyyFULrG0eEn0kqX6tjVoWssNb1FURO5jvyN5IkvkkDKCSLsd4J+2RE35ttJ20+4IZm2
p3H/UGCxkuCYtlZzovVpVf93DlhFUM2iSGd/L3evdLLL8VYETZTScGFdFXqiqe4ggXPHQCSEPD+e
PmMIJTGQka0DD3H+w+9t5Po/+M8b4r1y70l3Py7aYMeCEsZ/yHRmk8szsOjUbwvFEJk8SPXrEERg
EYMIrbryPHXq5E2fCL7hTgHa+bzIdFQOc2/8wn8YMVTmIJCZLBZDXvGSSm16cifWzXKHbPSly8js
RAoD2yYva4rr9cUy8jEyEpUcPGnaJXBDnB7lsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eGYl/A3vBqVYodgklvBXVlduDkQKDOe941//b/7D71XaDbW1Cqv7m5eqy+I7bUTyBfnKRV6WeTtg
K2eZlSMADPLNGmIEawb1T81kHA95L4SgxCaMDbzt0t5pO+IQTca0KxjvPFPjj860AZ/Y4IJCgD9Z
vZNfcSeez7bqGB9kVNzxh40hdeBm7XY8a+5R/yPufF2S8KSSaiPSvYwD8yXOBzVoRhqA9q5PWKTd
u6qoeWMnQ1r/hIDsge5oDE06b6+zC7odC460K8KIOtKzeCrfWezkynmD7wBR1fdIwh9FGe2Uq4lO
ZbT2QFx8Ga5NQIwIIZZci/uL4Tw/7+CPKEoddw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k1GN+kT7KgRIHJs5Cw+hQb7EZrReCsvXgXeCjz4o0RyqpPm8XlxoPCNX4kR8BSaVxBTPm8qGrOj8
IkQcLP4XpLGNjMzOE8knGvgjraCBhhY/bboSihIYbJYXuKW0k/ErxcqbMup3dsmp8N5M+ZYpiEuF
88HraBjchDshDh5xlcY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jzBUDUoUQBD0tzi9B/VXNwpoyjUIKBzxkVyikkxc/QHKpaIlgud+eCQD6psG9RUWZouQN8CQmJEY
0K5qgvfm7GxXMbjLUwnVBRg4Uzfc4OTySfJMu1k9/qGISvYwf4r0rzMMp9aPgp+ElEwTGx3z9N0A
vWNdEjCI2mqdxmP3Q9AYUPTudILppELRMP4SJijczuRIhtAKpxFjTP2gL8zQE0aq1kkWRZfaHW1t
wV7tZ/jCUxkX8uj8DL6Bei6oBC1nTm/FjPhi+htKla8XNUEftaqUre2/0Sxhsxl/FTAzaex9fCj4
AMt2l6o0FpW5JlLhGnTYhWm/bgsyGCPBg6lSjQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TLZ8ijYkfJwJKEOQWMabTLzskpiq2BaY7EfWHQLJP4bPIIzY2n+6joQH9Zx4lSQh/9Fnh6jeighR
kk/vk2oRSqGtKHDSu0DmueSBG/VEw/WsVtQG8S7DIULXiNu19izm/KAF5vIwcbdxY2+U1V91b49X
OPdVaMJJVYj6uzzaXTiqoQjXf1B2YelOsDvESDG6QjRLu6VJTRcfqV9gqugtdW6UzdcU3wJ+Zj3P
pid7nb6vJmHb/8udnkHEg7s3j//bA3KD+zLyQoneAegFkarki7B79jbsedTm3g42ZhoczHeKQhav
rLpemPDMtXf+fi33n9JbcsTcV5i5ZSswmwLiJA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yagBdijHJZdR0faLGLa6MIn4RkuD7KqCsPnsCIMn3WWgaTIo9ELvrvFaEBgMzjMYE+xX4smOFdhz
DLlICimASILoP1VAq/gg0jZigNP/B16nGL+kXNmHKCG6UYUSya/GPHjBzgO/PbYPWsAo+d1Gcwcd
Ft2H31cFml/FBnGyHPMPWMThmCuu8zQEfKqLkR+7afVP6o7VMfdEtEyHu1Ehf1TKuPW6IbGuNq5v
c2qVvuLBInBREQIK9GdIwSwC7ImoZ3FwftTmPaTKexD/TLRwA+BQVz5Mlf2ZK0DPpyat1R91Kc74
dwXoFTAUEnwomKGiHQC9UwL036KbDUucUumATw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7280)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
