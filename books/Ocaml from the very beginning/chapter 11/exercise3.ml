(* Write a function to determine if two trees of the same type have the same shape, irrespective of actual values of the elements. Can you write a more general
version which can tell if two trees have the same shape even if one has type α
tree and one has type β tree for some α and β ? *)

type 'a tree =
  Br of 'a * 'a tree * 'a tree
| Lf;;

let rec cmp_tr tr1 tr2 =
  match tr1, tr2 with
    Lf, Lf -> true
  | Br (_, l1, r1), Br (_, l2, r2) -> cmp_tr l1 l2 && cmp_tr r1 r2
  | Br (_, _, _), Lf -> false
  | Lf, Br (_, _, _) -> false;;

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

let mtree1 =
  tree_of_list [3; 1; 0; 2; 4] ( < );;

let mtree2 =
  tree_of_list [3; 1; 0; 2; 666] ( < );;

let mtree3 =
  tree_of_list [3; 1; 0; 2; 4; 666] ( < );;

let mtree4 =
  tree_of_list ['d'; 'b'; 'a'; 'c'; 'e';] ( < );;

Printf.printf "%b\n" (cmp_tr mtree1 mtree1);;
Printf.printf "%b\n" (cmp_tr mtree1 mtree2);;
Printf.printf "%b\n" (cmp_tr mtree1 mtree3);;
Printf.printf "%b\n" (cmp_tr mtree1 mtree4);;
