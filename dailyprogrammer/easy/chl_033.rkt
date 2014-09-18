#lang racket
#|
This would be a good study tool too. I made one myself and I thought it would also be a good challenge.

Write a program that prints a string from a list at random, expects input, checks for a right or wrong answer, and keeps doing it until the user types "exit". If given the right answer for the string printed, it will print another and continue on. If the answer is wrong, the correct answer is printed and the program continues.

Bonus: Instead of defining the values in the program, the questions/answers is in a file, formatted for easy parsing.
|#

(require (planet williams/science/random-source))
(random-source-randomize! default-random-source)

(define (count-lines file)
	(letrec ((count-line (lambda (file cnt)
	   (let ((line (read-line file)))
	     (if (eof-object? line)
		cnt
	       (count-line file (+ 1 cnt)))))))
	(count-line file 0)))

(define num-lines 
  (call-with-input-file "chl_033.rkt" count-lines))

(define (seek-line file ln)
  (letrec ((seek-line-h (lambda (file ln_t ln_c)
    (let ((line (read-line file)))
      (cond
        ((eof-object? line) "fuck")
        ((= ln_t ln_c) line)
	(else (seek-line-h file ln_t (+ 1 ln_c))))))))
  (seek-line-h file ln 1)))

(define (rand-ln)
  (+ 1 (random-integer num-lines)))

(define (rand-line)
  (call-with-input-file "chl_033.rkt" 
    (lambda (file) (seek-line file (rand-ln)))))
	
(print (rand-line))
