;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex-6.4.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
; Where title and producer are symbols.
(define-struct movie (title producer))

; Where name hair eyes are symbols and phone is a number
(define-struct boyfriend (name hair eyes phone))

; Where name is a symbol and number is a number
(define-struct cheerleader (name number))

; Where artist and title are symbols and price is a number
(define-struct CD (title price))

; Where material and producer are symbols and size is a number
(define-struct sweater (producer size material))