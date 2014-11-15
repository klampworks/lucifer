#|
[3/13/2012] Challenge #23 [easy]

Input: a list

Output: Return the two halves as different lists.

If the input list has an odd number, the middle item can go to any of the list.

Your task is to write the function that splits a list in two halves.
|#

(define (split l)
  (let ((len (floor (/ (length l) 2))))
    (list (take l len) (drop l len))))

(display (split (string->list (car *argv*))))
