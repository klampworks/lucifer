#lang racket

(define (interest amt)
  (cond
    [(< amt 1000) (* amt 1.04)]
    [(< amt 5000) (* amt 1.045)]
    [else (* amt 1.05)]))

(interest 100)
