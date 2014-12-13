(* Write a function to find the point equidistant from two given points in two
dimensions. *)

let centre (x1, y1) (x2, y2) =
  ((x1+.x2) /. 2.0, (y1+.y2) /. 2.0);;

let p (x, y) =
  print_float x;
  print_string " ";
  print_float y;
  print_newline ();;

p (centre (4.0, 8.0) (8.0, 4.0));;
  

