#!/usr/bin/perl
use warnings;
use strict;
use Cwd;
use File::Copy;

my $file_name = $ARGV[0];
my $func_name = $ARGV[1];
my $accel_dir_name = "hls_$file_name"."_$func_name"; 
my $rocket_path = "/scratch/qijing.huang/firechip/";

#############################GENERATE HLS##############################
# should change to add all .c files 
my $hls_tcl = 'open_project -reset test_c_prj
set_top test_c_func
add_files test_c.c
open_solution -reset "solution1"
set_part {xc7k160tfbg484-2}
create_clock -period 10 -name default
#source "./test_c_prj/solution1/directives.tcl"
csynth_design
#export_design -format ip_catalog
exit';

my $dir = getcwd;
open HLS, ">$dir/run_hls.tcl";

# replace the function name and file name
$hls_tcl =~ s/test_c_func/$func_name/g;
$hls_tcl =~ s/test_c/$file_name/g;

# run vivado hls
print HLS $hls_tcl;
system("vivado_hls -f run_hls.tcl");

my $vivado_dir = "$dir/$file_name"."_prj/solution1/syn/verilog/";
my $verilog_dir = "$dir/../verilog/";

mkdir $verilog_dir unless (-d $verilog_dir);
unlink glob "$verilog_dir/*";

opendir(DIR, $vivado_dir) or die "Can't opendir $vivado_dir: $! \n";
 
my @files=readdir(DIR);
closedir(DIR);

foreach my $v_file (@files){
	# Open and replace one line 

        chdir($vivado_dir);
	my $vivado_dir_escape = $vivado_dir;
	$vivado_dir_escape =~ s/\//\\\//g;
	my $perl_cmd = "perl -p -i -e 's/\$readmemh\\\(\\\"\\\.\/\$readmemh(\\\"$vivado_dir_escape/g' *";
	 
	print $perl_cmd;
	system ($perl_cmd);
	chdir($dir);

	print "$v_file\n";
    	if (-f "$vivado_dir/$v_file") {  
		copy("$vivado_dir/$v_file", $verilog_dir) or die "File cannot be copied! $v_file $verilog_dir\n";
	}
}

#die $!;

