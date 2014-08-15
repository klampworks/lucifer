#|
[easy] challenge #2
Hello, coders! An important part of programming is being able to apply your programs, so your challenge for today is to create a calculator application that has use in your life. It might be an interest calculator, or it might be something that you can use in the classroom. For example, if you were in physics class, you might want to make a F = M * A calc.
|#

(define lb 2.20462262)

(display (map (lambda in
		(if (null? in)
		  in
		  (* lb (string->number (car in)))))
	      *argv*))
