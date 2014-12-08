(* Write a function of type α → α tree → bool to determine if a given element is in a tree. *)

type 'a tree =
  Br of 'a * 'a tree * 'a tree
| Lf;;

let mtree = Br ( 2, Br (1, Lf, Lf), Br (4, Lf, Lf));;

let rec in_tree v t =
  match t with
    Lf -> false
  | Br (v', l, r) -> if v = v'
                       then true
                       else in_tree v l || in_tree v r;;

Printf.printf "%b\n" (in_tree 2 mtree);;
Printf.printf "%b\n" (in_tree 666 mtree);;

