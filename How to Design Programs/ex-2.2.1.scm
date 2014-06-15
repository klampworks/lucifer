#lang racket
(require test-engine/racket-tests)

;Exercise 2.2.1 Define the program Fahrenheit → Celsius, 6 which consumes a
;temperature measured in Fahrenheit and produces the Celsius equivalent. 

;(°F  -  32)  x  5/9 = °C

(define (Fahrenheit→Celsius f)
  (* (- f 32) (/ 5 9)))

(check-expect (Fahrenheit→Celsius 14) -10)
(check-expect (Fahrenheit→Celsius 50) 10)
(check-expect (Fahrenheit→Celsius 77) 25)
(check-expect (Fahrenheit→Celsius 104) 40)
(test)
