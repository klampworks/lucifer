{-
 - Exercise 5-1.
 -
 - Using a list comprehension, give an expression that calculates the sum
 - 1^2 + 2^2 + . . . 100^2 of the first one hundred integer squares.
 -}

ex1 = sum [x ^ 2 | x <- [1..100]]
