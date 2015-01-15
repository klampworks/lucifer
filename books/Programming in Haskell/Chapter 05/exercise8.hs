{-
 - Exercise 5-8.
 -
 - Modify the Caesar cipher program to also handle upper-case letters.
 -}

import Data.Char

rotate n xs = drop n xs ++ take n xs

chisqr os es = sum [((o - e) ^ 2 / e) | (o,e) <- zip os es]

freqs xs = [percent (count x xs) n | x <- ['a' .. 'z']]
           where n = lowers xs

percent n m = (fromIntegral n / fromIntegral m) * 100

table = [8.2, 1.5, 2.8, 4.3, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2, 0.8, 4.0, 2.4,
         6.7, 7.5, 1.9, 0.1, 6.0, 6.3, 9.1, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]

encode n xs = [shift n x | x <- xs]

shift n c | isLower c = int2let_l ((let2int_l c + n) `mod` 26)
          | isUpper c = int2let_u ((let2int_u c + n) `mod` 26)
          | otherwise = c

int2let n a = chr (ord a + n)
let2int c a = ord c - ord a

int2let_l n = int2let n 'a'
let2int_l c = let2int c 'a'

int2let_u n = int2let n 'A'
let2int_u c = let2int c 'A'

count x xs = length [x' | x' <- xs, x == x']
lowers xs = length [x | x <- xs, isLower x]
positions x xs = [i | (x', i) <- zip xs [0..n], x==x']
                 where n = length xs -1

crack xs = encode (-factor) xs
             where
	       factor = head (positions (minimum chitab) chitab)
	       chitab = [chisqr (rotate n table') table | n <- [0..25]]
	       table' = freqs xs
