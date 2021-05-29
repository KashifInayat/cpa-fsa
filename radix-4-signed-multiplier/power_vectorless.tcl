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
#read_file -f verilog ./r4_8bit2s.v
#read_file -f verilog ./topdelay2s.v
#read_file -f verilog ./top.v 

read_file -f ddc  designs/postdc_netlistr42s1.ddc

create_clock CLK -period 1.5

set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock CLK [get_ports mx1]
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock CLK [get_ports my1]
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock CLK [get_ports mx2]
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock CLK [get_ports my2]
set_switching_activity -toggle_rate 2 -static_probability 0.5 -base_clock CLK [get_ports CLK]
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock CLK [get_ports product1]
set_switching_activity -toggle_rate 0 -static_probability 1.0 -base_clock CLK [get_ports RST]

report_power 
report_power -hier
#-hier

#remove_design
