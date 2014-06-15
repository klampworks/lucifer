#lang racket 

#|
 | Exercise 2.2.4 Define the program convert3. 
 | It consumes three digits, starting with
 | the least significant digit, followed by the next most significant one, 
 | and so on. The
 | program produces the corresponding number. For example, the 
 | expected value of 
 | (convert3 1 2 3) 
 | is 321.
 |#

(define (convert-3 a b c)
  (+ a (* b 10) (* c 100)))

(convert-3 1 2 3)

