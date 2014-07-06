#lang racket

(define (a n)
  (cond 
    [(< n 10) 20]
    [(> n 20) 0]
    [else 1]))

(a 9)
(a 10)
(a 20)
(a 21)

(define (b n)
  (cond
    [(< n 10) 20]
    [(and (> n 20) (<= n 30))]
    [else 1]))

(b 9)
(b 10)
(b 25)
(b 31)
(b 0)

(define (c  n)
  (cond
    [(< n 10) 20]
    [* 10 n]
    [else 555]))

(c 10)
