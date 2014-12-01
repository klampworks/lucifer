(* Write a function filter which takes a function of type α → bool and an α list
and returns a list of just those elements of the argument list for which the given function returns true . *)

let filter pred l =
  let rec filter_h pred l acc =
    match l with
      [] -> acc
    | h::t -> if pred h
                then filter_h pred t (h :: acc)
                else filter_h pred t acc
    in
    List.rev (filter_h pred l []);;

List.map (fun x -> print_int x; print_string " ")
  (filter (( < ) 10) [1; 4; 5; 3; 666; 2]);;

