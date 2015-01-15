{-
 - Exercise 5-6.
 -
 - Redefine the function positions using the function find. 
 -
 - † This is a fucking retarded exercise. What is a "maybe"? 
 - How can this find function possibly be useful in this context?
 - It returns the element I am searching for, I already know the element I am 
 -   searching for.
 -}

positions x xs = [i | (y, i) <- zip xs [0..n], x == y]
                 where n = length xs -1
