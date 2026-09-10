#!/bin/bash

awk 'NR>1 {
    n=$2+$3+$4+$5+$6
    if(n==1) {
        if($2==1) sorgo++
        if($3==1) AP85++
        if($4==1) NpX++
        if($5==1) LAPurple++
        if($6==1) SP80++
    }
}
END {
    print "Somente no sorgo:", sorgo+0
    print "Somente no AP85:", AP85+0
    print "Somente no NpX:", NpX+0
    print "Somente no LAPurple:", LAPurple+0
    print "Somente no SP80:", SP80+0
}' ../results/gene_presence_absence.Rtab
