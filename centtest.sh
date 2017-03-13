#!/bin/bash
function Suche() { printf "%30s %10s %10s\n" Hostname OS-System Version echo "__________________________________________________________________________"
for i in $(grep -h post /uebungsaufgaben/hostlisten/* | grep -i 'centos;7' ); do
       echo $(echo $i | awk -F ";" {'printf "%30s %10s %10s\n", $1, $4, $5'}) done
}
Suche
