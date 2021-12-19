
################################################################
# This is a generated script based on design: zynq_sys
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source zynq_sys_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name zynq_sys

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set GPIO_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO_0_0 ]
  set IIC_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0 ]
  set MDIO_ETHERNET_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 MDIO_ETHERNET_0_0 ]

  # Create ports
  set ENET0_GMII_RX_CLK [ create_bd_port -dir I -type clk ENET0_GMII_RX_CLK ]
  set ENET0_GMII_RX_DV [ create_bd_port -dir I ENET0_GMII_RX_DV ]
  set ENET0_GMII_TXD_0 [ create_bd_port -dir O -from 3 -to 0 ENET0_GMII_TXD_0 ]
  set ENET0_GMII_TX_CLK [ create_bd_port -dir I -type clk ENET0_GMII_TX_CLK ]
  set ENET0_GMII_TX_EN [ create_bd_port -dir O -from 0 -to 0 ENET0_GMII_TX_EN ]
  set In0 [ create_bd_port -dir I -from 3 -to 0 In0 ]
  set cmos_data_i [ create_bd_port -dir I -from 7 -to 0 cmos_data_i ]
  set cmos_href_i [ create_bd_port -dir I cmos_href_i ]
  set cmos_pclk_i [ create_bd_port -dir I cmos_pclk_i ]
  set cmos_reset [ create_bd_port -dir O -from 0 -to 0 cmos_reset ]
  set cmos_vsync_i [ create_bd_port -dir I cmos_vsync_i ]
  set vga_b_0 [ create_bd_port -dir O -from 7 -to 0 vga_b_0 ]
  set vga_blank_0 [ create_bd_port -dir O vga_blank_0 ]
  set vga_clk_0 [ create_bd_port -dir O -type clk vga_clk_0 ]
  set vga_g_0 [ create_bd_port -dir O -from 7 -to 0 vga_g_0 ]
  set vga_hsync_0 [ create_bd_port -dir O vga_hsync_0 ]
  set vga_r_0 [ create_bd_port -dir O -from 7 -to 0 vga_r_0 ]
  set vga_vsync_0 [ create_bd_port -dir O vga_vsync_0 ]

  # Create instance: MSXBO_OVSensorRGB565_0, and set properties
  set MSXBO_OVSensorRGB565_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MSXBO_OVSensorRGB565:1.0 MSXBO_OVSensorRGB565_0 ]

  # Create instance: VGA_OUT_0, and set properties
  set VGA_OUT_0 [ create_bd_cell -type ip -vlnv deng:user:VGA_OUT:1.0 VGA_OUT_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $axi_interconnect_0

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_enable_s2mm_fsync_out {1} \
   CONFIG.c_enable_vert_flip {0} \
   CONFIG.c_include_mm2s_dre {0} \
   CONFIG.c_include_s2mm {1} \
   CONFIG.c_include_s2mm_dre {0} \
   CONFIG.c_m_axi_mm2s_data_width {64} \
   CONFIG.c_m_axis_mm2s_tdata_width {24} \
   CONFIG.c_mm2s_genlock_mode {3} \
   CONFIG.c_mm2s_max_burst_length {16} \
   CONFIG.c_s2mm_genlock_mode {2} \
   CONFIG.c_s2mm_max_burst_length {16} \
   CONFIG.c_use_mm2s_fsync {0} \
   CONFIG.c_use_s2mm_fsync {2} \
 ] $axi_vdma_0

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {32768} \
 ] $axis_data_fifo_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {366.349} \
   CONFIG.CLKOUT1_PHASE_ERROR {481.549} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {107.964} \
   CONFIG.CLKOUT2_JITTER {337.002} \
   CONFIG.CLKOUT2_PHASE_ERROR {481.549} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {370.449} \
   CONFIG.CLKOUT3_PHASE_ERROR {481.549} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {55.750} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.375} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {4} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {8} \
   CONFIG.MMCM_DIVCLK_DIVIDE {7} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {25.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {25000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x0FFFFFFF} \
   CONFIG.PCW_ENET0_ENET0_IO {EMIO} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {EMIO} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {1} \
   CONFIG.PCW_EN_EMIO_GPIO {1} \
   CONFIG.PCW_EN_EMIO_I2C0 {1} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_SMC {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {4} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {8} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_IO {6} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {6} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C0_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {48} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1600.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_0_DIRECTION {out} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {enabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {inout} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {inout} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {inout} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {inout} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {inout} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {inout} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {inout} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {inout} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {inout} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {out} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {inout} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {inout} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {inout} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {out} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {inout} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {inout} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {in} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {inout} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {out} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_40_PULLUP {enabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_41_PULLUP {enabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_42_PULLUP {enabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_43_PULLUP {enabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_44_PULLUP {enabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_45_PULLUP {enabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {inout} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {inout} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {inout} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {inout} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {inout} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {NAND Flash#GPIO#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#NAND Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#UART 1#UART 1#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#SD 0#GPIO#GPIO#GPIO#GPIO#GPIO#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO} \
   CONFIG.PCW_MIO_TREE_SIGNALS {cs#gpio[1]#ale#we_b#data[2]#data[0]#data[1]#cle#re_b#data[4]#data[5]#data[6]#data[7]#data[3]#busy#gpio[15]#gpio[16]#gpio[17]#gpio[18]#gpio[19]#gpio[20]#gpio[21]#gpio[22]#gpio[23]#tx#rx#gpio[26]#gpio[27]#gpio[28]#gpio[29]#gpio[30]#gpio[31]#gpio[32]#gpio[33]#cd#gpio[35]#gpio[36]#gpio[37]#gpio[38]#gpio[39]#clk#cmd#data[0]#data[1]#data[2]#data[3]#gpio[46]#gpio[47]#gpio[48]#gpio[49]#gpio[50]#gpio[51]#gpio[52]#gpio[53]} \
   CONFIG.PCW_NAND_CYCLES_T_AR {15} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {15} \
   CONFIG.PCW_NAND_CYCLES_T_RC {30} \
   CONFIG.PCW_NAND_CYCLES_T_REA {5} \
   CONFIG.PCW_NAND_CYCLES_T_RR {25} \
   CONFIG.PCW_NAND_CYCLES_T_WC {30} \
   CONFIG.PCW_NAND_CYCLES_T_WP {15} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_NAND_IO {MIO 0 2.. 14} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 34} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 24 .. 25} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K128M16 JT-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create instance: system_ila_1, and set properties
  set system_ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_1 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU {true} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE0_TYPE {0} \
 ] $system_ila_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {1280} \
   CONFIG.GEN_F0_VBLANK_HSTART {1280} \
   CONFIG.GEN_F0_VFRAME_SIZE {1066} \
   CONFIG.GEN_F0_VSYNC_HEND {1280} \
   CONFIG.GEN_F0_VSYNC_HSTART {1280} \
   CONFIG.GEN_F0_VSYNC_VEND {1027} \
   CONFIG.GEN_F0_VSYNC_VSTART {1024} \
   CONFIG.GEN_F1_VBLANK_HEND {1280} \
   CONFIG.GEN_F1_VBLANK_HSTART {1280} \
   CONFIG.GEN_F1_VFRAME_SIZE {1066} \
   CONFIG.GEN_F1_VSYNC_HEND {1280} \
   CONFIG.GEN_F1_VSYNC_HSTART {1280} \
   CONFIG.GEN_F1_VSYNC_VEND {1027} \
   CONFIG.GEN_F1_VSYNC_VSTART {1024} \
   CONFIG.GEN_HACTIVE_SIZE {1280} \
   CONFIG.GEN_HFRAME_SIZE {1688} \
   CONFIG.GEN_HSYNC_END {1440} \
   CONFIG.GEN_HSYNC_START {1328} \
   CONFIG.GEN_VACTIVE_SIZE {1024} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.HAS_INTC_IF {false} \
   CONFIG.VIDEO_MODE {1280x1024p} \
   CONFIG.enable_detection {false} \
   CONFIG.enable_generation {true} \
 ] $v_tc_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {13} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_0

  # Create instance: vip1_m_0, and set properties
  set vip1_m_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:vip1_m:1.0 vip1_m_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.NUM_PORTS {1} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {7} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_2

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axis_data_fifo_0/M_AXIS] [get_bd_intf_pins vip1_m_0/src_axi0]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_GPIO_0 [get_bd_intf_ports GPIO_0_0] [get_bd_intf_pins processing_system7_0/GPIO_0]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports IIC_0] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_MDIO_ETHERNET_0 [get_bd_intf_ports MDIO_ETHERNET_0_0] [get_bd_intf_pins processing_system7_0/MDIO_ETHERNET_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins ps7_0_axi_periph/M01_AXI] [get_bd_intf_pins vip1_m_0/S_AXI_CONTROL_BUS]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_pins VGA_OUT_0/vid_io_in] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_video_out [get_bd_intf_pins axis_data_fifo_0/S_AXIS] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]
  connect_bd_intf_net -intf_net vip1_m_0_dst_axi [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins vip1_m_0/dst_axi]

  # Create port connections
  connect_bd_net -net ENET0_GMII_RX_CLK_1 [get_bd_ports ENET0_GMII_RX_CLK] [get_bd_pins processing_system7_0/ENET0_GMII_RX_CLK]
  connect_bd_net -net ENET0_GMII_RX_DV_1 [get_bd_ports ENET0_GMII_RX_DV] [get_bd_pins processing_system7_0/ENET0_GMII_RX_DV]
  connect_bd_net -net ENET0_GMII_TX_CLK_1 [get_bd_ports ENET0_GMII_TX_CLK] [get_bd_pins processing_system7_0/ENET0_GMII_TX_CLK]
  connect_bd_net -net In0_1 [get_bd_ports In0] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net MSXBO_OVSensorRGB565_0_clk_ce [get_bd_pins MSXBO_OVSensorRGB565_0/clk_ce] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce]
  connect_bd_net -net MSXBO_OVSensorRGB565_0_hs_o [get_bd_pins MSXBO_OVSensorRGB565_0/hs_o] [get_bd_pins v_vid_in_axi4s_0/vid_active_video] [get_bd_pins v_vid_in_axi4s_0/vid_hsync]
  connect_bd_net -net MSXBO_OVSensorRGB565_0_rgb_o [get_bd_pins MSXBO_OVSensorRGB565_0/rgb_o] [get_bd_pins system_ila_1/probe0] [get_bd_pins v_vid_in_axi4s_0/vid_data]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets MSXBO_OVSensorRGB565_0_rgb_o]
  connect_bd_net -net MSXBO_OVSensorRGB565_0_vs_o [get_bd_pins MSXBO_OVSensorRGB565_0/vs_o] [get_bd_pins v_vid_in_axi4s_0/vid_vsync]
  connect_bd_net -net VGA_OUT_0_vga_b [get_bd_ports vga_b_0] [get_bd_pins VGA_OUT_0/vga_b]
  connect_bd_net -net VGA_OUT_0_vga_blank [get_bd_ports vga_blank_0] [get_bd_pins VGA_OUT_0/vga_blank]
  connect_bd_net -net VGA_OUT_0_vga_clk [get_bd_ports vga_clk_0] [get_bd_pins VGA_OUT_0/vga_clk]
  connect_bd_net -net VGA_OUT_0_vga_g [get_bd_ports vga_g_0] [get_bd_pins VGA_OUT_0/vga_g]
  connect_bd_net -net VGA_OUT_0_vga_hsync [get_bd_ports vga_hsync_0] [get_bd_pins VGA_OUT_0/vga_hsync]
  connect_bd_net -net VGA_OUT_0_vga_r [get_bd_ports vga_r_0] [get_bd_pins VGA_OUT_0/vga_r]
  connect_bd_net -net VGA_OUT_0_vga_vsync [get_bd_ports vga_vsync_0] [get_bd_pins VGA_OUT_0/vga_vsync]
  connect_bd_net -net axi_vdma_0_mm2s_introut [get_bd_pins axi_vdma_0/mm2s_introut] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net axi_vdma_0_s2mm_introut [get_bd_pins axi_vdma_0/s2mm_introut] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins VGA_OUT_0/vid_clk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins MSXBO_OVSensorRGB565_0/rst_n_i] [get_bd_pins clk_wiz_0/locked] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/axis_enable]
  connect_bd_net -net cmos_data_i_1 [get_bd_ports cmos_data_i] [get_bd_pins MSXBO_OVSensorRGB565_0/cmos_data_i]
  connect_bd_net -net cmos_href_i_1 [get_bd_ports cmos_href_i] [get_bd_pins MSXBO_OVSensorRGB565_0/cmos_href_i]
  connect_bd_net -net cmos_pclk_i_1 [get_bd_ports cmos_pclk_i] [get_bd_pins MSXBO_OVSensorRGB565_0/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk]
  connect_bd_net -net cmos_vsync_i_1 [get_bd_ports cmos_vsync_i] [get_bd_pins MSXBO_OVSensorRGB565_0/cmos_vsync_i]
  connect_bd_net -net processing_system7_0_ENET0_GMII_TXD [get_bd_pins processing_system7_0/ENET0_GMII_TXD] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net processing_system7_0_ENET0_GMII_TX_EN [get_bd_ports ENET0_GMII_TX_EN] [get_bd_pins processing_system7_0/ENET0_GMII_TX_EN]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_50M/slowest_sync_clk] [get_bd_pins system_ila_1/clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_vid_in_axi4s_0/aclk] [get_bd_pins vip1_m_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins MSXBO_OVSensorRGB565_0/cmos_clk_i] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_50M_interconnect_aresetn [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_50M/peripheral_aresetn] [get_bd_pins vip1_m_0/aresetn]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net xlconcat_0_dout [get_bd_ports ENET0_GMII_TXD_0] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins processing_system7_0/ENET0_GMII_RXD] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports cmos_reset] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_2/dout]

  # Create address segments
  create_bd_addr_seg -range 0x10000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs vip1_m_0/S_AXI_CONTROL_BUS/Reg] SEG_vip1_m_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


