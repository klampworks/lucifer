{-
 - Exercise 3-2.
 -
 - 2. What are the types of the following functions?
 -   second xs = head (tail xs)
 -   swap (x , y) = (y, x )
 -   pair x y = (x , y)
 -   double x = x ∗ 2
 -   palindrome xs = reverse xs == xs
 -   twice f x = f (f x )
 -
 - Hint: take care to include the necessary class 
 - constraints if the functions are
 - defined using overloaded operators.
 -}

 second xs = head (tail xs)
 -- Takes a list of any type and returns a single value of the same type.
 -- second :: [a] -> a

swap (x, y) = (y, x)
-- Takes a pair and returns a pair.
-- swap :: (t1, t) -> (t, t1)

 pair x y = (x, y)
 -- Takes two values and returns a pair.
 -- pair :: t -> t1 -> (t, t1)

 double x = x * 2
 -- Takes two numeric types and returns a numeric type.
 -- double :: Num a => a -> a

 palindrome xs = reverse xs == xs
 -- Takes a list of type which is a member of the equality type class and
 -- returns a bool.
 -- palindrome :: Eq a => [a] -> Bool

 twice f x = f (f x )
 -- Takes a function which takes a type and returns the same type, a value of
 -- this type and returns a result of that type.
 -- twice :: (t -> t) -> t -> t

