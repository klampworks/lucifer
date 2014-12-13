(* Write a function to separate a floating-point number into its integer and whole parts. Return them as a tuple of type float × float . *)

(* Not sur what the difference between whole and integer part is. *)
let sep f =
  let t = float_of_int (int_of_float f) in
    (t, t);;

let p (x, y) =
  print_float x;
  print_string " ";
  print_float y;
  print_newline ();;

p (sep 123.4);;
