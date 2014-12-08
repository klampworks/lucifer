(* Write a function which rotates a rect such that it is at least as tall as it is wide. *)

open Exercise1;;

let rot s =
  match s with
    Square (_) -> s
  | Rect (h, w) ->
      if h <= w 
        then s
        else Rect (w, h);;

(*print_shape (rot (Rect (4,3)));;*)
