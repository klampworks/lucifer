{-
 - Exercise 4-2.
 -
 - Consider a function safetail :: [ a ] → [ a ] that behaves as the library 
 - function tail , except that safetail maps the empty list to itself, 
 - whereas tail
 - produces an error in this case. Define safetail using:
 -   (a) a conditional expression;
 -   (b) guarded equations;
 -   (c) pattern matching.
 - Hint: make use of the library function null .
 -}

safetail1 xs = if xs == [] 
                 then [] 
		 else tail xs

safetail2 xs | xs == [] = []
             | otherwise = tail xs

safetail3 [] = []
safetail3 (_:xs) = xs

