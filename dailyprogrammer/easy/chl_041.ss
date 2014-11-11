#|
[4/19/2012] Challenge #41 [easy]

Write a program that will accept a sentence as input and then output that sentence surrounded by some type of an ASCII decoratoin banner.

Sample run:

Enter a sentence: So long and thanks for all the fish

Output

*****************************************
*                                       *
*  So long and thanks for all the fish  *
*                                       *
*****************************************
|#

(define († txt)
  (let ((ln (string-length txt)))
    (display (make-string (+ 4 ln) #\*))
    (newline)
    (display "* ")
    (display txt)
    (display " *")
    (newline)
    (display (make-string (+ 4 ln) #\*))
    (newline)))

(† "So long and thanks for all the fish")
