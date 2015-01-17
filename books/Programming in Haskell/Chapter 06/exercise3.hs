{-
 - Exercise 6-3.
 - Without looking at the definitions from the standard prelude, define the
 - following library functions using recursion.
 -
 - – Decide if all logical values in a list are True :
 -     and :: [Bool] → Bool
 - – Concatenate a list of lists:
 -     concat :: [[a]] → [a]
 - – Produce a list with n identical elements:
 -     replicate :: Int → a → [a]
 - – Select the n th element of a list:
 -     (!!) :: [a] → Int → a
 - – Decide if a value is an element of a list:
 -     elem :: Eq a ⇒ a → [a] → Bool
 -}
 
and [] = False
and [x] = x
and (True:xs) = Main.and xs
and (False:_) = False

concat [][] = []
concat xs [] = xs
concat [] ys = ys
concat (x:xs) ys = x : (Main.concat xs ys)

replicate 0 x = []
replicate n x | n < 0 = []
              | otherwise = x : (Main.replicate (n - 1) x)

(!!) (x:xs) 0 = x
(!!) (_:xs) n = xs Main.!! (n - 1)

elem _ [] = False
elem e (x:xs) | x == e = True
              | otherwise = Main.elem e xs

