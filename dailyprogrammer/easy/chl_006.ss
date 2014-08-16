#|
[2/14/2012] Challenge #6 [easy]

You're challenge for today is to create a program that can calculate pi accurately to at least 30 decimal places.

Try not to cheat :)

Cheated because I don't care about learning the 30 different ways of calculating pi.
|#

(define (pi accuracy)
  (let helper ((k 0) (r 0))
    (let ((this (* (/ (expt -1 k) (expt 4 k))
                   (+ (/ 2 (+ (* 4 k) 1))
                      (/ 2 (+ (* 4 k) 2))
                      (/ 1 (+ (* 4 k) 3))))))
      (if (< (abs this) accuracy)
          (+ this r)
          (helper (+ k 1) (+ this r))))))

(print (pi 1e-30))
