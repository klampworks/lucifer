#|
[3/26/2012] Challenge #30 [easy]

Write a program that takes a list of integers and a target number and determines if any two integers in the list sum to the target number. If so, return the two numbers. If not, return an indication that no such integers exist.
|#

(defun sum? (a b trg)
  (if (= (+ a b) trg)
    (list a b)
    nil))
    
(defun sum-lst? (lst b trg)
  (some (lambda (a) (or nil a)) 
	(map 'list 
	     (lambda (a) 
		     (sum? a b trg)) 
	     (remove-if (lambda (a) (= b a)) lst))))

(defun sum-lst-lst? (lst trg)
  (some (lambda (a) (or nil a)) 
    (map 'list 
         (lambda (a)
	   (sum-lst? lst a trg))
         lst)))

(print (sum-lst-lst? '(1 2 3) 5))
(print (sum-lst-lst? '(1 2 4) 99))
