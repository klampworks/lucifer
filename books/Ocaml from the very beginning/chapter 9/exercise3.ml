(* Why can we not write a function to halve all the elements of a list like this: map (( / ) 2) [10; 20; 30] ? Write a suitable division function which can be
partially applied in the manner we require. *)

let div a b =
  b / a;;

List.map print_int (List.map (div 2) [10; 20; 30]);;

