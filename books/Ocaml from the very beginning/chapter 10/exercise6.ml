(* Extend the expr type and the evaluate function to allow raising a number to a
power. *)

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
  match e with
    Num x -> x
  | Add (e, e') -> evaluate e + evaluate e'
  | Subtract (e, e') -> evaluate e - evaluate e'
  | Multiply (e, e') -> evaluate e * evaluate e'
  | Divide (e, e') -> evaluate e / evaluate e'
  | Power (e, e') -> pow (evaluate e) (evaluate e');;

print_int (evaluate (Add (Num 1, Multiply ( Num 2, Num 3))));;
print_int (evaluate (Power (Num 2, Multiply ( Num 2, Num 4))));;


