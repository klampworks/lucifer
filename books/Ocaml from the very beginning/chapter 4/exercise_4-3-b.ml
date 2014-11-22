(* Write another function which determines if a list is a palindrome. *)

let rec rev lin lot =
	match lin with
	[] -> lot
	| h::t -> rev t (h::lot);;

let is_pali l =
	l = (rev l []);;

Printf.printf "%b\n" (is_pali [1 ; 2]);;
Printf.printf "%b\n" (is_pali [1 ; 2 ; 1]);;
