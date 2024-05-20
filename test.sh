#!/bin/bash

gawk 'BEGIN{FS=OFS="\t"} NR==FNR{arr[$1,$3]=substr($0, index($0,$4)); next} {print $0, arr[$1,$3]}' "sort_file1.tsv" "sort_file2.tsv" > test.tsv

gawk 'BEGIN{FS=OFS="\t"} NR==FNR{arr[$1,$3]=$0; next} {print $0, arr[$1,$3]}' "sort_file1.tsv" "sort_file2.tsv" > test.tsv
