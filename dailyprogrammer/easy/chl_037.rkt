#lang racket 
#|
[4/8/2012] Challenge #37 [easy]

write a program that takes

input : a file as an argument

output: counts the total number of lines. 
|#

(define (count-lines file)
	(letrec ((count-line (lambda (file cnt)
	   (let ((line (read-line file)))
	     (if (eof-object? line)
		cnt
	       (count-line file (+ 1 cnt)))))))
	(count-line file 0)))

(define (num-lines) 
  (call-with-input-file "chl_037.rkt" count-lines))

(num-lines)
