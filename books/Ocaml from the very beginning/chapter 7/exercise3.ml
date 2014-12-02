(* Write an exception definition and a function which calculates the largest integer smaller than or equal to the square root of a given integer. If the argument is negative, the exception should be raised. *)

exception Netgative_result;;

let rec isqrt n =
  if n = 1 then 1
    else let n' = isqrt (n - 1) in
        (n' + (n / n')) / 2;;

let lisetsq i =
  let res = isqrt i in
    if i < 0
      then raise Netgative_result
      else res;;
(*
print_int (lisetsq 4);;
print_int (lisetsq (-4));;
*)

