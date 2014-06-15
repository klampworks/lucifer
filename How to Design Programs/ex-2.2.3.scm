#lang racket 

;Exercise 2.2.3 Define the program triangle. 
;It consumes the length of a triangle’s side and its height.

(define (triangle side h)
  (/ (* side h) 2))

(triangle 10 10)
