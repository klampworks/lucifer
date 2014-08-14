#| 
[easy] challenge #1
create a program that will ask the users name, age, and reddit username. have it tell them the information back, in the format:

your name is (blank), you are (blank) years old, and your username is (blank)

for extra credit, have the program log this information in a file to be accessed later.
|#

(print "Name?")
(define name (read-line))

(print "Age")
(define age (read-line))

(print "Username")
(define username (read-line))

(write (string-append "your name is " name ", you are " age 
		      " years old, and your username is " username))
