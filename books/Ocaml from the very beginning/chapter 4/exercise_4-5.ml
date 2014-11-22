(* Write a function member of type α → α list → bool which returns true if an
element exists in a list, or false if not. For example, member 2 [1; 2; 3]
should evaluate to true , but member 3 [1; 2] should evaluate to false . *)

let rec member m l =
	match l with
	[] -> false
	| h::t -> if h = m then true else member m t;;

Printf.printf "%b\n" (member 2 [1; 2; 3]);;
Printf.printf "%b\n" (member 3 [1; 2]);;

