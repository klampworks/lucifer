(* Imagine that the for... to ... do ... done construct did not exist. How might we create the same behaviour? *)

let mfor fn n =
  let rec mfor_h fn n count =
    if count < n
      then 
        begin
          fn count;
          mfor_h fn n (count+1);
        end
      else
        ()
  in
    mfor_h fn n 0;;

mfor print_int 5;;
