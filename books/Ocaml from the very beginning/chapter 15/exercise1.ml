(* Write your own version of the function List.concat . The implementation
OCaml provides is not tail-recursive. Can you write one which is? *)

let concat l1 l2 =
  let rec cc l1 l2 acc =
    match l1, l2 with
      [], [] -> acc
    | h::t, _ -> cc t l2 (h::acc)
    | _, h::t -> cc l1 t (h::acc) 
  in
    List.rev (cc l1 l2 []);;

let l1 = [1; 2; 3; 4];;
let l2 = [5; 6; 7; 8];;

List.map (Printf.printf "%d ") (concat l1 l2);;

