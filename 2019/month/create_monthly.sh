
  for month in $(seq 1 12); do
	  mkdir $month
	  for pair in $(cat ../../all_pairs.txt); do
		  create_test_data -s 2019-${month}-01 -d 30 -e 1000 -i 4h -o $month -p $pair
	  done
  done


