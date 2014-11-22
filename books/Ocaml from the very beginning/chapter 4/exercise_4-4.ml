(* Write a function drop_last which returns all but the last element of a list. If the list is empty, it should return the empty list. So, for example, drop_last [1; 2; 4; 8] should return [1; 2; 4] . What about a tail recursive version? *)

let rec rev lin lot =
	match lin with
	[] -> lot
	| h::t -> rev t (h::lot);;

let rec drop_last_h lin lout =
	match lin with
	[] -> lout
	| a::[] -> rev lout []
	| h :: t -> drop_last_h t (h :: lout);;

let drop_last l = drop_last_h l [];;

let rec print_list l =
	match l with
	[] -> ()
	| h::t -> print_int h; print_string " "; print_list t;;

print_list (drop_last [1 ; 2 ; 4 ;8 ]);;
print_list (drop_last []);;

