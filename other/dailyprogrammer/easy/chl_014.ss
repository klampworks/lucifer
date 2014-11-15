#|
[2/23/2012] Challenge #14 [easy]

Input: list of elements and a block size k or some other variable of your choice

Output: return the list of elements with every block of k elements reversed, starting from the beginning of the list.

For instance, given the list 12, 24, 32, 44, 55, 66 and the block size 2, the result is 24, 12, 44, 32, 66, 55.

|#

(define (flatten x)
  (cond ((null? x) '())
        ((pair? x) (append (flatten (car x)) (flatten (cdr x))))
        (else (list x))))

(define (slice in n)
  (if (null? in)
    in
    (cons (take in n) (slice (drop in n) n))))

(define (rev in n)
  (flatten (map reverse (slice in n))))

(display (rev (string->list (car *argv*)) (string->number (cadr *argv*))))
