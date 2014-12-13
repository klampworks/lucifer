(* Write a function table which, given an integer, builds the int array array
representing the multiplication table up to that number. For example, table 5
should yield: 
￼ 
There is more than one way to represent this as an array of arrays; you may
choose. *)

let mkrow r n =
  let arr = Array.make n 0 in
    for i = 1 to n do
      arr.(i-1) <- r*i;
    done;
    arr;;
    
let print arr =
    for i = 0 to (Array.length arr) - 1 do
      print_int arr.(i);
      print_string " "
    done;
  print_newline ();;

let table n =
  let arr = Array.make n (Array.make n 0) in
    for i = 1 to n do
      arr.(i-1) <- mkrow i n;
    done;
    arr;;

(*
print (mkrow 2 5);;
*)

let t = table 5;;
for i = 0 to (Array.length t) - 1 do
  print t.(i);
done

