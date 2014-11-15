#|
[3/20/2012] Challenge #28 [easy]

The array duplicates problem is when one integer is in an array for more than once.

If you are given an array with integers between 1 and 1,000,000 or in some other interval and one integer is in the array twice. How can you determine which one?

Your task is to write code to solve the challenge.

Note: try to find the most efficient way to solve this challenge.
|#

(define (find-dup lst)
  (letrec ((find-dup2 (lambda (l1)
		     (cond 
		       ((or (null? l1) (null? (cadr l1))) '())
		       ((equal? (car l1) (cadr l1)) (car l1))  
		       (else (find-dup2 (cdr l1)))))))
    (find-dup2 (sort lst))))

(display (find-dup '( 1 4 2 7 3 7)))
