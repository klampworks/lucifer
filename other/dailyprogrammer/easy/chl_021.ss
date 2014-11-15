#|
[3/9/2012] Challenge #21 [easy]

Input: a number

Output : the next higher number that uses the same set of digits.

#|

(define (next-max fst rst)
  (sort (filter (lambda (a) (> a fst)) rst)))

(define (upone in)
  (let ((res (next-max (car in) (cdr in))))
    (if (null? res)
      (let ((ni (sort in)))
	(cons (car ni) (cons (car ni) (cdr ni))))
      (cons (car res) (remove (lambda (a) (eqv? a (car res))) in)))))

(display (upone '(1 2)))
(newline)
(display (upone '(2 1)))


