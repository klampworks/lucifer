#lang racket

#|
Exercise 3.1.1 The next step is to make up examples for each of the functions.
Determine how many attendees can afford a show at a ticket price of $3.00, 
$4.00, and $5.00. Use the examples to formulate a general rule that shows how 
to compute the number of attendees from the ticket price.
|#

(define (attendance price)
  (+ (* (/ 15 0.1) (- 5 price)) 120))
