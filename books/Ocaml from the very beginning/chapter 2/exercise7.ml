(* Can you suggest a way of preventing the non-termination of the factorial
function in the case of a zero or negative argument? *)

let rec factorial a = 
  if a = 1 then 1 
  else if a < 1 then 0
  else a * factorial (a - 1);; 

print_int (factorial 0);;
print_int (factorial (-1));;
print_int (factorial 1);;
print_int (factorial 5);;



