
#Begin clock constraint
define_clock -name {SPI_TEST_MODULE|clk} {p:SPI_TEST_MODULE|clk} -period 4.011 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 2.005 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {mypll|PLLOUTCORE_derived_clock} {n:mypll|PLLOUTCORE_derived_clock} -period 4.011 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 2.005 -route 0.000 
#End clock constraint
