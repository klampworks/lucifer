(* Use List.mem to write a function which returns true only if every list in a bool list list contains true somewhere in it. *)

let mem ll =
  List.mem true 
    (List.map 
      (List.mem true) ll);;

Printf.printf "%b\n" (mem [ [false; false; false;]; [false] ]);;
Printf.printf "%b\n" (mem [ [false; true; false;]; [false] ]);;

