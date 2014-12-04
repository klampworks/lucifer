(* Write a function mapll which maps a function over lists of lists of lists. You
must not use the let rec construct. Is it possible to write a function which
works like map , mapl , or mapll depending upon the list given to it? *)

let mapll fn ll =
  List.map (List.map (List.map fn )) ll ;;

let ll = [[[1;2;3];[4;5;6]]];;

mapll print_int ll;;

