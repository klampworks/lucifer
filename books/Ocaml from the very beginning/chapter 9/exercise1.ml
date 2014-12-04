(* Rewrite the summary paragraph at the end of this chapter for the three
argument function g a b c . *)

(*
  The function g a b c has type α → β → γ → λ which can also be 
  written α → (β → (γ → λ)). Thus, it takes an argument of type α and returns a 
  function of type β → γ → λ which, when you give it an argument of type β 
  returns a function of type γ → λ, which when you give it an argument of type 
  γ gives you something of type λ. And so, we can apply just one or two arguments
  to the function g (which is called partial application), or apply all three at
  once. When we write let g x y z = ... this is just shorthand for 
  let g = fun x -> fun y -> fun z... 
*)





