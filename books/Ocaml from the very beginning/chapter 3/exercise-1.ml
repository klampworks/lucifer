(* Rewrite the not function from the previous chapter 
 * in pattern matching style. *)

let not x =
	match x with
	true -> false
	| false -> true;;

Printf.printf "%b\n" (not true);;
Printf.printf "%b\n" (not false);;
