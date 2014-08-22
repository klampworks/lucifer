#|
[2/27/2012] Challenge #16 [easy]

Write a function that takes two strings and removes from the first string any character that appears in the second string. For instance, if the first string is “Daily Programmer” and the second string is “aeiou ” the result is “DlyPrgrmmr”.
note: the second string has [space] so the space between "Daily Programmer" is removed

|#

(define (filt c cc)
  (not (char=? c cc)))

(define (remove-dups s1 s2)
  (fold 
    (lambda (elem out) 
      (remove (lambda (c1) (char=? c1 elem)) out)) s1 s2))

  ;;(fold (lambda (in out) cons (remove (lambda (cc) (char=? c cc)) s) out) '()  s2))


(display (remove-dups
	   (string->list (car *argv*)) (string->list (cadr *argv*))))
