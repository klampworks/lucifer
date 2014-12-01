(* Write a function apply which, given another function, a number of times to
apply it, and an initial argument for the function, will return the cumulative
effect of repeatedly applying the function. For instance, apply f 6 4 should
return f (f (f (f (f (f 4)))))) . *)

let rec apply f n arg =
  match n with 
    0 -> arg
  | _ -> apply f (n-1) (f arg);;

print_int (apply (( * ) 2) 8 1);;
