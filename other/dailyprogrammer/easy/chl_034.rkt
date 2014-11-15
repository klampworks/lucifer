#lang racket
#|
[3/31/2012] Challenge #34 [easy]

A very basic challenge:

In this challenge, the

input is are : 3 numbers as arguments

output: the sum of the squares of the two larger numbers.

Your task is to write the indicated challenge.
|#

(define (chl-34 a b c)
  (foldr + 0 (map (lambda (x) (* x x)) (cdr (sort (list a b c) <)))))

(print (apply chl-34 
	      (map string->number 
		   (vector->list(current-command-line-arguments)))))
