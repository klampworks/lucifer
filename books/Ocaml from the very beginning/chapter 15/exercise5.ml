(* Use the String module to write a function which concatenates a list of strings together. *)

(*
let rec foldl fn acc l =
  match l with
    h::t -> foldl fn (fn h acc) t
  | [] -> acc;;
*)

let concat ls =
  String.concat "" ls;;

print_string (concat ["hello"; " "; "world"]);;

  
