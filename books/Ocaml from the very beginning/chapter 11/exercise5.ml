(* Write a function to combine two dictionaries represented as trees into one. In the case of clashing keys, prefer the value from the f irst dictionary. *)

type 'a tree =
  Br of 'a * 'a tree * 'a tree
| Lf;;

let rec list_of_tree tr =
  match tr with
    Br (x, l, r) -> [x] @ list_of_tree l @ list_of_tree r
  | Lf -> [];;

let rec insert tr v cmp rep =
  match tr with
    Lf -> Br (v, Lf, Lf)
  | Br (v', l, r) -> 
      if v = v'
        then if rep 
          then Br (v, l, r)
          else Br (v', l, r)
      else if cmp v v' 
        then Br (v', insert l v cmp rep, r)
      else Br (v', l, insert r v cmp rep);;

let tree_of_list l cmp rep =
  match l with
    h::t -> List.fold_left 
              (fun tr v -> insert tr v cmp rep) (Br (h, Lf, Lf)) t
  | [] -> Lf;;

let mtree1 =
  tree_of_list [3; 1; 0; 2; 4] ( < ) false;;

let mtree2 =
  tree_of_list [3; 1; 0; 2; 4; 666] ( < ) false;;

let cat_tr tr1 tr2 =
    List.fold_right (fun v tr -> insert tr v ( < ) false)
      (list_of_tree tr2) tr1;;
  
List.map (fun x -> print_int x; print_string " ";) 
  (list_of_tree (cat_tr mtree1 mtree2));; 
