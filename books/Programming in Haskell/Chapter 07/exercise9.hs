{-
 - Exercise 7-9.
 -
 - Test your new string transmitter program from the previous exercise using
 - a faulty communication channel that forgets the first bit, which can be
 - modelled using the tail function on lists of bits.
 -}

import Data.Char

transmit = decode . channel . encode
channel xs = tail xs
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


