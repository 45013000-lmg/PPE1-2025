#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <type>"
    exit 1
fi

type=$1

for ann in 2016 2017 2018; do
    count=$(./compte_par_type.sh $ann $type)
    echo "${ann} : ${count}"
done

