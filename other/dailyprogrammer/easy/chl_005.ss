#|
[2/12/2012] Challenge #5 [easy]

Your challenge for today is to create a program which is password protected, and wont open unless the correct user and password is given.

For extra credit, have the user and password in a seperate .txt file.

for even more extra credit, break into your own program :)
|#

(use srfi-13)

(define password "十六夜")

(print "...")
(define in (read-line))

(if (string= in password)
  (print "yes.")
  (print "no."))

