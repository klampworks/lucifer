(* Write a function to count the number of lines in a given file. *)

let cnt ch = 
  let rec cc ch acc =
    try
      let fuckyou = input_line ch in cc ch (acc+1);
    with
      End_of_file -> acc;
  in
    cc ch 0;;

let ch = open_in "test.txt" in
  print_int (cnt ch);;
