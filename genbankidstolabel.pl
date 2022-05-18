open FILE, $ARGV[0] or die "I cant read the core_seq.txt input file\n";
#----------making fasta oneline-------
while ($line=<FILE>){
	if ($line=~/>/){
	$line=~/(>)(..\_\d+\.\d+)(.+)\s\[(.+)\]/;
	$label="$1$2_$4";
	$label=~s/\s/_/g;
	print "$label\n";	
	}
	else {
	print $line;
	}
}
