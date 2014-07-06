#lang racket

(define (check-guess guess target)
  (cond
    [(> guess target) 'TooLarge]
    [(< guess target) 'TooSmall]
    [else 'Perfect]))


