#|
[3/16/2012] Challenge #26 [easy]

you have a string "ddaaiillyypprrooggrraammeerr". We want to remove all the consecutive duplicates and put them in a separate string, which yields two separate instances of the string "dailyprogramer".

use this list for testing:

input: "balloons"

expected output: "balons" "lo"

input: "ddaaiillyypprrooggrraammeerr"

expected output: "dailyprogramer" "dailyprogramer"

input: "aabbccddeded"

expected output: "abcdeded" "abcd"

input: "flabby aapples"

expected output: "flaby aples" "bap"
|#

(define (rm in)
  (letrec ((rm-h (lambda (l1 l2 l3)
		(cond
		  ((null? l1)
		   (list (reverse l3) l2))
		  ((null? (cdr l1))
		   (list (reverse (cons (car l1) l3)) l2))
		  ((equal? (car l1) (cadr l1)) 
		   (rm-h (cddr l1) (cons (car l1) l2) (cons (car l1) l3)))
		  (else 
		    (rm-h (cdr l1) l2 (cons (car l1) l3)))))))
    (rm-h in '() '())))

(display (rm '(h e l l o)))
		    

