(* What are the types of these expressions?
  [|1; 2; 3|] 
  [|true; false; true|] 
  [|[|1|]|] 
  [|[1; 2; 3]; [4; 5; 6]|] 
  [|1; 2; 3|].(2) 
  [|1; 2; 3|].(2) <- 4 
*)

(* - : int array = [|1; 2; 3|] *)
let a = [|1; 2; 3|] ;;

(* - : bool array = [|true; false; true|] *)
let b = [|true; false; true|] ;;

(* - : int array array = [|[|1|]|] *)
let c = [|[|1|]|] ;;

(* - : int list array = [|[1; 2; 3]; [4; 5; 6]|] *)
let d = [|[1; 2; 3]; [4; 5; 6]|] ;;

(* - : int = 3 *)
let e = [|1; 2; 3|].(2) ;;

(* val f : unit = () *)
let f = [|1; 2; 3|].(2) <- 4 ;;
