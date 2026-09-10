#!/bin/bash
#$ -N miniprot_sorgo
#$ -cwd
#$ -V
#$ -pe smp 8
#$ -l h_vmem=8G
#$ -o miniprot_sorgo.out
#$ -e miniprot_sorgo.err

MINIPROT=/Storage/progs/compleasm/bin/miniprot

GENOMA=/Storage/data1/ellen.camargo/databaseLandscapeSlicing/sorgov.5/PhytozomeV13/Sbicolor/v5.1/assembly/Sbicolor_730_v5.0.softmasked.fa

PROTEINAS=/Storage/data1/ellen.camargo/databaseLandscapeSlicing/sorgov.5/PhytozomeV13/Sbicolor/v5.1/annotation/Sbicolor_730_v5.1.protein_primaryTranscriptOnly.fa/Sbicolor_730_v5.1.protein_primaryTranscriptOnly.fa

$MINIPROT --outs=0.97 --no-cs -t 8 "$GENOMA" "$PROTEINAS" > paf/sorgo.paf
