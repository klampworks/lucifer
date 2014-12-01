(* Write the function for_all which, given a function of type α → bool and an
argument list of type α list evaluates to true if and only if the function returns true for every element of the list. Give examples of its use.*)

let rec all pred l =
  match l with
    [] -> true
  | h::t -> if not (pred h)
              then false
              else all pred t;;

Printf.printf "%b\n" (all (( < ) 10) [ 22; 22;]);;
Printf.printf "%b\n" (all (( < ) 10) [ 2; 22;]);;

