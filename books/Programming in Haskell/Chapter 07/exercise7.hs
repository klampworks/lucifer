{-
 - Exercise 7-7.
 -
 - A higher-order function unfold that encapsulates a simple pattern of recur-
 - sion for producing a list can be defined as follows:
 - unfold p h t x | p x
 -  = []
 -  | otherwise = h x : unfold p h t (t x )
 -  That is, the function unfold p h t produces the empty list if the predicate p is
 -  true of the argument, and otherwise produces a non-empty list by applying
 -  the function h to give the head, and the function t to generate another
 -  argument that is recursively processed in the same way to produce the tail of
 -  the list. For example, the function int2bin can be rewritten more compactly
 -  using unfold as follows:
 -  int2bin = unfold (== 0) (‘mod ‘2) (‘div ‘2)
 -  Redefine the functions chop8 , map f and iterate f using unfold .
 -}

unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

int2bin' = unfold (==0) (`mod` 2) (`div` 2)

chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

chop8' = unfold (null) (take 8) (drop 8)

map' f = unfold (null) (\(x:xs) -> f x) (drop 1)
iterate' f =  (\x -> x : unfold (\_ -> False) (f) (f) x)
