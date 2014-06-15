#lang racket

;Exercise 2.1.2 Evaluate (sqrt 4), (sqrt 2), and (sqrt –1) in DrScheme. 

(require test-engine/racket-tests)

(check-expect (sqrt 4) 2)
;(check-expect (sqrt 2) 1.4142135623730951)
;(check-expect (sqrt -1) 0+1i)
(test)
