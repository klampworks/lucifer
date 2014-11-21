let isvowel l = 
	l = 'a' ||
	l = 'e' ||
	l = 'i' ||
	l = 'o' ||
	l = 'u' ;;

let isconsonant l = not (isvowel l);;

Printf.printf "%b\n" (isconsonant 'a');;
Printf.printf "%b\n" (isconsonant 'b');;
