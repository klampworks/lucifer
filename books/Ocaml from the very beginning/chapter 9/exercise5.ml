(* Write a function truncate which takes an integer and a list of lists, and returns a list of lists, each of which has been truncated to the given length. If a list is shorter than the given length, it is unchanged. Make use of partial application. *)

let trunc n l =
  let rec trunc_h n l acc =
    if n > 0
      then match l with
             [] -> acc
           | h::t -> trunc_h (n-1) t (h::acc)
      else acc in
  List.rev(trunc_h n l []);;

let truncate n ll =
  List.map (trunc n) ll;;

let pi i =
  print_int i;
  print_string " ";;

let pl l =
  List.map pi l;
  print_string "\n";;

List.map pl (truncate 2 [[1;2;99];[3;4;99];[5;6]]);;
  


