#lang racket

#|
 After studying the cost structure of a show, the owner discovered
several ways of lowering the cost. As a result of his improvements, he no longer has a
fixed cost. He now simply pays $1.50 per attendee. 
Modify both programs to reflect this change. When the programs are modif ied, test
them again with ticket prices of $3.00, $4.00, and $5.00 and compare the results,
|#

(define (profit price)
  (- (revenue price) (cost price)))

(define (attendance price)
  (+ (* (/ 15 0.1) (- 5 price)) 120))

(define (cost attendees)
  (* 1.5 attendees))

(define (revenue price)
  (* price (attendance price)))

(profit 5)
(profit 4)
(profit 3)
