#|
[2/16/2012] Challenge #8 [easy]

write a program that will print the song "99 bottles of beer on the wall".

for extra credit, do not allow the program to print each loop on a new line.

#|

(define (text n)
  (let ((sn (number->string n)))
    (string-append
		     sn " bottles of  beer on the wall, "
		     sn  "bottles of beer... "
		     "Take one down and pass it around, "
		     (number->string (- n 1)) ;;<-- lol
		     " bottles of beer on the wall.\n")))
(define (bob n)
  (if 
    (> n 0)
    	(begin (print (text n)) (bob (- n 1)))
    n))

(bob 5)
