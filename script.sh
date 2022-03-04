#!/bin/bash


declare -a METHODS=(POST GET REQUEST SESSION FILES SERVER ENV COOKIES)
DEFINE='$_'

for method in ${METHODS[*]}; do
    echo --------------------------$method-------------------------------- >> output.txt
    ALL=$DEFINE$method
    grep -ni $ALL *.php >> output.txt
done
