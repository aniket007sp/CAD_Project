###############################################################################
# Created by write_sdc
# Sun Feb 11 06:01:45 2024
###############################################################################
current_design mkCla
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name CLK -period 10.0000 [get_ports {CLK}]
set_clock_transition 0.1500 [get_clocks {CLK}]
set_clock_uncertainty 0.2500 CLK
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {EN_val_in}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {RST_N}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[0]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[10]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[11]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[12]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[13]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[14]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[15]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[1]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[2]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[3]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[4]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[5]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[6]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[7]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[8]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_1[9]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[0]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[10]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[11]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[12]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[13]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[14]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[15]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[1]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[2]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[3]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[4]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[5]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[6]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[7]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[8]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_2[9]}]
set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {val_in_data_in_3}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {RDY_carry}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {RDY_sum}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {RDY_val_in}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {carry}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[0]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[10]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[11]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[12]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[13]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[14]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[15]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[1]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[2]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[3]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[4]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[5]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[6]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[7]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[8]}]
set_output_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {sum[9]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {RDY_carry}]
set_load -pin_load 0.0334 [get_ports {RDY_sum}]
set_load -pin_load 0.0334 [get_ports {RDY_val_in}]
set_load -pin_load 0.0334 [get_ports {carry}]
set_load -pin_load 0.0334 [get_ports {sum[15]}]
set_load -pin_load 0.0334 [get_ports {sum[14]}]
set_load -pin_load 0.0334 [get_ports {sum[13]}]
set_load -pin_load 0.0334 [get_ports {sum[12]}]
set_load -pin_load 0.0334 [get_ports {sum[11]}]
set_load -pin_load 0.0334 [get_ports {sum[10]}]
set_load -pin_load 0.0334 [get_ports {sum[9]}]
set_load -pin_load 0.0334 [get_ports {sum[8]}]
set_load -pin_load 0.0334 [get_ports {sum[7]}]
set_load -pin_load 0.0334 [get_ports {sum[6]}]
set_load -pin_load 0.0334 [get_ports {sum[5]}]
set_load -pin_load 0.0334 [get_ports {sum[4]}]
set_load -pin_load 0.0334 [get_ports {sum[3]}]
set_load -pin_load 0.0334 [get_ports {sum[2]}]
set_load -pin_load 0.0334 [get_ports {sum[1]}]
set_load -pin_load 0.0334 [get_ports {sum[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {CLK}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {EN_val_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {RST_N}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_3}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_1[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {val_in_data_in_2[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
