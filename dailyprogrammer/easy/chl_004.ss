#|
[2/12/2012] Challenge #4 [easy]

You're challenge for today is to create a random password generator!

For extra credit, allow the user to specify the amount of passwords to generate.

For even more extra credit, allow the user to specify the length of the strings he wants to generate
|#

(use srfi-27)

(define a (char->integer #\a))	
(define z (char->integer #\z))	
(random-source-randomize! default-random-source)

;; Putting this in a function returns the same character everytime.
;;(define gen-char 
;;  (integer->char (+ a (random-integer (- z a)))))

(define (gen-string n s)
  (if (> n 0)
    (gen-string (- n 1) 
		(string-append s 
			       (string 
				 (integer->char 
				   (+ a 
				      (random-integer (- z a)))))))
    s))

(print (gen-string 5 ""))
