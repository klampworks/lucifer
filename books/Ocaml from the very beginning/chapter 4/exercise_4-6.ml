(* Use your member function to write a function make_set which, given a list,
returns a list which contains all the elements of the original list, but has no
duplicate elements. For example, make_set [1; 2; 3; 3; 1] might return [2;
3; 1] . *)

let rec rev lin lot =
	match lin with
	[] -> lot
	| h::t -> rev t (h::lot);;

let rec member m l =
	match l with
	[] -> false
	| h::t -> if h = m then true else member m t;;

let rec make_set_h lin lout =
	match lin with
	h::t -> if member h lout then 
		make_set_h t lout 
		else make_set_h t (h::lout)
	| [] -> rev lout [];;

let make_set l =
	make_set_h l [];;

let rec print_list l =
	match l with
	[] -> ()
	| h::t -> print_int h; print_string " "; print_list t;;

print_list (make_set [1; 2; 3; 3; 1]);;
