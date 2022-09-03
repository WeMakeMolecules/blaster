open FILE, $ARGV[0] or die "I cant read the input file\n";

while ($line=<FILE>){
	if ($line=~/>/){
	$line=~/(>.+\d+\..)\s(.+)\s\[(.+)\]/;
	$label="$1_$3";
	$label=~s/\s/_/g;
	print "$label\n";	
	}
	else {
	print $line;
	}
}
