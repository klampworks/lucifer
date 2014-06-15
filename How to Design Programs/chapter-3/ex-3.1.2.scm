#lang racket

#|
Exercise 3.1.2 Use the results of exercise 3.1.1 to determine how much it 
costs to run a show at $3.00, $4.00, and $5.00. Also determine how much 
revenue each show produces at those prices. Finally, figure out how much profit
the monopolistic movie owner can make with each show. Which is the best price 
(of these three) for maximizing the profit? 
|#

(define (profit price)
  (- (revenue price) (cost price)))

(define (attendance price)
  (+ (* (/ 15 0.1) (- 5 price)) 120))

(define (cost attendees)
  (+ 180 (* 0.4 attendees)))

(define (revenue price)
  (* price (attendance price)))

(profit 5)
(profit 4)
(profit 3)
