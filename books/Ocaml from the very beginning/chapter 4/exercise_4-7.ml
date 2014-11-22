(* Can you explain why the rev function we defined is inefficient? How does the
time it takes to run relate to the size of its argument? Can you write a more
efficient version using an accumulating argument? What is its efficiency in terms
of time taken and space used? *)

let rec rev lin lot =
	match lin with
	[] -> lot
	| h::t -> rev t (h::lot);;
