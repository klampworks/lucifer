(* Write a function smallest which returns the smallest positive element of a list of integers. If there is no positive element, it should raise the built-in Not_found exception. *)

let smallest l =
  let rec sm l acc =
    match l with
      [] -> if acc > -1
              then acc
              else raise Not_found
    | h::t -> if acc = -1 || h < acc
                then sm t h
                else sm t acc
  in
    sm l (-1);;

print_int (smallest [2; 5 ;3;2 ;5;]);;

