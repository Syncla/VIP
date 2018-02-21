
#Begin clock constraint
define_clock -name {Blink|ref_clk} {p:Blink|ref_clk} -period 8.939 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 4.469 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {mypll|PLLOUTCORE_derived_clock} {n:mypll|PLLOUTCORE_derived_clock} -period 8.939 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 4.469 -route 0.000 
#End clock constraint
