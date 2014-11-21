let rec power x n acc = 
	if n > 1 then 
		power x (n-1) (acc+(x*x))
	else
		acc;;

let pow x n = 
	if x = 1 then
		1
	else if x = 0 then
		0
	else
		power x n 0;;

print_int (pow 2 3);;
