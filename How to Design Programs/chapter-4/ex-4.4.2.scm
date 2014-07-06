#lang racket

(define (tax grss)
  (cond
    [(< grss 240) 0]
    [(< grss 481) (* grss 0.15)]
    [else (* grss 0.28)]))

(define (pay-per-hour) 12)

(define (net grss)
  (- grss (tax grss)))

(define (netpay hours)
  (net (* hours (pay-per-hour))))

(netpay 10)
  
