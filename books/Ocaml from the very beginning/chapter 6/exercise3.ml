(* Express your function cliplist again, this time using an anonymous function
instead of clip . *)

let clip_list l =
  List.map (fun x -> 
              if x > 10
              then 10
              else if x < 1
              then 1
              else x) l;;

List.map (fun x -> print_int x; print_string " ") (clip_list [10; 22 ; 2;]);;

