#lang racket
;Exercise 2.1.1 Find out whether DrScheme has operations 
;for squaring a number; for computing the sine of an angle;
;and for determining the maximum of two numbers.

(define (square i)
  (* i i))

(square 2)

(sin 2)

(max 2 3)