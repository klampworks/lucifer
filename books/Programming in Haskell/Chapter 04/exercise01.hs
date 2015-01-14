{-
 - Exercise 4-1.
 -
 - Using library functions, define a function 
 - halve :: [ a ] → ([ a ], [ a ]) that
 - splits an even-lengthed list into two halves. For example:
 - > halve [1, 2, 3, 4, 5, 6]
 - ([1, 2, 3], [4, 5, 6])
 -}

 halve xs = (take n xs, drop n xs)
              where n = length xs `div` 2
