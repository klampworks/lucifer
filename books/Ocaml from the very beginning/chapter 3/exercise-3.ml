(* Use pattern matching to write a function which, given two numbers x and n ,
computes x**n. *)

let rec power x n acc =
	match n with
	1 -> acc
	| _ -> power x (n-1) (acc + (x*x));;

let pow x n =
	match n with
	0 -> 1
	| 1 -> n
	| _ -> power x n 0;;

print_int (pow 2 2);;

