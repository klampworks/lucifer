#lang racket

#|
Exercise 2.3.3 An old-style movie theater has a simple profit function. Each 
customer pays $5 per ticket. Every performance costs the theater $20, plus 
$.50 per attendee. Develop the function total-profit. It consumes the number 
of attendees (of a show) and produces how much income the attendees produce. 
|#

(define (total-profit attendees)
  (- (* (- 5 0.5) attendees) 20))

