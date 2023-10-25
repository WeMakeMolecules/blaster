# work in progress.. as always

# Usage:
Download the proteomes database (ask me how) decompress the file, then
>cd FUNGAL_PROTEOME_DB

create a query file in fasta format (eg... QUERY.query file)
download the formatting script:
>wget https://raw.githubusercontent.com/WeMakeMolecules/blaster/master/formatin.pl

run the formatting scrpt:
>perl formatin.pl 

download the blaster script:
>wget https://raw.githubusercontent.com/WeMakeMolecules/blaster/master/blastin.pl

run the blaster script:
>perl blastin.pl  QUERY.query HITS.txt 0.00001 200

The hits are now in the file HITS.txt
download the label-fixing script:
>wget https://github.com/WeMakeMolecules/blaster/blob/master/rastidstonames.pl

make sure you have the RAST.IDs file (comes with the proteomes database

run the script
>perl rastidstonames.pl QUERY.txt RAST.IDs > QUERY.fasta


The hits with pretty labels are now in the QUERY.fasta file



# download_genomes.sh
A bunch of scripts to download genomes (contigs, genes, proteomes) from the genbank FTP, an OsX compatible version included (OsX uses  bash commands in a slightly different way:S) 

# formatin.pl
A simple script that will take a bunch of .faa (aminoacid fastas) and formt them for blast

# blastin.pl
A simple script to blast a query against the database select an e-value and score cutoff, then grab the sequences found

# rastidstonames.pl
Change the labels from RAST protein files into nice taxonomic names indexed in the RAST.IDs file (we use these as a standard for bacteria (annotated in RAST and fungal (annotated with the tools in the FUN-GIT repository ) genomes.
# genbankidstolabel.pl
Same than rastidstonames but for genbank protein labels

# dichotomizer.pl
A script that creates a table of occurance of homologs across a genomes DB (1/0) for point biserial correlation analysis

viva la perl
