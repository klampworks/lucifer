{-
 - Exercise 6-5.
 -
 - Using merge , define a recursive function msort :: Ord a ⇒ [ a ] → [ a ] that
 - implements merge sort, in which the empty list and singleton lists are 
 - already
 - sorted, and any other list is sorted by merging together the two lists that
 - result from sorting the two halves of the list separately.
 - Hint: first define a function halve :: [ a ] → [([ a ], [ a ])] that 
 - splits a list into
 - two halves whose lengths differ by at most one.
 -}

merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x < y = x : Main.merge xs (y:ys)
                    | otherwise = y : Main.merge (x:xs) ys

msort [] = []
msort [x] = [x]
msort xs = Main.merge (msort (take h xs)) (msort (drop h xs))
             where h = length xs `div` 2
