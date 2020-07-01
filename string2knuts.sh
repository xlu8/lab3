#!/bin/bash
awk '
BEGIN{
sign="";
galleons=0;
sickles=0;
knuts=0;
totalKnuts=0;
}

{if(substr($1,1,1)=="-")
   {sign="-";
     gsub("-","",$0);
     split($0,k,"/");
    galleons = k[1];
    sickles = k[2];
    knuts = k[3];
    totalKnuts =(((galleons*23)+sickles)*17)+knuts;
    totalKnuts = -totalKnuts}
else{
    split($0, k ,"/");
    galleons = k[1];
    sickles = k[2];
    knuts =k[3];
    totalKnuts =(((galleons*23)+sickles)*17)+knuts}
print totalKnuts}'


