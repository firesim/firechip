open_project -reset adpcm_prj
set_top encode
add_files adpcm.c
open_solution -reset "solution1"
set_part {xc7k160tfbg484-2}
create_clock -period 10 -name default
#source "./adpcm_prj/solution1/directives.tcl"
csynth_design
#export_design -format ip_catalog
exit