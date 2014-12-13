(* Give a function which rounds a positive f loating-point number to the nearest
whole number, returning another floating-point number. *)

let round x = float_of_int (int_of_float x);;
print_float 66.6;;
print_newline ();;
print_float (round 66.6);;


