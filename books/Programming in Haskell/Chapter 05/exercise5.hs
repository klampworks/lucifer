{-
 - Exercise 4-5.
 -
 - Show how the single comprehension [(x , y ) | x ← [1, 2, 3], y ←
 - [4, 5, 6]] with two generators can be re-expressed using two comprehen-
 - sions with single generators. Hint: make use of the library function concat
 - and nest one comprehension within the other.
 -}

ex1 = [(x,y) | x <- [1,2,3], y <- [4,5,6]]
ex2 = [(x, y) | x <- [1,2,3], y <- [z | z <- [4,5,6]]]

