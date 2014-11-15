#|
[2/20/2012] Challenge #12 [easy]

Write a small program that can take a string:

"hi!"

and print all the possible permutations of the string:

"hi!"

"ih!"

"!hi"

"h!i"

"i!h"

etc...

thanks to hewts for this challenge!
|#

;; Lets call it a partial implementation. (It works for 3 letter words like hi!).
(define (rot s)
  (append (take-right s 1) (drop-right s 1)))

(define (perm in orig)
  (if (not (equal? in orig))
	(list in (reverse in) (perm (rot in) orig))
	in))
	
    

(display (delete-duplicates (perm (rot (string->list (car *argv*))) (string->list (car *argv*)))))
