(* Consider the expression 
let x = ref 1 in let y = ref 2 in x := !x + !x; y := !x + !y; !x
+ !y 
What references have been created? What are their initial and f inal values after this expression has been evaluated? What is the type of this expression? *)

let t = 
  let x = ref 1 in 
    let y = ref 2 in 
      x := !x + !x; (* x = 2 *)
      y := !x + !y; (* y = 4*)
      !x + !y;;     (* return 6 *)

print_int (t);

