{-
 - Exercise 6-2.
 -
 - Using the definitions given in this chapter, show how length [1, 2, 3],
 - drop 3 [1, 2, 3, 4, 5], and init [1, 2, 3] are evaluated.
 -}

length [] = 0
length (_:xs) = 1 + Main.length xs

-- length [1,2,3]
-- = 1 + length [2.3]
-- = 1 + 1 + length [3]
-- = 1 + 1 + 1 + length []
-- = 1 + 1 + 1 + 0
-- = 3

drop 0 xs = xs
drop n [] = []
drop n (_ : xs) = Main.drop (n - 1) xs

-- drop 3 [1,2,3,4,5]
--   = drop 2 [2,3,4,5]
--   = drop 1 [3,4,5]
--   = drop 0 [4,5]
--   = [4,5]

init [_] = []
init (x : xs) = x : Main.init xs

-- init [1,2,3]
--   = 1 : [2,3]
--   = 1 : 2 : init [3]
--   = 1 : 2 : []
--   = [1,2]
