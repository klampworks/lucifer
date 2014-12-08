(* Use the option type to deal with the problem that Division_by_zero may be
raised from the evaluate function. *)

type expr =
  Num of int
| Add of expr * expr
| Subtract of expr * expr
| Multiply of expr * expr
| Divide of expr * expr
| Power of expr * expr

let rec pow n x =
    if n=0 then 1 else x * pow (n-1) x;;

let rec evaluate e =
try 
  match e with
    Num x -> x
  | Add (e, e') -> evaluate e + evaluate e'
  | Subtract (e, e') -> evaluate e - evaluate e'
  | Multiply (e, e') -> evaluate e * evaluate e'
  | Divide (e, e') -> evaluate e / evaluate e'
  | Power (e, e') -> pow (evaluate e) (evaluate e')
with
  Division_by_zero -> None;;

print_int (evaluate (Add (Num 1, Multiply ( Num 2, Num 3))));;
print_string "\n";;
