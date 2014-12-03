(* Write the function union a b which forms the union of two dictionaries. The
union of two dictionaries is the dictionary containing all the entries in one or
other or both. In the case that a key is contained in both dictionaries, the value in the first should be preferred. *)

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

let union d1 d2 =
  mkdict (d1 @ d2);;

let my_dict = [(4, 5); (3, 3); (3, 5); (6, 2)];;
let my_dict_2 = [(4, 5); (3, 8); (99, 5); (6, 2)];;
List.map (fun (k, v) -> Printf.printf "%d -> %d\n" k v) 
         (union my_dict my_dict_2);;
