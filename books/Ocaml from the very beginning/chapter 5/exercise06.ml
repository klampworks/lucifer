(* Combine the sort and insert functions into a single sort function. *)

let rec sort l =
  let rec insert x l =
    match l with
      [] -> [x]
    | h::t ->
        if x <= h
          then x :: h :: t
          else h :: insert x t in

  match l with
    [] -> []
  | h :: t -> insert h (sort t);;

open Exercise01
