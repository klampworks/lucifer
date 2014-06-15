#lang racket

;Exercise 2.2.5 formulate the following three expressions as programs: 

(define (one n)
  (+ (* n n) 10))

(define (two n)
  (+ (* (/ 1 2) (* n n)) 10))

(define (three n)
  (- 2 (/ 1 n)))

