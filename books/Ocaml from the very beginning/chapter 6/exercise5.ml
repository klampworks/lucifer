(* Modify the insertion sort function from the preceding chapter to take a
comparison function, in the same way that we modif ied merge sort in this
chapter. *)

let rec insert x l cmp =
  match l with
    [] -> [x]
  | h::t ->
    if cmp x h
      then x :: h :: t
      else h :: insert x t cmp;;

let rec sort l cmp =
  match l with
    [] -> []
  | h::t -> insert h (sort t cmp) cmp;;

List.map (fun x -> print_int x; print_string " ") 
  (sort [1; 4; 2; 7; 5; 8; 4] ( > ))
    
