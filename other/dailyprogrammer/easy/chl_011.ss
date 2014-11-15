#|
[2/19/2012] Challenge #11 [easy]

The program should take three arguments. The first will be a day, the second will be month, and the third will be year. Then, your program should compute the day of the week that date will fall on.
#|

(define t '(0 3 2 5 0 3 5 1 4 6 2 4))

(define (do-y m)
  (if (< m 3)
    1
    0))

(define (dow d m y)
   (let ((yy (- y (do-y m) )))
     (modulo
       (+ y
	  (- (floor (/ y 4))
	     (floor (/ y 100)))
	  (floor (/ y 400))
	  (list-ref t (- m 1))
	  d) 7)))

(display (dow 
	   (string->number (car *argv*))
	   (string->number (cadr *argv*))
	   (string->number (caddr *argv*))))



