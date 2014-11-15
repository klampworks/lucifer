#|
[3/17/2012] Challenge #27 [easy]

Write a program that accepts a year as input and outputs the century the year belongs in (e.g. 18th century's year ranges are 1701 to 1800) and whether or not the year is a leap year. Pseudocode for leap year can be found here
|#

(define (find-century year)
  (+ 1 (floor (/ year 100))))

(define (leap-year? year)
  (cond 
    ((not (= 0 (modulo year 4))) #f)
    ((not (= 0 (modulo year 100))) #t)
    (else (= 0 (modulo year 400)))))

(define (do2things year)
  (print (find-century year))
  (print (leap-year? year)))

(do2things 1996)
(do2things 1900)
