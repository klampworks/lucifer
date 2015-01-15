{-
 - Exercise 5-4.
 -
 - A positive integer is perfect if it equals the sum of its factors, 
 - excluding the number itself. Using a list comprehension and the function 
 - factors, define a function perfects :: Int → [ Int ] that returns the 
 - list of all perfect numbers up to a given limit. For example:
 - > perfects 500
 - [6, 28, 496]
 -}

perfects i = [x | x <- [1..i], sum [y | y <- [1..x-1], x `mod` y == 0] == x]
