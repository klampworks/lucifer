#lang racket
(require test-engine/racket-tests)

;Exercise 2.2.2 Define the program dollar → euro, which consumes a number of
;dollars and produces the euro equivalent. 

(define (dollar→euro d)
  (* d 0.74))

(dollar→euro 100)
