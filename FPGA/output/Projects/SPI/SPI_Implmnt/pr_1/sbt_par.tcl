# TCL script for running Silicon Blue 
# Source: Synopsys Synplify
# TOP Design module
set top SPI_TEST_MODULE
set family iCE40UP
set device iCE40UP5K-SG48
#   Vendor Tool Interface 
set sbt_root $::env(SBT_DIR)
set proj_dir [pwd]
set output_dir ""
set extra_option ":router --pin_permutation"
set base_name SPI
append sbt_tcl $sbt_root "/tcl/sbt_backend_synpl.tcl"
source $sbt_tcl 
run_sbt_backend_auto $device $top $proj_dir $output_dir $extra_option $base_name
