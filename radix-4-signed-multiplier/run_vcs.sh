vcs -full64 ./test_m_booth_mult.v ./designs/postdc_netlistr42s1.v /soc/vlsi/PDK/SAED32_EDK/lib/stdcell_hvt/verilog/saed32nm_hvt.v -ld ld -LDFLAGS "/usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/x86_64-linux-gnu/crtn.o" +v2k +incdir+./ +define+Multiplier +define+INPUT_FILE_NAMEX=\"./inputs/xbitwidth_8_n_10000.txt\"  +define+INPUT_FILE_NAMEY=\"./inputs/ybitwidth_8_n_10000.txt\" +define+WEIGHT_FILE_NAME=\"$2\" +define+WORLD_SIZE=$3 -debug #-gui
#./saed32nm.v./topdelay2s.v 
./simv  -ucli -do gate_level_sim.tcl
 
