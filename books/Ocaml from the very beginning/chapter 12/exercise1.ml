(* Write a function to print a list of integers to the screen in the same format
OCaml uses – i.e. with square brackets and semicolons. *)

let print_list l =
  let rec plh l =
    match l with
      [] -> ()
    | h::t -> 
      print_int h ; 
      print_string "; "; 
      plh t 
  in
  print_string "[ ";
  plh l;
  print_string "]";;

print_list [1; 2; 3; 4;];;
