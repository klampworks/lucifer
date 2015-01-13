{-
 - Exercise 2-5.
 -
 - Show how the library function init that removes the last element from a
 - non-empty list could similarly be defined in two different ways.
 -}

xinit1 xs = reverse (tail (reverse xs))
xinit2 xs = take ((length xs) - 1) xs

