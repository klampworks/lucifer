(* Write a function which takes a list of lists of integers and returns the list
composed of all the first elements of the lists. If a list is empty, a given number should be used in place of its first element. *)

let first default l =
  match l with
    [] -> default
  | h::t -> h;;

let first_l ll default =
  List.map (first default) ll;;

List.map print_int (first_l [[1;99;99];[2;99;99];[]] 3);;
  

