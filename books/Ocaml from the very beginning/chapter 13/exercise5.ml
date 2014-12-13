(* Write a function to compute the sum of the elements in an integer array. *)

let sum arr =
  let acc = ref 0 in
    for i = 0 to (Array.length arr) - 1 do
      acc := !acc + arr.(i);
    done;
  !acc;;

print_int (sum [| 1; 2; 3 |]);;
