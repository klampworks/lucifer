(* Write a function to read three integers from the user, and return them as a tuple. What exceptions could be raised in the process? Handle them appropriately. *)

let rec get_int () =
  try
    read_int ()
  with 
    Failure "int_of_string" ->
      print_string "Not a number";
      print_newline ();
      get_int ();;

let get3ints () =
  (get_int, get_int, get_int);;

get_int ();;


