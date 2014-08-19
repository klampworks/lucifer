
(define (parse1 in)
  (cond 
    ((null? in) "#f")
    ((char=? (car in) #\()
      (parse2 (cdr in) 
	      (list char-numeric? char-numeric? char-numeric? (char=? #\)))
	      parse3))
    ((char-numeric? (car in))
     (parse2 (cdr in)
	     (list char-numeric? char-numeric?)
	     parse3))
    ((char-whitespace? (car in))
     (parse1 (cdr in)))
    (else "#f")))

(define (parse2 in expect next)
  (cond
    ((null? expect) (next in))
    ((null? in) "#f")
    (((car expect) (car in))
      (parse2 (cdr in) (cdr expect) next))
    (else "#f")))

(define (parse3 in)
  (cond
    ((null? in) "#f")
    ((or (char-whitespace? (car in))
	 (char=? (car in) #\-)
	 (char=? (car in) #\.))
       (parse3 (cdr in)))
    ((char-numeric? (car in))
     (parse2 (cdr in)
	     (list char-numeric? char-numeric?)
	     parse4))
    (else "#f")))
    
(define (parse4 in)
  (cond
    ((null? in) "#f")
    ((or (char-whitespace? (car in))
	 (char=? (car in) #\-)
	 (char=? (car in) #\.))
       (parse4 (cdr in)))
    ((char-numeric? (car in))
     (parse2 (cdr in)
	     (list char-numeric? char-numeric? char-numeric?)
	     parse5))
    (else "#f")))
  
(define (parse5 in)
  (if (null? in)
    #t
    "#f"))

(display
  (parse1 (string->list (car *argv*))))



