set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { X1 }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { X2 }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { Y1 }]; #IO_L24P_T3_RS1_15 Sch=led[1]

set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [get_ports { Y2 }]; #IO_L17N_T2_A25_15 Sch=led[2]

set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { Y3 }]; #IO_L8P_T1_D11_14 Sch=led[3]

set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [get_ports { Z }]; #IO_L7P_T1_D09_14 Sch=led[4]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets Y1_OBUF]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets Y2_OBUF]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets Y3_OBUF]