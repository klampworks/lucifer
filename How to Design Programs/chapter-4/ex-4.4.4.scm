#lang racket

(define (how-many-helper b2 ac4)
  (cond
    [(> b2 ac4) 2]
    [(= b2 ac4) 1]
    [else "Answer is cat."]))

(define (how-many a b c)
  (how-many-helper (* b b) (* a c 4)))
	
(how-many 1 0 -1)
(how-many 2 4 2)
(how-many 2 0 2)

