#|

[3/8/2012] Challenge #20 [easy]

create a program that will find all prime numbers below 2000

|#

(define (prime? n)
  (letrec ((helper (lambda (st en)
		     (cond
		       ((even? en) #f)
		       ((>= st en) #t)
                       ((= (modulo en st) 0) #f)
                       (else (helper (+ 2 st) en)))))) 
    (helper 3 n)))

(define (find-primes maxx)
  (letrec ((find-primes2 (lambda (st en res)
			   (cond
			     ((>= st en) res)
			     ((prime? st) (find-primes2 (+ 2 st) en (cons st res)))
			     (else (find-primes2 (+ 2 st) en res))))))
    (reverse (find-primes2 3 maxx '()))))

(display (find-primes 2000))
