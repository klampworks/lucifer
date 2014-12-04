(* Recall the function member x l which determines if an element x is contained
in a list l . What is its type? What is the type of member x ? Use partial
application to write a function member_all x ls which determines if an
element is a member of all the lists in the list of lists ls. *)

let member_all x ls =
  List.for_all (List.mem x) ls;;

Printf.printf "%b\n" (member_all 3 [[1;2;3];[3;4;5]]);;
Printf.printf "%b\n" (member_all 3 [[1;2;3];[4;5;6]]);;
  

