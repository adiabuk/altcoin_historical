#!/usr/bin/env bash
for pair in `cat valid_margin_pairs.txt`; do 
	for month in {01..12}; do 
		echo $pair $month
		create_test_data -s 2020-${month}-01 -d 30 -o 2020/monthly/${month} -p $pair -i 15m
	done;
done
