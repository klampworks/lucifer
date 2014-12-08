(* Design a new type rect for representing rectangles. Treat squares as a special
case. *)

type shape = 
  Rect of int * int
  | Square of int

let print_shape s =
  match s with
    Rect (h, w) -> Printf.printf "%d X %d\n" w h
  | Square (h) -> Printf.printf "%d X %d\n" h h
