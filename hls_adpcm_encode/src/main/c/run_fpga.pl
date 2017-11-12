#!/usr/bin/perl
use warnings;
use strict;
use Cwd;
use File::Copy;
use File::Path qw/make_path/;
#use File::Copy::Recursive qw(fcopy rcopy dircopy fmove rmove dirmove);

my $file_name = $ARGV[0];
my $func_name = $ARGV[1];
my $accel_dir_name = "hls_$file_name"."_$func_name"; 
my $rocket_dir = "/tools/designs/qijing.huang/rocket-chip/";
my $dump_dir = "/tools/designs/qijing.huang/results/$file_name"."_$func_name/";

make_path($dump_dir);
# set the addon to the folder name 
$ENV{ROCKETCHIP_ADDONS} = "$accel_dir_name";
print "Set ROCKETCHIP_ADDONS to $accel_dir_name\n";

my $fpga_path = $rocket_dir."/fpga-zynq/zedboard";
print "Change to fpga directory $fpga_path\n";
chdir($fpga_path);
system ("make clean");
system ("rm -rf zedboard_rocketchip*");
sleep(3);

my $config_fpga = ("make CONFIG=HLS$func_name"."FPGAConfig rocket");
print $config_fpga;
system ($config_fpga);

$config_fpga = ("make CONFIG=HLS$func_name"."FPGAConfig project");
print $config_fpga;
system ($config_fpga);

$config_fpga = ("make CONFIG=HLS$func_name"."FPGAConfig fpga-images-zedboard/boot.bin");
print $config_fpga;
system ($config_fpga);

my $fpga_log_path = "$rocket_dir/fpga-zynq/zedboard/";
#dircopy($fpga_log_path, "$dump_dir/zedboard
system("cp -rf $fpga_log_path $dump_dir/zedboard/");

# copy the report r 
#my $fpga_log_path = "$rocket_dir/fpga-zynq/zedboard/zedboard_rocketchip_HLSencodeFPGAConfig/zedboard_rocketchip_HLSencodeFPGAConfig.runs/impl_1/";
#
#opendir(DIR, "$fpga_log_path/") or die "Can't opendir $fpga_log_path: $! \n";
#my @files=readdir(DIR);
#closedir(DIR);
#		
#foreach my $file (@files){
#	# c_file 
#	if (-f "$fpga_log_path/$file") {
#		copy("$fpga_log_path/$file", $dump_dir) or die "File cannot be copied! $fpga_log_path/$file\n";
#	}
#}

