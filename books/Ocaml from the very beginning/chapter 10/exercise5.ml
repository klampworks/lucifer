(* Write take , drop , and map functions for the sequence type. *)
(* Write take , drop , and map functions for the sequence type. *)
type 'a sequence = Nil | Cons of 'a * 'a sequence 

let rec take ls n =
  if n > 0
    then match ls with
           Nil -> Nil
         | Cons(h, t) -> Cons(h, take t (n-1))
    else Nil;;

let rec map fn ls =
  match ls with
    Nil -> Nil
  | Cons(h, t) -> Cons(fn h, map fn t);;
  
let print_pair p =
  match p with
    Nil -> Printf.printf "Nil\n"; Nil
  | Cons(h, _) -> Printf.printf "%d\n" h; p;;
  
let value v = v;;

let retarded_list = (Cons (1, Cons (2, Cons (3, Nil))));;

print_pair (Cons(1, Nil));;
take retarded_list 5;;

map value retarded_list;;
map print_pair retarded_list;;
