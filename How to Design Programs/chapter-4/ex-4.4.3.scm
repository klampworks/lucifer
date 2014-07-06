#lang racket

(define (pay-back in out)
  (cond
    [(> in 2500) (pay-back 2500 
			   (+ out 
			      (* 0.01 
				 (- in 2500))))]
    [(> in 1500) (pay-back 1500
			   (+ out
			      (* 0.0075
				 (- in 1500))))]
    [(> in 500) (pay-back 500
			  (+ out
			     (* 0.005
				(- in 500))))]
    [(> in 0) (pay-back 0
		       (+ out
			  (* 0.0025 in)))]
    [else out]))

(pay-back 400 0)
(pay-back 1400 0)
