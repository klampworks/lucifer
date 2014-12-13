(* What is the difference between [ref 5; ref 5] and let x = ref 5 in [x;
x]? *)

let a = [ref 5; ref 5];;
let b = let x = ref 5 in [x; x];;

print_int !(List.hd a);;
print_newline ();;
print_int !(List.hd b);;
print_newline ();;

List.hd a := 42;;
print_int !(List.hd a);;
print_newline ();;

List.hd b := 666;;
print_int !(List.hd b);;
print_newline ();;
