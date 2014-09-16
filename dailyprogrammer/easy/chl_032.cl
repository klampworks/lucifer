#|
lets simulate a roulette wheel!
a program that takes as input your bet, and gives as output how much you won, with the appropriate probability
|#

(setf *random-state* (make-random-state t))

(defun spin ()
  (+ 1 (random 35)))

  
(print "guess")
(finish-output)

(defvar answer (read-line))

(if (= (spin) (parse-integer answer))
  (print "yes")
  (print "no"))

