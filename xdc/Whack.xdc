## Whack-a-mole Project: Constraints






################################
##   electrical constraints   ##
################################

## voltage configurations
set_property CFGBVS VCCO        [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]


#######################################
##   on-board 100 MHz clock signal   ##
#######################################

## on-board 100 MHz clock
set_property -dict [list PACKAGE_PIN E3 IOSTANDARD LVCMOS33] [get_ports clk]
#create_clock -period 10.000 -name clk -waveform {0.000 5.000} -add [get_ports clk]


########################
##   slide switches   ##
########################
set_property -dict { PACKAGE_PIN A8   IOSTANDARD LVCMOS33 } [get_ports { rst }]   ; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN C11  IOSTANDARD LVCMOS33 } [get_ports { START }]   ; #IO_L13P_T2_MRCC_16 Sch=sw[1]



#######################
##   standard LEDs   ##
#######################

#set_property -dict { PACKAGE_PIN H5  IOSTANDARD LVCMOS33 } [get_ports { Led[0] }]   ; #Led 0 = Mole 1
#set_property -dict { PACKAGE_PIN J5  IOSTANDARD LVCMOS33 } [get_ports { Led[1] }]   ; #Led 1 = Mole 2
#set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33 } [get_ports { Led[2] }]   ; #Led 2 = Mole 3
#set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { Led[3] }]   ; #Led 3 = Mole 4

######################
##   push-buttons   ##
######################

set_property -dict { PACKAGE_PIN D9  IOSTANDARD LVCMOS33 } [get_ports { button[0] }]   ; #Button[0]
set_property -dict { PACKAGE_PIN C9  IOSTANDARD LVCMOS33 } [get_ports { button[1] }]   ; #Button[1]
set_property -dict { PACKAGE_PIN B9  IOSTANDARD LVCMOS33 } [get_ports { button[2] }]   ; #Button[2]
set_property -dict { PACKAGE_PIN B8  IOSTANDARD LVCMOS33 } [get_ports { button[3] }]   ; #Button[3]


##############################
##   Pmod header JA:TIMER   ## IMPORTANT: 200 ohm resistance on each pin
##############################

set_property -dict { PACKAGE_PIN G13  IOSTANDARD LVCMOS33 } [get_ports { Tsegment[0] }]   ; #TIMER[0] G
set_property -dict { PACKAGE_PIN B11  IOSTANDARD LVCMOS33 } [get_ports { Tsegment[1] }]   ; #TIMER[1] F 
set_property -dict { PACKAGE_PIN A11  IOSTANDARD LVCMOS33 } [get_ports { Tsegment[2] }]   ; #TIMER[2] E
set_property -dict { PACKAGE_PIN D12  IOSTANDARD LVCMOS33 } [get_ports { Tsegment[3] }]   ; #TIMER[3] D
set_property -dict { PACKAGE_PIN D13  IOSTANDARD LVCMOS33 } [get_ports { Tsegment[4] }]   ; #TIMER[4] C
set_property -dict { PACKAGE_PIN B18  IOSTANDARD LVCMOS33 } [get_ports { Tsegment[5] }]   ; #TIMER[5] B
set_property -dict { PACKAGE_PIN A18  IOSTANDARD LVCMOS33 } [get_ports { Tsegment[6] }]   ; #TIMER[6] A


##############################
##   Pmod Header JB:ANODE   ##
##############################

set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { anodeT[0] }]   ; #ANODE[0]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { anodeT[1] }]   ; #ANODE[1]
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { anodeS2[0] }]   ; #ANODE[0]
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { anodeS2[1] }]   ; #ANODE[1]
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { anodeS1[0] }]   ; #ANODE[0]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { anodeS1[1] }]   ; #ANODE[1]

##################################
##   Pmod Header JC : SCOREtop  ##
##################################

set_property -dict { PACKAGE_PIN U12  IOSTANDARD LVCMOS33 } [get_ports { Ssegment2[0] }]   ; #IO_L20P_T3_A08_D24_14 Sch=jc_p[1]
set_property -dict { PACKAGE_PIN V12  IOSTANDARD LVCMOS33 } [get_ports { Ssegment2[1] }]   ; #IO_L20N_T3_A07_D23_14 Sch=jc_n[1]
set_property -dict { PACKAGE_PIN V10  IOSTANDARD LVCMOS33 } [get_ports { Ssegment2[2] }]   ; #IO_L21P_T3_DQS_14 Sch=jc_p[2]
set_property -dict { PACKAGE_PIN V11  IOSTANDARD LVCMOS33 } [get_ports { Ssegment2[3] }]   ; #IO_L21N_T3_DQS_A06_D22_14 Sch=jc_n[2]
set_property -dict { PACKAGE_PIN U14  IOSTANDARD LVCMOS33 } [get_ports { Ssegment2[4] }]   ; #IO_L22P_T3_A05_D21_14 Sch=jc_p[3]
set_property -dict { PACKAGE_PIN V14  IOSTANDARD LVCMOS33 } [get_ports { Ssegment2[5] }]   ; #IO_L22N_T3_A04_D20_14 Sch=jc_n[3]
set_property -dict { PACKAGE_PIN T13  IOSTANDARD LVCMOS33 } [get_ports { Ssegment2[6] }]   ; #IO_L23P_T3_A03_D19_14 Sch=jc_p[4]


#################################
##   Pmod Header JD: SCOREbot  ##
#################################

set_property -dict { PACKAGE_PIN D4  IOSTANDARD LVCMOS33 } [get_ports { Ssegment1[0] }]   ; #IO_L11N_T1_SRCC_35 Sch=jd[1]
set_property -dict { PACKAGE_PIN D3  IOSTANDARD LVCMOS33 } [get_ports { Ssegment1[1] }]   ; #IO_L12N_T1_MRCC_35 Sch=jd[2]
set_property -dict { PACKAGE_PIN F4  IOSTANDARD LVCMOS33 } [get_ports { Ssegment1[2] }]   ; #IO_L13P_T2_MRCC_35 Sch=jd[3]
set_property -dict { PACKAGE_PIN F3  IOSTANDARD LVCMOS33 } [get_ports { Ssegment1[3] }]   ; #IO_L13N_T2_MRCC_35 Sch=jd[4]
set_property -dict { PACKAGE_PIN E2  IOSTANDARD LVCMOS33 } [get_ports { Ssegment1[4] }]   ; #IO_L14P_T2_SRCC_35 Sch=jd[7]
set_property -dict { PACKAGE_PIN D2  IOSTANDARD LVCMOS33 } [get_ports { Ssegment1[5] }]   ; #IO_L14N_T2_SRCC_35 Sch=jd[8]
set_property -dict { PACKAGE_PIN H2  IOSTANDARD LVCMOS33 } [get_ports { Ssegment1[6] }]   ; #IO_L15P_T2_DQS_35 Sch=jd[9]


#################################
##   ChipKit Digital I/O Low   ##
#################################

set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { Led[0] }]   ; #IO_L16P_T2_CSI_B_14 Sch=ck_io[0]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { Led[1] }]   ; #IO_L18P_T2_A12_D28_14 Sch=ck_io[1]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { Led[2] }]   ; #IO_L8N_T1_D12_14 Sch=ck_io[2]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { Led[3] }]   ; #IO_L19P_T3_A10_D26_14 Sch=ck_io[3]