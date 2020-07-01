#!/bin/bash
awk '
BEGIN{
sign="";

result=""}
{if (substr($1,1,1)=="-")
    {
   sign="-";
   gsub("-","",$0);
   galleons=int($0/(23*17));
   rem=$0%(23*17);
   sickles=int(rem/17);
   knuts=rem%17;
   result=sign galleons "/" sickles "/" knuts}
else{
     galleons=int($0/(23*17));
     rem=$0%(23*17);
     sickles=int(rem/17);
    knuts= rem%17;
    result=galleons "/" sickles "/" knuts}
print result}'
