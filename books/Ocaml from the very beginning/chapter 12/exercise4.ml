(* Write a function whi, given a number x , prints the x -times table to a given file
name. For example, table "table.txt" 5 should produce a f ile table.txt
containing the following: 
 ￼ 
Adding the special tabulation aracter '\t' after ea number will line up the
columns. *)

let rec print_row ch r x =
  let rec prh ch r c x =
    if c > x 
      then output_string ch "\n"
      else (output_string ch (string_of_int (r*c));
            output_string ch "\t";
            prh ch r (c+1) x);
  in
    prh ch r 1 x;;

let print_table ch x =
  let rec tth ch r x =
    if r > x 
    then ()
    else 
      ( print_row ch r x ;
        tth ch (r+1) x;)
  in
    tth ch 1 x;;
      
let ch = open_out "test.txt" in
  print_table ch 5;;
