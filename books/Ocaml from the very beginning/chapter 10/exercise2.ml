(* Now write a function of type rect → int to calculate the area of a given rect.*)
open Exercise1;;

let area s =
  match s with
    Rect(h, w) -> h * w
  | Square(h) -> h * h;;
  
print_int (area (Rect (2,3)));;
print_int (area (Square 2));;
