#!/bin/bash

cd ..

./software/k8-1.2/k8-x86_64-Linux \
software/pangene.js gfa2matrix \
results/pangene_5gen.gfa \
> results/gene_presence_absence.Rtab
