#|
[3/27/2012] Challenge #31 [easy]

Write a function that takes two base-26 numbers in which digits are represented by letters with A=0, B=1, … Z=25 and returns their product using the same notation. As an example, CSGHJ × CBA = FNEUZJA.

Your task is to write the base-26 multiplication function.

Try to be very efficient in your code!
|#

(defun tonum(l)
  (- (char-code l) (char-code #\A)))

(defun conv (l place)
  (* (tonum l) (expt 26 place)))

(defun conv-l (s)
  (labels ((h (s acc place)
	      (if (null s) 
		acc
		(h (cdr s) (+ acc (conv (car s) place)) (+ 1 place)))))
    (h (reverse s) 0 0)))

(defun conv-s (s)
  (conv-l (coerce s 'list)))

(defun tochar (n)
  (code-char (+ n (char-code #\A))))

(defun conv-c (in)
  (labels ((h (n acc)
	      (if (= 0 n)
		acc
		(h (floor (/ n 26)) 
		   (concatenate 'string (string (tochar (mod n 26))) acc)))))
    (h in '())))
	   
(defun multiply (a b)
  (conv-c (* (conv-s a) (conv-s b))))

(print (conv-s "CBA"))
(print (conv-c 1378))
(print (multiply "CSGHJ" "CBA"))
