(* Now write a function plot which, given a function of type float → f loat , a
range, and a step size, uses star to draw a graph. For example, assuming the
existence of the name pi for π , we might see:￼ 
Here, we have plotted the sine function on the range 0 ...π in steps of size π∕ 20. You can define pi by calculating 4.0 *. atan 1.0 . *)

let plot fn st en step =
  let p n =
    for i = 0 to n do
      print_string " ";
    done;
    print_string "*\n";
  in
    let i = ref st in
      while !i < en do
        p (int_of_float (!i *. 10.0));
        i := !i +. step;
      done;;

let pi =  4.0 *. atan 1.0;;
plot sin 0. pi (pi /. 20.);;
  
