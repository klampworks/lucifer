(* Use the String.map function to write a function to return a new copy of a
string with all exclamation marks replaced with periods (full stops). *)

let replace s old neww =
  String.map (fun c -> if c = old then neww else c) s;;

print_string (replace "hello!" '!' '.');;

(* Error: Unbound value String.map *)

