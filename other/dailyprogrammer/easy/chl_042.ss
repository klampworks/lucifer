#|
[4/23/2012] Challenge #42 [easy]

Write a program that prints out the lyrics for "Ninety-nine bottles of beer", "Old McDonald had a farm" or "12 days of Christmas".

If you choose "Ninety-nine bottles of beer", you need to spell out the number, not just write the digits down. It's "Ninety-nine bottles of beer on the wall", not "99 bottles of beer"!

For Old McDonald, you need to include at least 6 animals: a cow, a chicken, a turkey, a kangaroo, a T-Rex and an animal of your choosing (Old McDonald has a weird farm). The cow goes "moo", the chicken goes "cluck", the turkey goes "gobble", the kangaroo goes "g'day mate" and the T-Rex goes "GAAAAARGH". You can have more animals if you like.

Make your code shorter than the song it prints out!
|#

(define animals
  '(
    ("cow" "moo")
    ("chicken" "cluck")
    ("turkey" "gobble")
    ("kangaroo" "g'day mate")
    ("T-Rex" "GAAAAARGH")
    ("bunny" "pyon")))

(define (op _) "Old MacDonald had a farm, E-I-E-I-O,")

(define (ln1 animal) 
  (string-append "And on that farm he had a " (car animal) ", E-I-E-I-O,"))

(define (ln2 animal)
  (let ((n (cadr animal)))
    (string-append "With a " n " " n " here and a " n " " n " there")))

(define (ln3 animal)
  (let ((n (cadr animal)))
    (string-append "Here a " n ", there a " n ", everywhere a " n " " n)))

(define (en _) "Old MacDonald had a farm, E-I-E-I-O.")

(define verse (list op ln1 ln2 ln3 en (lambda (_) "\n")))

(define (sing-verse animal)
  (map (lambda (ln)
	  (print (ln animal)))
       verse))

(define (sing-song animals)
  (map sing-verse animals))

(sing-song animals)
