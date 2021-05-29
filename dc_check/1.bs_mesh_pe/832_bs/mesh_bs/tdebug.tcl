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

set abreports_dir sta_reports
if { ! [ file exists $abreports_dir ] } {
         file mkdir $abreports_dir
}


sh rm -rf ./WORK
define_design_lib WORK -path WORK



#read_file -f ddc  designs/postdc_netlistr42s.ddc

#report_area -hier > $abreports_dir/ab.txt
#report_register > $abreports_dir/abreg.txt


#exit
read_file -f ddc  designs/postdc_netlistr42s_top.ddc

#man report_timing  > $abreports_dir/help_report_timing.txt
report_timing > $abreports_dir/criticalPath.txt
report_timing -path_type end > $abreports_dir/endPoints.txt
#report_timing -input_pins > $abreports_dir/InputPoints.txt
#report_timing -max_paths 1000 > $abreports_dir/CrticicalPaths_100.txt
#report_timing -from core/_T_439_reg -to core/temp_io_out_c_7_0_reg[24]/D > $abreports_dir/spec_criticalpath.txt
#report_timing -from [all_registers -data_pins] -to core/temp_io_out_c_7_0_reg[4]/D > $abreports_dir/spec_criticalpath.txt
#report_timing -from [all_registers -data_pins] -to io_out_b_7_0_1_reg[0]/D > $abreports_dir/spec_criticalpath.txt 
#This works






#sh cat $abreports_dir/criticalPath.txt
sh cat $abreports_dir/criticalPath.txt

