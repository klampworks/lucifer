(* Use pattern matching to write a recursive function which, given a positive
 * integer n , returns the sum of all the integers from 1 to n. *)

let rec sum n acc =
	match n with
	0 -> acc
	| a -> (sum (n-1) (acc+n));;

print_int (sum 5 0);;
