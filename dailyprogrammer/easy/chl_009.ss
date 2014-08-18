#|
[2/17/2012] Challenge #9 [easy]

write a program that will allow the user to input digits, and arrange them in numerical order.

for extra credit, have it also arrange strings in alphabetical order
|#

(define (flatten x)
  (cond ((null? x) '())
        ((pair? x) (append (flatten (car x)) (flatten (cdr x))))
        (else (list x))))

(define (qs in)
  (cond
    [(null? in) in]
    [else 
  (letrec ((lt (qs (filter (lambda (a) (<= a (car in))) (cdr in))))
	(gt (qs (filter (lambda (b) (> b (car in))) (cdr in)))))
    (list lt (car in) gt))]))

(display (flatten (qs '(1 2 4 3))))
