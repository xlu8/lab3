#!/bin/bash

cat 4HKD.pdb | awk '$1=="HETATM"{sum += $7} END{print ("x =" , sum/NR)}'
cat 4HKD.pdb | awk '$1=="HETATM"{sum += $8} END{print ("y =" , sum/NR)}'
cat 4HKD.pdb | awk '$1=="HETATM"{sum += $9} END{print ("z =" , sum/NR)}'

