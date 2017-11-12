#!/usr/bin/perl
use warnings;
use strict;
use Cwd;
use File::Copy;
use File::Path qw/make_path/;
#use File::Slurp qw(read_file write_file);

my $dir = getcwd;
my $bm_name = $ARGV[0];
my $func_name = $ARGV[1];
my $accel_dir_name = "hls_$bm_name"."_$func_name"; 
my $rocket_dir = "/scratch/qijing.huang/firechip/";
#my $rocket_dir = "/tools/designs/qijing.huang/rocket-chip/";
my $dump_dir = "/scratch/qijing.huang/results/$bm_name"."_$func_name/";
my $makefrag = $rocket_dir."/Makefrag";
my $makefrag_vsim = $rocket_dir."/vsim/Makefile";
  
sub read_file {
    my ($filename) = @_;
 
    open my $in, '<:encoding(UTF-8)', $filename or die "Could not open '$filename' for reading $!";
    local $/ = undef;
    my $all = <$in>;
    close $in;
 
    return $all;
}
 
sub write_file {
    my ($filename, $content) = @_;
 
    open my $out, '>:encoding(UTF-8)', $filename or die "Could not open '$filename' for writing $!";;
    print $out $content;
    close $out;
 
    return;
}

my $data = read_file($makefrag);
if (not( $data =~ /EXTRA_PACKAGES=.*$accel_dir_name.*/)){
  $data =~ s/(EXTRA_PACKAGES=.*)/$1 $accel_dir_name/g;
}
write_file($makefrag, $data);

my $verilog_path = "\$\(base_dir\)\/$accel_dir_name\/src\/main\/verilog\/"; 
# Example $(wildcard $(base_dir)/hls_adpcm_adpcm_main/src/main/verilog/*.v)\
my $wc_verilog_path = "\$\(wildcard $verilog_path\*\.v\)"; 

$data = read_file($makefrag_vsim);
if (not( $data =~ /.*$accel_dir_name.*/)){
  $data =~ s/(sim_vsrcs = \\.*)/sim_vsrcs = \\\n\t$wc_verilog_path\\/;
}
write_file($makefrag_vsim, $data);


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

# change to vsim directory 
my $vsim_path = $rocket_dir."vsim";

# set the addon to the folder name 
#$ENV{ROCKETCHIP_ADDONS} = "$accel_dir_name";
#print "Set ROCKETCHIP_ADDONS to $accel_dir_name\n";

print "Change to vsim directory $vsim_path\n";
chdir($vsim_path);
#system ("make clean");
#sleep(3);

make_path($dump_dir);

# Make sure there is no underscore in the  
my $config_name = "HLStest_cConfig";
$config_name =~ s/test_c/$func_name/g; 
$config_name =~ s/_//g; 

my $config_vcs = ("make debug CONFIG=$config_name"." PROJECT=hls_$func_name 2>&1 | tee -a $dump_dir/make.log");
print $config_vcs."\n";
system ($config_vcs);

my $log_path = "$dump_dir/run.log";
open LOG, ">$log_path" or die $!;
print LOG " ";
close LOG;
open LOG, ">$log_path.accl" or die $!;
print LOG " ";
close LOG;

open BASH, ">$vsim_path/vrun.sh" or die $!;

# run cycles without accl
print "$vsim_path/vrun.sh";
my $cmd = "$vsim_path/simv-hls_$func_name-$config_name";
#my $run_vcs= ("$cmd +dramsim +verbose +max-cycles=70000000 pk $dir/$file_name".".rv 2>&1 | tail -n 1000 > $log_path\n");
#print $run_vcs;
#print BASH $run_vcs;

my $run_vcs= ("$cmd +dramsim +max-cycles=70000000 pk $dir/$file_name".".rv 2>&1 | tee -a $log_path\n");
print $run_vcs;
print BASH $run_vcs;

# run cycles with accl
#$run_vcs= ("$cmd +dramsim +verbose +max-cycles=70000000 pk $dir/../accl/$file_name".".rv 2>&1 | tail -n 1000 > $log_path.accl\n");
#print $run_vcs;
#print BASH $run_vcs;

#$run_vcs= ("$cmd +dramsim +max-cycles=70000000 pk $dir/../accl/$file_name".".rv 2>&1 | tee -a $log_path.accl\n");
#print $run_vcs;
#print BASH $run_vcs;

close BASH;
system ("bash $vsim_path/vrun.sh");
chdir($dir);
