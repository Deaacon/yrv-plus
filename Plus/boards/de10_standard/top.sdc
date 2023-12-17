create_clock -period "50.0 MHz" [get_ports CLOCK_50]

derive_clock_uncertainty

set_false_path -from [get_ports {SW[*]}]   -to [all_clocks]
set_false_path -from [get_ports {GPIO[*]}] -to [all_clocks]

set_false_path -from * -to [get_ports {LED[*]}]

set_false_path -from * -to HEX0
set_false_path -from * -to HEX1
set_false_path -from * -to HEX2
set_false_path -from * -to HEX3
set_false_path -from * -to HEX4
set_false_path -from * -to HEX5

set_false_path -from * -to [get_ports {GPIO[*]}]
