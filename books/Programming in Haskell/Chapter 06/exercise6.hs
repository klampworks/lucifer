{-
 - Exercuse 6-6.
 -
 - Using the five-step process, define the library functions that calculate the
 - sum of a list of numbers, take a given number of elements from the start of
 - a list, and select the last element of a non-empty list.
 -}

sum [] = 0
sum (x:xs) = x + Main.sum xs

take 0 xs = []
take n (x:xs) = x : Main.take (n - 1) xs

last [x] = x
last (_:xs) = Main.last xs
