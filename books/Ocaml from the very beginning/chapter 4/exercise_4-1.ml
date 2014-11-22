(* Write a function evens which does the opposite to odds , returning the even
numbered elements in a list. For example, evens [2; 4; 2; 4; 2] should
return [4; 4] . What is the type of your function? *)

let rec evens l =
	match l with
	_::a::t -> a :: evens t
	| _ -> l;;

let rec print_list l =
	match l with
	[] -> ()
	| h::t -> print_int h; print_string " "; print_list t;;

print_list (evens [1 ; 2 ; 1 ;2 ]);;

