(* Write a simple recursive function calm to replace exclamation marks in a char
list with periods. For example calm ['H'; 'e'; 'l'; 'p'; '!'; ' '; 'F';
'i'; 'r'; 'e'; '!'] should evaluate to calm ['H'; 'e'; 'l'; 'p';
'.'; ' '; 'F'; 'i'; 'r'; 'e'; '.'] . Now rewrite your function to use
map instead of recursion. What are the types of your functions? *)

let rev l =
  let rec rev_h lin lout =
    match lin with
      [] -> lout
    | h::t -> rev_h t (h::lout) in
  rev_h l [];;

let calm l =
  let rec calm_h lin lout =
    match lin with
      [] -> lout
    | '!'::t -> calm_h t ('.'::lout)
    | h::t -> calm_h t (h::lout) in
  rev (calm_h l []);;

let rec print_list l =
	match l with
	[] -> ()
	| h::t -> print_char h; print_string " "; print_list t;;
 
let calm_2 l =
  List.map (fun x -> if x = '!' then '.' else x) l;;

print_list (calm ['H'; 'e'; 'l'; 'p'; '!'; 'F'; 'i'; 'r'; 'e'; '!']);;
print_list (calm_2 ['H'; 'e'; 'l'; 'p'; '!'; 'F'; 'i'; 'r'; 'e'; '!']);;
