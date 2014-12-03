(* Define a function to turn any list of pairs into a dictionary. If duplicate keys are found, the value associated with the first occurrence of the key should be kept. *)

let rec any fn v l =
  match l with
    [] -> false
  | h::t -> 
      if fn v h
        then true
        else any fn v t;;

let mkdict l =
  let rec mkdict_h l d =
    match l with
      [] -> d
    | (k, v)::t -> if any (fun k1 (k2, _) -> k1 = k2) k d
                     then mkdict_h t d
                     else mkdict_h t ((k, v) :: d) in
  mkdict_h l [];;

let my_dict = [(4, 5); (3, 3); (3, 5); (6, 2)];;
List.map (fun (k, v) -> Printf.printf "%d -> %d\n" k v) 
         (mkdict my_dict);;
