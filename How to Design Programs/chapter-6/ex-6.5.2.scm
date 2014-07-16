#lang racket

(define-struct time (h m s))

(define (time†seconds time)
  (+ 
    (* 60 60 (time-h time))
    (* 60 (time-m time))
    (time-s time)))

(time†seconds (make-time 12 30 2))

