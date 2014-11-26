(* We mentioned that the comparison functions like < work for many OCaml types.
Can you determine, by experimentation, how they work for lists? For example,
what is the result of [1; 2] < [2; 3] ? What happens when we sort the
following list of type char list list ? Why? *)

Printf.printf "%b\n" ([1; 2] < [2; 3]);;

open Exercise01;;
print_list 
  (msort [['o'; 'n'; 'e']; ['t'; 'w'; 'o']; ['t'; 'h'; 'r'; 'e'; 'e']] );;


