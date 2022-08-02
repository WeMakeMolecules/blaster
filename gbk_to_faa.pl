##################################################################################
# perl gbk_to_faa.pl FILE.gbk
# by Pablo Cruz-Morales april 13 2021 
# takes a gbk file (full gbk from genbank) and extracts the protein and the locustag labels
# easy
# VIVA LA PERL!!!
###################################################################################
open FILE, $ARGV[0] or die "give me an input\n";
while ($line=<FILE>){
	if ($line=~/     CDS             /.. $line=~/                     \/locus_tag\=/){
	#gets locus tags
		if ($line=~/\/locus_tag=/){
		$locus="$line";
		$locus=~s/\s+\/locus_tag="//;
		$locus=~s/"//;
		chomp $locus;
		print "\n$locus\n";
		}
	}#end of gene to CDS

#gets proteins
	if($line=~/                     \/translation\=\"[ARNDCEQGHILKMFPSTWYV]+/ or $line=~m/^                     [A-Z \W]+$/ or $line=~/                     \/translation\=\"[ARNDCEQGHILKMFPSTWYV]+\"/){
	$sequence="$line";
	$sequence=~s/\s+//g;
	$sequence=~s/\/translation\=\"//;
	$sequence=~s/\"//;
	chomp $sequence;
		if ($sequence=~/\"/){
		$sequence="";
		}
		print "$sequence";
		
	}#end of proteins
}
