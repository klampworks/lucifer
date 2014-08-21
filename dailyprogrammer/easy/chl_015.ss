#|
[2/24/2012] Challenge #15 [easy] 

Write a program to left or right justify a text file
|#

(define (jl s)
  (cond
    ((null? s) s)
    ((char-whitespace? (car s)) (jl (cdr s)))
    (else s)))

(define (jr s)
  (let ((len (- (length s) 80)))
    (if (positive? len)
      (string-append (make-string (len)) (list->string s))
      s)))

(print (jr (string->list (car *argv*))))
