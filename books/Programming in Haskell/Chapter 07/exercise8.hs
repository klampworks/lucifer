{-
 - Exercise 7-8.
 -
 - Modify the string transmitter program to detect simple transmission errors
 - using parity bits. That is, each eight-bit binary number produced during
 - encoding is extended with a parity bit, set to one if the number contains
 - an odd number of ones, and to zero otherwise. In turn, each resulting nine-
 - bit binary number consumed during decoding is checked to ensure that its
 - parity bit is correct, with the parity bit being discarded if this is the case,
 - and a parity error reported otherwise.
 - Hint: the library function error :: String → a terminates evaluation and
 - displays the given string as an error message.
 -}

import Data.Char

transmit = decode . channel . encode
channel = id
decode = map (chr . bin2int) . chop8

chop8 [] = []
chop8 bits = ckparity (take 9 bits) : chop8 (drop 9 bits)

encode = concat . map (mkparity . make8 . int2bin . ord)
make8 bits = take 8 (bits ++ repeat 0)

int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)
bin2int = foldr (\x y -> x + 2 * y) 0

mkparity bits = bits ++ (calc_parity bits)

calc_parity bits = if sum [1 | x <- bits, x == 1] `mod` 2 == 0 
                    then [1]
                    else [0]

ckparity bits = if head (calc_parity (take 8 bits)) == (last bits)
                    then init bits
                    else error "Parity fail."
