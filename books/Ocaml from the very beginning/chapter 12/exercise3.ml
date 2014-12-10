(* In our read_dict function, we waited for the user to type 0 to indicate no
more data. This is clumsy. Implement a new read_dict function with a nicer
system. Be careful to deal with possible exceptions which may be raised. *)

let rec read_dict () =
  print_string "Enter a numberic key: (q to quit)\n";
  let is = read_line () in
  try
    if is = "q" then [] else
      let i = int_of_string is  in
        print_string "Enter a string value: (q to quit)\n";
        let name = read_line () in
          if name = "q" then [] else
            (i, name) :: read_dict ()
  with 
    Failure "int_of_string" -> 
      print_string "This is not a valid integer.\n";
      read_dict();;

List.map (fun (k, v) -> print_int k; 
                        print_string " -> "; 
                        print_string v; 
                        print_newline ();) 
         (read_dict ());;
