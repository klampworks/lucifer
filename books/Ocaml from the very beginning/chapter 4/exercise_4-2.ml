(* Write a function count_true which counts the number of true elements in a
list. For example, count_true [true; false; true] should return 2 . What
is the type of your function? Can you write a tail recursive version?  *)

let rec count_true_h l acc =
	match l with
	true :: t -> count_true_h t (acc+1)
	| false :: t -> count_true_h t acc
	| _ -> acc;;

let count_true l =
	count_true_h l 0;;

print_int (count_true [true; false; true;]);;
	

