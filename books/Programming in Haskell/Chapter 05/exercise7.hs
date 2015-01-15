{-
 - Exercise 5-7.
 -
 - The scalar product of two lists of integers xs and ys of length n is given by
 - the sum of the products of corresponding integers:
 -
 -  n−1
 -  (xsi ∗ ysi )
 -  i=0
 -  In a similar manner to the function chisqr , show how a list comprehension
 -  can be used to define a function 
 -  scalarproduct :: [ Int ] → [ Int ] → Int that
 -  returns the scalar product of two lists. For example:
 -  > scalarproduct [1, 2, 3] [4, 5, 6]
 -  32
 -}

scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]
