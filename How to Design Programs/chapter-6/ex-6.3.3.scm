;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex-6.3.3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct fighter (designation acceleration top-speed range))

(define (within-range fighter distance)
  (> (fighter-range fighter) distance))

(define (reduce-range fighter)
  (make-fighter 
   fighter-designation 
   fighter-acceleration
   fighter-top-speed
   (* 0.8 fighter-range)))
                