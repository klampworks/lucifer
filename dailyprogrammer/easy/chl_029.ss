#|
[3/22/2012] Challenge #29 [easy]

A Palindrome is a sequence that is the same in reverse as it is forward.

I.e. hannah, 12321.

Your task is to write a function to determine whether a given string is palindromic or not.
#|

(use srfi-13)

(define (palindrome? in)
  (equal? in (string-reverse in)))

(display (palindrome? (car *argv*)))
