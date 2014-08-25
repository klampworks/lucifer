#|
[3/15/2012] Challenge #25 [easy]

In an election, the person with the majority of the votes is the winner. Sometimes due to similar number of votes, there are no winners.

Your challenge is to write a program that determines the winner of a vote, or shows that there are no winners due to a lack of majority.

|#

(define (is-max? elem acc)
  (if (> (car elem) (car (cadr acc)))
    elem
    (cadr acc)))

;;(define (is-max? a b)
 ;;   (list 67 #\z))

(define (maxx in)
  (fold (lambda (elem acc) 
			    (list (+ (car elem) (car acc))
				  (is-max? elem acc)
			    )) '(0 (0 #\space)) in))

(define (cnt in)
  (let ((res (maxx in)))
    (if (< (floor (/ (car res) 2)) (car (cadr res)))
      (print (append (cdadr res) " is the winner."))
      (print "No winner."))))

(cnt '((2 "one") (3 "two")))
;;(display (maxx '((2 #\a) (3 #\b))))
