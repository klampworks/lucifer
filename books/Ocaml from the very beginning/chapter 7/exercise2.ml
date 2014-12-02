(* Write another function smallest_or_zero which uses the smallest function
but if Not_found is raised, returns zero. *)

open Exercise1;;
let smallest_or_zero l =
  try smallest l with
    Not_found -> 0;;

print_int (smallest_or_zero []);;

