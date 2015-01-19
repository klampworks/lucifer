{-
 - Exercise 7-2.
 -
 - Without looking at the definitions from the standard prelude, define the
 - higher-order functions all , any , takeWhile , and dropWhile .
 -}

all xs = foldr (&&) True xs 
any xs = foldr (||) False xs
takeWhile p (x:xs) | p x = x : Main.takeWhile p xs
                   | otherwise = []

dropWhile p (x:xs) | p x = Main.dropWhile p xs
                   | otherwise = x : xs
