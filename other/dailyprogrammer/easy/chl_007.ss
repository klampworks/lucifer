#|
[2/15/2012] Challenge #7 [easy]

Write a program that can translate Morse code in the format of ...---...

A space and a slash will be placed between words. ..- / --.-

For bonus, add the capability of going from a string to Morse code.

Super-bonus if your program can flash or beep the Morse.

This is your Morse to translate:

.... . .-.. .-.. --- / -.. .- .. .-.. -.-- / .--. .-. --- --. .-. .- -- -- . .-. / --. --- --- -.. / .-.. ..- -.-. -.- / --- -. / - .... . / -.-. .... .- .-.. .-.. . -. --. . ... / - --- -.. .- -.--

|#

(define tbl (make-hash-table 'string=?))
(hash-table-put! tbl ".-" "a")
(hash-table-put! tbl "-..." "b")
(hash-table-put! tbl "-.-." "c")
(hash-table-put! tbl "-.." "d")
(hash-table-put! tbl "." "e")
(hash-table-put! tbl "..-." "f")
(hash-table-put! tbl "--." "g")
(hash-table-put! tbl "...." "h")
(hash-table-put! tbl ".." "i")
(hash-table-put! tbl ".---" "j")
(hash-table-put! tbl "-.-" "k")
(hash-table-put! tbl ".-.." "l")
(hash-table-put! tbl "--" "m")
(hash-table-put! tbl "-." "n")
(hash-table-put! tbl "---" "o")
(hash-table-put! tbl ".--." "p")
(hash-table-put! tbl "--.-" "q")
(hash-table-put! tbl ".-." "r")
(hash-table-put! tbl "..." "s")
(hash-table-put! tbl "-" "t")
(hash-table-put! tbl "..-" "u")
(hash-table-put! tbl "...-" "v")
(hash-table-put! tbl ".--" "w")
(hash-table-put! tbl "-..-" "x")
(hash-table-put! tbl "-.--" "y")
(hash-table-put! tbl "--.." "z")
(hash-table-put! tbl ".----" "1")
(hash-table-put! tbl "..---" "2")
(hash-table-put! tbl "...--" "3")
(hash-table-put! tbl "....-" "4")
(hash-table-put! tbl "....." "5")
(hash-table-put! tbl "-...." "6")
(hash-table-put! tbl "--..." "7")
(hash-table-put! tbl "---.." "8")
(hash-table-put! tbl "----." "9")
(hash-table-put! tbl "-----" "0")
(hash-table-put! tbl " " " ")

(define (lu buf out)
  (string-append out (hash-table-get tbl buf "")))

(define (resolve-buf in buf out)
  (if (null? in)
    (lu buf out)
    (parser in "" (lu buf out))))

(define (parser in buf out)
  (if (null? in) (resolve-buf in buf out)
  (let ([tmp (car in)])
    (cond 
      [(or (char=? tmp #\.) (char=? tmp #\-))
        (parser (cdr in) (string-append buf (string tmp)) out)]
      [(char=? tmp #\/) 
        (parser (cdr in) (string-append buf (string #\space)) out)]
     [else (resolve-buf (cdr in) buf out)])))) 

(print (parser (string->list ".... . .-.. .-.. --- / -.. .- .. .-.. -.-- / .--. .-. --- --. .-. .- -- -- . .-. / --. --- --- -.. / .-.. ..- -.-. -.- / --- -. / - .... . / -.-. .... .- .-.. .-.. . -. --. . ... / - --- -.. .- -.--") "" ""))
