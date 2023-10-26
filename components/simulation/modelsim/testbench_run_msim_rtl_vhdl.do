transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/dspv.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/zero_9_extender.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/SE9.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/SE6.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/register_file.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/pipe5.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/pipe4.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/pipe3.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/pipe2.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/pipe1.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/one_sub.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/one_bit_shifter.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/memory_data.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/instr_memory.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/czregister.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/ALU3.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/ALU2.vhdl}
vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/ALU1.vhdl}

vcom -93 -work work {C:/Users/Devesh/Desktop/components/components/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
