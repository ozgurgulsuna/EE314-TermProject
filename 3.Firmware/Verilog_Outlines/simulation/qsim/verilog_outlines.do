onerror {exit -code 1}
vlib work
vlog -work work verilog_outlines.vo
vlog -work work switch_sim.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.switch_vlg_vec_tst -voptargs="+acc"
vcd file -direction verilog_outlines.msim.vcd
vcd add -internal switch_vlg_vec_tst/*
vcd add -internal switch_vlg_vec_tst/i1/*
run -all
quit -f