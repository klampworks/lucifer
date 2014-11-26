(* Write a version of insertion sort which sorts the argument list into reverse order. *)

open Exercise01;;

let rec merge_rev x y =
  match x, y with
    [], l -> l
  | l, [] ->l
  | hx::tx, hy::ty ->
    if hx > hy
      then hx :: merge_rev tx (hy :: ty)
      else hy :: merge_rev (hx :: tx) ty;;

let rec msort_rev l =
  match l with
    [] -> []
    | [x] -> [x]
    | _ ->
      let hlen = length l / 2 in
      let left = take l hlen in
        let right = drop l hlen in
          merge_rev (msort_rev left) (msort_rev right);;

print_list (msort_rev [1 ;4 ;2 ;7 ;6 ;6]);;
