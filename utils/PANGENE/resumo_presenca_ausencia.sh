#!/bin/bash

awk 'NR>1 {
    n=$2+$3+$4+$5+$6
    count[n]++
}
END {
    for(i=1;i<=5;i++)
        print i " genoma(s):", count[i]
}' ../results/gene_presence_absence.Rtab
