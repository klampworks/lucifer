(* Define a function replace which is like add , but raises Not_found if the key is not already there. *)

let rec replace k v d =
  match d with
    [] -> raise Not_found
  | (k', v')::t ->
      if k = k'
        then (k, v) :: t
        else (k', v') :: replace k v t;;

let my_dict = [(4, 5); (8, 3); (9, 5); (6, 2)];;
List.map (fun (k, v) -> print_int k; print_string " -> "; 
                        print_int v; print_string "\n")
         (replace 4 666 my_dict);; 

List.map (fun (k, v) -> print_int k; print_string " -> "; 
                        print_int v; print_string "\n")
         (replace 44 666 my_dict);; 
