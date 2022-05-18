# download_genomes.sh
A bunch of scripts to download genomes (contigs, genes, proteomes) from the genbank FTP, an OsX compatible version included (OsX uses  bash commands in a slightly different way:S) 

# formatin.pl
A simple script that will take a bunch of .faa (aminoacid fastas) and formt them for blast

# blastin.pl
A simple script to blast a query against the dababas select an e-value and score cutoff, then grab the sequences found

# rastidstonames.pl
Change the labels from RAST protein files into nice taxonomic names indexed in the RAST.IDs file (we use these as a stadard for bacteria (annotated in RAST and fungal (annotated with the tools in the FUN-GIT repository ) genomes.

viva la perl
