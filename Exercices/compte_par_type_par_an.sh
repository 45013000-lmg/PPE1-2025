#!/bin/bash

# if [ $# -ne 1 ]; then
#     echo "Usage: $0 <type>"
#     exit 1
# fi
#
# type=$1
#
# for ann in 2016 2017 2018; do
#     count=$(./compte_par_type.sh $ann $type)
#     echo "${ann} : ${count}"
# done


TYPE=$1

A=$(./compte_par_type.sh  2016 $TYPE)
B=$(./compte_par_type.sh  2017 $TYPE)
C=$(./compte_par_type.sh  2018 $TYPE)

echo "en 2016: $A; en 2017: $B;en 2018:$C"
