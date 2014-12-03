(* Now write the inverse function: given a dictionary, return the pair of two lists – the first containing all the keys, and the second containing all the values. *)

let spdict d =
  let rec spdict_h d ks vs =
    match d with
      [] -> (ks, vs)
    | (k, v)::t -> spdict_h t (k :: ks) (v :: vs) in
  spdict_h d [] [];;

let my_dict = [(4, 5); (8, 3); (9, 5); (6, 2)];;
let res = spdict my_dict;;

let car (k, _) = k;;
let cadr (_, v) = v;;

List.map (Printf.printf "%d\n") (car res);;
print_string "\n";;
List.map (Printf.printf "%d\n") (cadr res);;

