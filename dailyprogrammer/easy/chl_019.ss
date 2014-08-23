#|
[3/7/2012] Challenge #19 [easy]

Challenge #19 will use The Adventures of Sherlock Holmes from Project Gutenberg.

Write a program that counts the number of alphanumeric characters there are in The Adventures of Sherlock Holmes. Exclude the Project Gutenberg header and footer, book title, story titles, and chapters. Post your code and the alphanumeric character count.

Partial implementation.
#|

(define (count s)
  (fold (lambda (in out) 
	  (if (or (char-alphabetic? in) (char-numeric? in))
	    (+ 1 out)
	      out))
	0
	s))

(define fd (open-input-file "chl_002.ss"))

(define (do-file fd cnt)
  (let ((line (read-line fd)))
    (if (eof-object? line)
      cnt
      (do-file fd (+ cnt (count (string->list line)))))))

(display (do-file fd 0))


;;(display (count (string->list (car *argv*))))
