{-
 - Exercise 7-1.
 -
 - Show how the list comprehension [ f x | x ← xs , p x ] can be re-expressed
 - using the higher-order functions map and filter .
 -}

ex1 f p xs = map f (filter p xs)
