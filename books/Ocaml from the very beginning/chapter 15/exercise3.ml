(* Write a function to count the number of exclamation marks in a string, using one or more functions from the String module. *)

(*
Can't fold a string? Can't convert a string to a list and fold that? 
I'm not very impressed with this language...

let r s sought =
  let rec rr s sought acc =
    match s with
      h::t -> 
          if h = sought 
            then rr t sought (acc+1)
            else rr t sought acc
    | [] -> acc
  in
    rr (list_of_string s) sought 0;;

print_int (r "hello!" '!');;
*)

let r s sought =
  let a = ref 0 in

    (* A for loop.. I might as well right this code in C. *)
    for i = 0 to (String.length s) -1 do
      if String.get s i = sought
        then a := !a + 1
     done;
     !a;;

print_int (r "hello!" '!');;
    

