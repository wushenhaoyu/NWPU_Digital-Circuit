onerror {quit -f}
vlib work
vlog -work work add.vo
vlog -work work add.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.3_3_vlg_vec_tst
vcd file -direction add.msim.vcd
vcd add -internal 3_3_vlg_vec_tst/*
vcd add -internal 3_3_vlg_vec_tst/i1/*
add wave /*
run -all