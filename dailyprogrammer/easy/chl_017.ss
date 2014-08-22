#|
[3/4/2012] Challenge #17 [easy]

write an application which will print a triangle of stars of user-specified height, with each line having twice as many stars as the last.
|#

(define (a count maxx)
  (if (<= count maxx)
    (begin
      (print (make-string count #\@))
      (a (+ 1 count) maxx))))

(a 1 (string->number (car *argv*)))
