# NET - IOSTANDARD
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# SPI Configurate Setting
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]

# clock
create_clock -period 20 [get_ports clk]
set_property -dict { PACKAGE_PIN Y18 IOSTANDARD LVCMOS33 } [get_ports {clk}]

# LED
set_property PACKAGE_PIN F19 [get_ports {led[0]}]
set_property PACKAGE_PIN E21 [get_ports {led[1]}]
set_property PACKAGE_PIN D20 [get_ports {led[2]}]
set_property PACKAGE_PIN C20 [get_ports {led[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]

# Button
set_property -dict { PACKAGE_PIN F20 IOSTANDARD LVCMOS33 } [get_ports {rst}]
set_property PACKAGE_PIN M13 [get_ports {button[0]}]
set_property PACKAGE_PIN K14 [get_ports {button[1]}]
set_property PACKAGE_PIN K13 [get_ports {button[2]}]
set_property PACKAGE_PIN L13 [get_ports {button[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {button[*]}]

# Segments
set_property PACKAGE_PIN J5  [get_ports {segments[0]}]
set_property PACKAGE_PIN M3  [get_ports {segments[1]}]
set_property PACKAGE_PIN J6  [get_ports {segments[2]}]
set_property PACKAGE_PIN H5  [get_ports {segments[3]}]
set_property PACKAGE_PIN G4  [get_ports {segments[4]}]
set_property PACKAGE_PIN K6  [get_ports {segments[5]}]
set_property PACKAGE_PIN K3  [get_ports {segments[6]}]
set_property PACKAGE_PIN H4  [get_ports {segments[7]}]

set_property PACKAGE_PIN M2  [get_ports {seg_sel[0]}]
set_property PACKAGE_PIN N4  [get_ports {seg_sel[1]}]
set_property PACKAGE_PIN L5  [get_ports {seg_sel[2]}]
set_property PACKAGE_PIN L4  [get_ports {seg_sel[3]}]
set_property PACKAGE_PIN M16 [get_ports {seg_sel[4]}]
set_property PACKAGE_PIN M17 [get_ports {seg_sel[5]}]

set_property IOSTANDARD LVCMOS33 [get_ports {segments[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_sel[*]}]