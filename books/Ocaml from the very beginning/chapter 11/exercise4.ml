(* Write a function tree_of_list which builds a tree representation of a
dictionary from a list representation of a dictionary. *)

type 'a tree =
  Br of 'a * 'a tree * 'a tree
| Lf;;

let rec insert tr v cmp =
  match tr with
    Lf -> Br (v, Lf, Lf)
  | Br (v', l, r) -> 
      if v = v'
        then Br (v, l, r)
      else if cmp v v' 
        then Br (v', insert l v cmp, r)
      else Br (v', l, insert r v cmp);;

let tree_of_list l cmp =
  match l with
    h::t -> List.fold_left 
              (fun tr v -> insert tr v cmp) (Br (h, Lf, Lf)) t
  | [] -> Lf;;

let mtree =
  tree_of_list [(1, 1); (2,2); (0,0); (2,2); (4,4)] ( < );;
