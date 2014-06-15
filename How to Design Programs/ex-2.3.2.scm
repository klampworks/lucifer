#lang racket

#|
Exercise 2.3.2 The local supermarket needs a program that can compute the 
value of a bag of coins. Define the program sum-coins. It consumes four 
numbers: the number of pennies, nickels, dimes, and quarters in the bag; it 
produces the amount of money in the bag.
|#

(define (sum-coins pennies nickels dimes quarters)
  (+
    pennies
    (* nickels 5)
    (* dimes 10)
    (* quarters 25)))
