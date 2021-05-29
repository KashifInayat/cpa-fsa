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
read_file -f ddc ../pe_bs/designs/PE.ddc
read_file -f verilog ./tile.v
read_file -f verilog ./mesh.v
read_file -f verilog ./topdelay.v

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
set_dont_touch [get_designs PE_64]
set_dont_touch [get_designs Tile]

set current_design Mesh  
ungroup -all -flatten



set current_design top_sa_2D

link

check_design
#This is the linking check and to revoke the DC incase there is any hierarchical problem (it just to save time)
if {[link] ==0} {
echo “Linking Error”
exit; # Exits DC if a serious linking problem is encountered
}

#This is the design check and to revoke the DC in case there is any serious design problem

if {[check_design] ==0} {
echo “Check Design Error”
exit; # Exits DC if a check-design error is encountered
}
#link
#set_optimize_registers

# 100 mhz
# set the constraint for flop-to-flop paths
  
create_clock CLK -period 2.45
# set the constraint for paths starting from primary inputs
set_input_delay 0 -clock CLK [all_inputs]
remove_input_delay [get_ports "CLK RST"]
# set the constraint for paths starting from primary inputs
set_output_delay 0 -clock CLK [all_outputs]


# this is another way to set the constraint for primary input-to-output paths. Use this for combinational logic circuits.
# set_max_delay 0.33 -from [all_inputs] -to [all_outputs]

# first compile

compile_ultra -gate_clock -no_autoungroup
#set_dont_touch core
#set_structure false
#compile ultra
#compile_ultra -top

# create the scan chains
# insert_dft
#set_dont_touch core
# second compile
#compile_ultra -incr




report_qor > $reports_dir/qor_report.txt
report_constraint -all_violators > $reports_dir/violator_report.txt
report_register -level_sensitive > $reports_dir/latch_report.txt
report_clock_gating > $reports_dir/clock_gating.txt

report_timing
set current_design Mesh
report_area

write_file -f ddc -hier -output designs/postdc_netlistr42s.ddc
write_file -f verilog -hier -output designs/postdc_netlistr42s.v


set current_design top_sa_2D
write_file -f ddc -hier -output designs/postdc_netlistr42s_top.ddc
write_file -f verilog -hier -output designs/postdc_netlistr42s_top.v
#remove_design
