(* The ASCII codes for the lower case letters 'a' ... 'z' are 97...122, and for the upper case letters 'A' ... 'Z' they are 65...90. Use the built-in functions
int_of_char and char_of_int to write functions to uppercase and lowercase
a character. Non-alphabetic characters should remain unaltered. *)

let a = int_of_char 'a';;
let z = int_of_char 'z';;
let biga = int_of_char 'A';;
let bigz = int_of_char 'Z';;

let to_upper c =
  let cc = int_of_char c in
    if (cc >= a && cc <= z)
      then char_of_int (cc - a + biga)
      else c
  ;;

let to_lower c =
  let cc = int_of_char c in
    if cc >= biga && cc <= bigz
      then char_of_int (cc - biga + a)
      else c;;

print_char (to_upper 'a');;
print_char (to_upper ';');;
print_char (to_lower 'A');;
