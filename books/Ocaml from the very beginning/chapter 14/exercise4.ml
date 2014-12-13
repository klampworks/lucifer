(* Write a function star of type float → unit which, given a floating-point number between zero and one, draws an asterisk to indicate the position. An argument
of zero will result in an asterisk in column one, and an argument of one an
asterisk in column fifty. *)

let input () =
  let i = ref (-1.0) in
    while !i < 0.0 || !i > 1.0 do
      i := float_of_string (read_line ());
    done;
    !i;;
      
let star () =
  let inn = input () in
      for i = 0 to (int_of_float (inn *. 50.0)) - 1 do
        print_string " ";
      done;
      print_string "*\n";;

star ();;

    
