{-
 - Exercise 7-4.
 -
 - Using foldl , define a function dec2int :: [ Int ] → Int that converts a 
 - decimal
 - number into an integer. For example:
 - > dec2int [2, 3, 4, 5]
 - 2345
 -}

dec2int xs = foldl (\y x -> y * 10 + x) 0 xs
