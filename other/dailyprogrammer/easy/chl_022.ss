#|
[3/10/2012] Challenge #22 [easy]

Write a program that will compare two lists, and append any elements in the second list that doesn't exist in the first.

input: ["a","b","c",1,4,], ["a", "x", 34, "4"]

output: ["a", "b", "c",1,4,"x",34, "4"]
|#

(define (rm a b)
  (if (null? a)
    b
    (rm (cdr a) (remove
		  (lambda (elem) (eqv? elem (car a))) b))))

(define (c22 a b)
  (append a (rm a b)))

(display (c22 '(#\a #\b #\c 1 4) '(#\a #\x 34 #\4)))
