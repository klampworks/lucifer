;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex-6.2.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE(* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

(define (gimme-y colour)
  (cond
    [(symbol=? colour 'red) Y-RED]
    [(symbol=? colour 'yellow) Y-YELLOW]
    [(symbol=? colour 'green) Y-GREEN]))

(define (bulb-on colour)
  (draw-solid-disk (make-posn X-BULBS (gimme-y colour)) 
                              BULB-RADIUS colour))

(define (bulb-off colour)
  (and (draw-solid-disk (make-posn X-BULBS (gimme-y colour)) 
                              BULB-RADIUS 'white)
       (draw-circle (make-posn X-BULBS (gimme-y colour)) 
                              BULB-RADIUS colour)))

(define (draw-bulb colour)
  (bulb-on colour))
  
(define (switch colour-1 colour-2)
  (and 
   (bulb-off colour-1)
   (bulb-on colour-2)))