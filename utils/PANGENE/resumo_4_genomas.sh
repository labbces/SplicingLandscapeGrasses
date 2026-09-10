#!/bin/bash

awk 'NR>1 {
    n=$2+$3+$4+$5+$6
    if(n==4) {
        if($2==0) sem_sorgo++
        if($3==0) sem_AP85++
        if($4==0) sem_NpX++
        if($5==0) sem_LAPurple++
        if($6==0) sem_SP80++
    }
}
END {
    print "Ausente no sorgo:", sem_sorgo+0
    print "Ausente no AP85:", sem_AP85+0
    print "Ausente no NpX:", sem_NpX+0
    print "Ausente no LAPurple:", sem_LAPurple+0
    print "Ausente no SP80:", sem_SP80+0
}' ../results/gene_presence_absence.Rtab
