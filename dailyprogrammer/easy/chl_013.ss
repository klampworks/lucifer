
(define (day d m)
  (+ (fold + 0 (take '(31 28 31 30 31 30 31 31 30 31 30) (- m 1))) d))

(display (day 
	   (string->number (car *argv*))
	   (string->number (cadr *argv*))))
