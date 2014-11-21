let rec sum n acc = 
	if n > 0 then 
		sum (n-1) (acc+n) 
	else acc;;

print_int (sum 5 0)
