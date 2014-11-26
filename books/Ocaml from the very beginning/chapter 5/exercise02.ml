(* We know that take and drop can fail if called with incorrect arguments. Show
that this is never the case in msort. *)

open Exercise01;;

print_list (msort []);;
print_list (msort [1;2;3]);;
print_list (msort [1;2;3;4]);;

