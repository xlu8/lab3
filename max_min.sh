#!/bin/bash
awk 'BEGIN{ maxX=maxY=maxZ=0 ; minX=minY=minZ=1000 }
{ if ($1=="ATOM"){
 
   if($7>maxX){maxX=$7};
    if($7<minX){minX=$7};
   if($8>maxY){maxY=$8};
    if($8<minY){minY=$8};
   if($9>maxZ){maxZ=$9};
    if($9<minZ){minZ=$9};
   }
}
END{print "maxX = "maxX "minX =" minX "maxY =" maxY "minY =" minY "maxZ =" maxZ "minZ =" minZ}' 4HKD.pdb
