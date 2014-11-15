#lang racket
#|
[4/3/2012] Challenge #35 [easy]

Write a program that will take a number and print a right triangle attempting to use all numbers from 1 to that number.

Sample Run:

Enter number: 10

Output:

7 8 9 10

4 5 6

2 3

1
|#

(define (mk-lst st ln bgt acc)
  (if (> ln bgt)
    acc
    (mk-lst (+ ln st) (+ 1 ln) (- bgt ln) 
       (cons (drop (build-list (- (+ st ln) 1) add1) (- st 1)) acc))))

(define (prnt-lst lst)
  (map displayln lst))

(prnt-lst (mk-lst 1 1 20 '()))
