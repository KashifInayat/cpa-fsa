power test_m_booth_mult.uut1
#.uut
run 40ns
power -enable
run 10000ns
power -disable
power -report netlist.saif 1e-9 test_m_booth_mult.uut1
#.uut
quit
