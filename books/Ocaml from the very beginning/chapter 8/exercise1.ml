(* Write a function to determine the number of different keys in a dictionary. *)

let count l =
  let rec count_h l c =
    match l with
      [] -> c
    | (k, v)::t -> count_h t (c+1) in
  count_h l 0;;

print_int (count [(4, 5); (8, 3); (9, 5); (6, 2)]);; 
