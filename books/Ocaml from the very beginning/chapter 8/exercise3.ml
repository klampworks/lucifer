(* Write a function to build a dictionary from two equal length lists, one containing keys and another containing values. Raise the exception Invalid_argument if
the lists are not of equal length. *)

let mkdict ks vs =
  let rec mkdict_h ks vs d =
    match ks, vs with
      [], [] -> d
    | [], _ -> raise (Invalid_argument "Lists not same length.")
    | _, [] -> raise (Invalid_argument "Dumbass.")
    | h1::t1, h2::t2 -> 
      mkdict_h t1 t2 ((h1, h2) :: d) in
  mkdict_h ks vs [];;

List.map (fun (k, v) -> print_int k; print_string " -> "; 
                        print_int v; print_string "\n")
         (mkdict [1;2;3] [11;22;33]);; 
