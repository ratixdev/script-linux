#!/bin/bash

prefix="ferry-number+"                #ubah jadi prefix="${1:-file_}" jika tidak menetapkan variable nama file dan run dengan bash script.sh filename
number=1                            
                            
newcount="${2:-25}"                 
printf -v num "%01d" "$number"      
fname="$prefix$num$ext"            

while [ -e "$fname" ]; do           
  number=$((number + 1))            
  printf -v num "%01d" "$number"    
  fname="$prefix$num"          
done

while ((newcount--)); do            
  touch "$fname"                   
  ((! newcount)) && break;          
  number=$((number + 1))            
  printf -v num "%01d" "$number"    
  fname="$prefix$num"          
done
