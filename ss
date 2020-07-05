#!/bin/bash  
lastPrLabel=$(gh pr list --state  "all" --limit 1) 
 
read -ra strarr <<< "$lastPrLabel"

lastPrId=${strarr[0]}
nextPrId=$(( $lastPrId  + 1 ))
echo $nextPrId