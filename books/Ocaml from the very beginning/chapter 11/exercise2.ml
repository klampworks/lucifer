(* Write a function which flips a tree left to right such that, if it were drawn on paper, it would appear to be a mirror image. *)

type 'a tree =
  Br of 'a * 'a tree * 'a tree
| Lf;;

let rec list_of_tree tr =
  match tr with
    Br (x, l, r) -> [x] @ list_of_tree l @ list_of_tree r
  | Lf -> [];;

let pt t =
  print_int t; print_string " ";;

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
  tree_of_list [3; 1; 0; 2; 4] ( < );;

List.map pt (list_of_tree mtree);;
print_string "\n";;

List.map pt (list_of_tree (tree_of_list (list_of_tree mtree) ( > )));;
print_string "\n";;
