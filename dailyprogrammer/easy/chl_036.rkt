#lang racket
#|
[4/5/2012] Challenge #36 [easy]

1000 Lockers Problem.

In an imaginary high school there exist 1000 lockers labelled 1, 2, ..., 1000. All of them are closed. 1000 students are to "toggle" a locker's state. * The first student toggles all of them * The second one toggles every other one (i.e, 2, 4, 6, ...) * The third one toggles the multiples of 3 (3, 6, 9, ...) and so on until all students have finished.

To toggle means to close the locker if it is open, and to open it if it's closed.

How many and which lockers are open in the end?
|#

(define num-lockers 1000)
(define lockers (make-vector num-lockers #f))


(define (toggle pos)
  (let ((ppos (- pos 1)))
    (vector-set! lockers ppos 
		 (not (vector-ref lockers ppos)))))

(define (seqq cls n trg)
  (letrec ((seq-h (lambda (c)
  (cond 
    ((< c trg) 
      (cond 
        ((zero? (modulo c n)) 
	 (cls c)))
        (seq-h (+ 1 c)))))))
  (seq-h 1)))

(define (seq cls n)
    (seqq cls n num-lockers))

(define (do-lockers)
  (letrec ((do- (lambda (cnt)
		  (cond
		    ((< cnt num-lockers)
		     (seq toggle cnt)
		     (do- (+ 1 cnt)))))))
    (do- 1)))

(do-lockers)
(print lockers)
