(* Write a function to reverse the elements of an array in place (i.e. do not create a new array). *)

let rev arr =
  let len = (Array.length arr) - 1 in
  if len > 0 then
    for i = 0 to len / 2 do
      let t = arr.(i) in
        arr.(i) <- arr.(len-i);
        arr.(len-i) <- t;
    done;;

let print arr =
    for i = 0 to (Array.length arr) - 1 do
      print_int arr.(i);
      print_string " "
    done;
  print_newline ();;

let arr1 = [|1; 2; 3|];;
print arr1;;
rev arr1;;
print arr1;;
    
let arr2 = [|1; 2; 3; 4|];;
print arr2;;
rev arr2;;
print arr2;;
  
let arr3 = [||];;
print arr3;;
rev arr3;;
print arr3;;
