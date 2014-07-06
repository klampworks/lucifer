#lang racket

(define (check-colour g1 g2 t1 t2)
  (cond
    [(and (= g1 t1) (= g2 t2)) 'Perfect]
    [(or (= g1 t1) (= g2 t2)) 'OneColourAtCorrectPosition]
    [(or (= g1 t2) (= g2 t1)) 'OneColourOccurs]
    [else 'NothingCorrect]))
