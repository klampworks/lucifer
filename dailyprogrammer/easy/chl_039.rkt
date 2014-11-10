#lang racket 

#|
[4/12/2012] Challenge #39 [easy]

You are to write a function that displays the numbers from 1 to an input parameter n, one per line, except that if the current number is divisible by 3 the function should write “Fizz” instead of the number, if the current number is divisible by 5 the function should write “Buzz” instead of the number, and if the current number is divisible by both 3 and 5 the function should write “FizzBuzz” instead of the number.

For instance, if n is 20, the program should write 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, and Buzz on twenty successive lines.
|#

(define (fizz-buzz n)
  (map (λ (a) (cond 
		 ((and (zero? (modulo a 3)) 
		       (zero? (modulo a 5))) 
		  "FizzBuzz")
		 ((zero? (modulo a 3)) 
		  "Fizz")
		 ((zero? (modulo a 5)) 
		  "Buzz")
		 (else 
		   a))) 
       (build-list n (λ (x) (add1 x)))))

(fizz-buzz 20)

