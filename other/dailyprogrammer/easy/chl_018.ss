
(define (char->num c)
  (if
    (char-alphabetic? c)
      (ceiling (/ 
		 (+ 1 
		    (- 
		      (char->integer (char-downcase c)) 
		      (char->integer #\a))) 
		 3))
      c))

(display (map char->num (string->list (car *argv*))))
