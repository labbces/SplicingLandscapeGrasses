#!/bin/bash
#$ -N pangene_5gen
#$ -cwd
#$ -V
#$ -pe smp 8
#$ -l h_vmem=8G
#$ -o pangene.out
#$ -e pangene.err

PANGENE=./software/pangene

$PANGENE \
paf/sorgo.paf \
paf/AP85.paf \
paf/NpX.paf \
paf/LAPurple.paf \
paf/SP80.paf \
> results/pangene_5gen.gfa
