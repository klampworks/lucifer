(* Use this function to write one which, given a rect list , returns another such list which has the smallest total width and whose members are sorted widest first.*)

open Exercise1
open Exercise3

let ex4 ls =
  List.sort (fun a b -> 
               match a, b with
                 Rect(_, w1), Rect(_,w2) -> compare w1 w2
               | Rect(_, w1), Square(w2) -> compare w1 w2
               | Square(w1), Rect(_, w2) -> compare w1 w1
               | Square(w1), Square(w2) -> compare w1 w2)
            (List.map rot ls);;

List.map print_shape [Rect(1,2); Rect(4,3); Square(9); Rect(9,9)]
                

