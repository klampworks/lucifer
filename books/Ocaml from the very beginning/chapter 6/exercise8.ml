(* Write a function mapl which maps a function of type α → β over a list of type α list list to produce a list of type β list list . *)

let mapl fn l =
  List.map (List.map fn) l;;

mapl print_int [[1;2;3];[4;5;6]];;
