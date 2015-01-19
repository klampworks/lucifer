{-
 - Exercise 7-3.
 -
 - Redefine the functions map f and filter p using foldr .
 -}

map f xs = foldr (\x y-> f x : y) [] xs
filter p xs = foldr (\x y -> if p x then x : y else y) [] xs
