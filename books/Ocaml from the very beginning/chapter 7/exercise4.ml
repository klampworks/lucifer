(* Write another function which uses the previous one, but handles the exception,
and simply returns zero when a suitable integer cannot be found. *)

open Exercise3;;

let ex3 i =
  try lisetsq i with
    Netgative_result -> 0;;

print_int (ex3 (-1));;
