#!/usr/bin/perl
use warnings;
use strict;
use Cwd;
use File::Copy;
use File::Path qw/make_path/;

my $dir = getcwd;
my $bm_name = $ARGV[0];
my $func_name = $ARGV[1];
my $accel_dir_name = "hls_$bm_name"."_$func_name"; 
my $rocket_dir = "/tools/designs/qijing.huang/rocket-chip/";
my $dump_dir = "/tools/designs/qijing.huang/results/$bm_name"."_$func_name/";

my %pgm = (
	"adpcm"=> "adpcm",
	"aes"=>"aes",
	"blowfish"=>"bf",
	"dfadd"=>"dfadd",
	"dfdiv"=>"dfdiv",
	"dfmul"=>"dfmul",
	"dfsin"=>"dfsin",
	"gsm"=>"gsm",
	"jpeg"=>"main",
	"mips"=>"mips",
	"motion"=>"mpeg2",
	"sha"=>"sha_driver"
);
my $file_name = $pgm{$bm_name};

# change to fsim directory 
my $fsim_path = $rocket_dir."fsim";

# set the addon to the folder name 
$ENV{ROCKETCHIP_ADDONS} = "$accel_dir_name";
print "Set ROCKETCHIP_ADDONS to $accel_dir_name\n";

print "Change to fsim directory $fsim_path\n";
chdir($fsim_path);
system ("make clean");
sleep(3);

my $config_vcs = ("make CONFIG=HLS$func_name"."FPGAConfig");
print $config_vcs;
system ($config_vcs);

make_path($dump_dir);
my $log_path = "$dump_dir/run.log";
open LOG, ">$log_path" or die $!;
print LOG " ";
close LOG;
open LOG, ">$log_path.accl" or die $!;
print LOG " ";
close LOG;

open BASH, ">$fsim_path/vrun.sh" or die $!;
# run cycles without accl
my $run_vcs= ("$fsim_path/simv-Top-HLS$func_name"."FPGAConfig +dramsim +verbose +max-cycles=70000000 pk $dir/$file_name".".rv 2>&1 | tail -n 1000 > $log_path\n");
print $run_vcs;
print BASH $run_vcs;

$run_vcs= ("$fsim_path/simv-Top-HLS$func_name"."FPGAConfig +dramsim +max-cycles=70000000 pk $dir/$file_name".".rv 2>&1 | tee -a $log_path\n");
print $run_vcs;
print BASH $run_vcs;

# run cycles with accl
$run_vcs= ("$fsim_path/simv-Top-HLS$func_name"."FPGAConfig +dramsim +verbose +max-cycles=70000000 pk $dir/../accl/$file_name".".rv 2>&1 | tail -n 1000 > $log_path.accl\n");
print $run_vcs;
print BASH $run_vcs;

$run_vcs= ("$fsim_path/simv-Top-HLS$func_name"."FPGAConfig +dramsim +max-cycles=70000000 pk $dir/../accl/$file_name".".rv 2>&1 | tee -a $log_path.accl\n");
print $run_vcs;
print BASH $run_vcs;

close BASH;
system ("bash $fsim_path/vrun.sh");
chdir($dir);
#make_path($dump_dir);
#my $log_path = "$dump_dir/run.log";
#open LOG, ">$log_path" or die $!;
#print LOG " ";
#close LOG;

#my $run_vcs= ("$fsim_path/simv-Top-HLS$func_name"."FPGAConfig +dramsim +verbose +max-cycles=70000000 pk $dir/$file_name".".rv 2>&1 | tail -n 1000 > $log_path");
#my $run_vcs= ("$fsim_path/simv-Top-HLS$func_name"."FPGAConfig +dramsim +max-cycles=70000000 pk $dir/$file_name".".rv");
#open BASH, ">$fsim_path/vrun.sh" or die $!;
#print BASH $run_vcs;
#close BASH;

#print $run_vcs;
#system ("bash $fsim_path/vrun.sh");
chdir($dir);
