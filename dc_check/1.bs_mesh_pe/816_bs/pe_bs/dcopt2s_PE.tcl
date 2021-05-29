# module load syn/syn/2013
# run this file with: dc_shell-xg-t -f dcopt.tcl | tee dcopt.out
# evince /usr/local/packages/SAED32_EDK/lib/stdcell_rvt/doc/SAED32.28nm_Digital_Standard_Cell_Library_b100_01312012.pdf
# or http://esc.inu.ac.kr/~chung/SAED_DOC.pdf

set search_path [list .]

set edk_home /soc/vlsi/PDK/SAED32_EDK_01132015/
set io_dir $edk_home/lib/io_std
set pll_dir $edk_home/lib/pll
set stdcell_dir $edk_home/lib/stdcell_hvt

## Setup DB
set io_db_dir $io_dir/db_nldm
set pll_db_dir $pll_dir/db_nldm
set stdcell_db_dir $stdcell_dir/db_nldm

set synthetic_library dw_foundation.sldb

set link_library "*  $stdcell_db_dir/saed32hvt_ss0p95v125c.db   $pll_db_dir/saed32pll_ss0p95v125c_2p25v.db  $io_db_dir/saed32io_fc_ss0p95v125c_2p25v.db     $synthetic_library"
set target_library "  $stdcell_db_dir/saed32hvt_ss0p95v125c.db  $pll_db_dir/saed32pll_ss0p95v125c_2p25v.db   $io_db_dir/saed32io_fc_ss0p95v125c_2p25v.db  "
## Setup DB Done


#aet bitwidth 8
#read_file -f ddc ./designs/mult.ddc
read_file -f verilog ./pe.v
read_file -f verilog ./top_PE_64.v

set reports_dir reports

if { ! [ file exists $reports_dir ] } { 
         file mkdir $reports_dir 
} 
if { ! [ file exists designs] } { 
         file mkdir designs
} 



#set max_opcon saed32rvt_ff0p85v125c
#set_operating_conditions -min ff1p16v125c  -max ss0p95v125c

# I don't know why DC cannot support MCMM correctly, so I put only one corner here for now

#set_operating_conditions -max ss0p95v125c


##
# we want our chip to operate 3Ghz 
##
#set_ungroup objectfalse
#set current_design mb32
#set_dont_touch [get_designs r4_mb8]

#set_optimize_registers

# 100 mhz
# set the constraint for flop-to-flop paths

#set_dont_touch [get_designs mb16]
#remove_dont_touch [get_designs r4_mb8]



#set_dont_touch [get_designs DFFX1_MB]
set current_design PE_64
  
ungroup -all -flatten
#set_dont_touch [get_cells sbuf*/*]
set current_design top_PE_64

#set current_design PE_OS_16_R8_TOP

#set_dont_touch [get_cells xreg/*]
#set_dont_touch [get_cells yreg/*]

create_clock CLK -period 1.96
# set the constraint for paths starting from primary inputs
set_driving_cell -lib_cell DFFX1_HVT [remove_from_collection [remove_from_collection [all_inputs] CLK] RST]  -pin Q
set_input_delay 0.20 -clock CLK [all_inputs]
remove_input_delay [get_ports "CLK RST"]
# set the constraint for paths starting from primary inputs
set_output_delay 0 -clock CLK [all_outputs]

#set_dont_use {saed32hvt_ss0p95v125c/DFFX2_HVT saed32hvt_ss0p95v125c/DFFSSRX2_HVT }

#set_dont_use {saed32hvt_ss0p95v125c/DFFX2_HVT saed32hvt_ss0p95v125c/DFFSSRX2_HVT saed32hvt_ss0p95v125c/DFFSSRX1_HVT}
compile_ultra -gate_clock -no_autoungroup


report_timing

set current_design PE_64
report_area
write_file -f ddc -hier -output designs/PE.ddc
write_file -f verilog -hier -output designs/PE.v
# this is another way to set the constraint for primary input-to-output paths. Use this for combinational logic circuits.
# set_max_delay 0.33 -from [all_inputs] -to [all_outputs]

# first compile




#remove_design
