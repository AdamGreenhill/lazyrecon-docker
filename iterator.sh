#!/bin/bash

mkdir ./output/

while read domain; do

  sudo docker run -t \
    -v "$(pwd)/output/:/output" \
    adamgreenhill/lazyrecon-docker \
    -d $domain

done < domains.txt
