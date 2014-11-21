let gt_zero a b = a > 0 && b > 0;;

Printf.printf "1 & 2 ? %b\n" (gt_zero 1 2);;
Printf.printf "1 & 0 ? %b\n" (gt_zero 1 0);;
