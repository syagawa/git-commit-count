#!/bin/bash

#date="2019-01-01-10:00"
date=$1

git log --since=$date --numstat --pretty="%H"  | awk 'NF==3 {plus+=$1; minus+=$2} END {printf("+%d, -%d\n", plus, minus)}'
