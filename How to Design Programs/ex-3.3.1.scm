#lang racket

#|
Exercise 3.3.1 The United States uses the English system of (length) 
measurements. The rest of the world uses the metric system. So, people who 
travel abroad and companies that trade with foreign partners often need to 
convert English measurements to metric ones and vice versa. 
Here is a table that shows the six major units of length measurements of the 
English system: 12English metric1 inch = 2.54 cm1 foot = 12 in.1 yard = 3 
ft.1 rod = 51⁄2 yd.1 furlong = 40 rd.1 mile = 8 fl.Develop the functions 
inchest → cm, feet → inches, yards → feet, rods → yards, furlongs → rods, and 
miles → furlongs. Then develop the functions feet → cm, yards → cm, 
rods → inches, and miles → feet.  Hint: Reuse functions as much as possible. 
Use variable def initions to specify
|#

(define (inch->cm i)
  (* i 2.54))

(define (feet->inch i)
  (* i 12))

(define (yards->feet i)
  (* i 3))

(define (rod->yard i)
  (* i 5.5))

(define (furlong->rod i)
  (* i 40))

(define (mile->furlong i)
  (* i 8))

(define (foot->cm i)
  (inch->cm (feet->inch i)))

(define (yard->cm i)
  (inch->cm (feet->inch (yards->feet i))))

(define (rod->inch i)
  (feet->inch (yards->feet (rod->yard i))))
