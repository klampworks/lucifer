(* Write a function which, given a list, builds a palindrome from it. A palindrome is a list which equals its own reverse. You can assume the existence of 
rev and @ .*)

let rec pali ori nw rev =
	match ori with
	[] -> nw @ rev
	| h :: t -> pali t nw (h::rev);;

let mk_pali l =
	pali l l [];;

let rec print_list l =
	match l with
	[] -> ()
	| h::t -> print_int h; print_string " "; print_list t;;

print_list (mk_pali [1 ; 2 ; 3 ;4 ]);;

