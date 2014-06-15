#lang racket

#|
Exercise 2.3.1 Utopia’s tax accountants always use programs that compute 
incometaxes even though the tax rate is a solid, never-changing 15%.which 
determines the tax on the gross pay. Also define netpay. The program 
determines the net pay of annumber of hours worked. Assume an hourly rate 
of $12. 
|#

(define (tax gross)
  (* gross (- 100 15)))

(define (net hours)
  (tax (* hours 12)))
