(* In msort , we calculate the value of the expression length l / 2 twice. Modify
msort to remove this inefficiency. *)

let rec rev_h lin lot =
	match lin with
	[] -> lot
	| h::t -> rev_h t (h::lot);;

let rev l = rev_h l [];;

let rec take_h lin c lout = 
  match lin, c with
    [], _ -> lout
    | _, 0 -> lout
    | h::t, _ -> take_h t (c-1) (h::lout);;

let take l c = rev (take_h l c []);;

let rec drop lin c= 
  match lin, c with
    [], _ -> lin
    | _, 0 -> lin
    | h::t, _ -> drop t (c-1);;
  
let rec length_h l c =
  match l with
    [] -> c
  | h::t -> length_h t (c+1);;

let length l = length_h l 0;;

let rec merge x y =
  match x, y with
    [], l -> l
  | l, [] ->l
  | hx::tx, hy::ty ->
    if hx < hy
      then hx :: merge tx (hy :: ty)
      else hy :: merge (hx :: tx) ty;;

msort : int list -> int list ;;

let rec msort l =
  match l with
    [] -> []
    | [x] -> [x]
    | _ ->
      let hlen = length l / 2 in
      let left = take l hlen in
        let right = drop l hlen in
          merge (msort left) (msort right);;

let rec print_list l =
	match l with
	[] -> ()
	| h::t -> print_int h; print_string " "; print_list t;;

print_list (msort [53; 9; 2; 6; 19] );;
