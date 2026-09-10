#!/bin/bash
#$ -N miniprot_restantes
#$ -cwd
#$ -V
#$ -pe smp 8
#$ -l h_vmem=8G
#$ -o miniprot_restantes.out
#$ -e miniprot_restantes.err

MINIPROT=/Storage/progs/compleasm/bin/miniprot

PROTEINAS=/Storage/data1/ellen.camargo/databaseLandscapeSlicing/sorgov.5/PhytozomeV13/Sbicolor/v5.1/annotation/Sbicolor_730_v5.1.protein_primaryTranscriptOnly.fa/Sbicolor_730_v5.1.protein_primaryTranscriptOnly.fa

echo "=== Iniciando AP85-441 ==="

$MINIPROT --outs=0.97 --no-cs -t 8 \
/Storage/data1/ellen.camargo/databaseLandscapeSlicing/projeto_cana/Saccharum_spontaneum_AP85-441_pan.assembly.fna \
"$PROTEINAS" \
> paf/AP85.paf

echo "=== AP85-441 concluído ==="


echo "=== Iniciando Np-X ==="

$MINIPROT --outs=0.97 --no-cs -t 8 \
/Storage/data1/ellen.camargo/databaseLandscapeSlicing/projeto_cana/Saccharum_spontaneum_NpX_pan.assembly.fna \
"$PROTEINAS" \
> paf/NpX.paf

echo "=== Np-X concluído ==="


echo "=== Iniciando LA Purple ==="

$MINIPROT --outs=0.97 --no-cs -t 8 \
/Storage/data1/ellen.camargo/databaseLandscapeSlicing/projeto_cana/Saccharum_officinarum_LA_Purple_pan.assembly.fna \
"$PROTEINAS" \
> paf/LAPurple.paf

echo "=== LA Purple concluído ==="


echo "=== Iniciando SP80-3280 ==="

$MINIPROT --outs=0.97 --no-cs -t 8 \
/Storage/data1/riano/Sugarcane/GenomeCTBE/GCA_002018215.1_CTBE_SP803280_v1.0_genomic.fna \
"$PROTEINAS" \
> paf/SP80.paf

echo "=== SP80-3280 concluído ==="

echo "=== Todos os alinhamentos foram finalizados ==="x
