vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../LED_Task.srcs/sources_1/ip/Clk_Division_0/sim/Clk_Division.v" \
"../../../../LED_Task.srcs/sources_1/ip/Clk_Division_0/sim/Clk_Division_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

