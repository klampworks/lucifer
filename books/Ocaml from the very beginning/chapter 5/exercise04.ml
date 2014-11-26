(* Write a function to detect if a list is already in sorted order. *)

let rec issorted l =
  match l with
  h::m::t -> if h < m
             then issorted (m::t)
             else false
  | [] -> true
  | _ -> true;;

Printf.printf "%b\n" (issorted [ 1; 2; 3;]);;
Printf.printf "%b\n" (issorted [ 1; 4; 3;]);;

