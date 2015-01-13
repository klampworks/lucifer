{- 
 - Exercise 2-4.
 -
 - Show how the library function last that selects the last element of a non-
 - empty list could be defined in terms of the library functions introduced in
 - this chapter.
 -}

 xlast xs = head (reverse xs)
