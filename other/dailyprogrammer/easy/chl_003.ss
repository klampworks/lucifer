#|
[2/11/2012] Challenge #3 [easy]
Welcome to cipher day!

write a program that can encrypt texts with an alphabetical caesar cipher. This cipher can ignore numbers, symbols, and whitespace.

for extra credit, add a "decrypt" function to your program!
|#

(define a (char->integer #\a))	
(define A (char->integer #\A))	
(define z (char->integer #\z))	
(define Z (char->integer #\Z))	

(define (rot13- in low high)
    (let ([bb (+ 13 (char->integer in))]) 
      (if (> bb high)
	(+ low (- bb high 1))
	bb)))

(define (rot13 in low high)
  (integer->char (rot13- in low high)))

(define (rot13-upper in) (rot13 in A Z))
(define (rot13-lower in) (rot13 in a z))

(define (rot-char b)
  (if (char-alphabetic? b)
    (if (char-upper-case? b)
      (rot13-upper b)
      (rot13-lower b))
    b))
      
(define (rot-string b)
  (map rot-char (string->list b)))

      
(display (rot-string (car *argv*)))
