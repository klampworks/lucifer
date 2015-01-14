{-
 - Exercise 4-5.
 -
 - Do the same for the following version, and note the difference in the number
 - of conditional expressions required:
 - True ∧ b = b
 -  False ∧ _ = False
 -}

(∧) a b = if a == True 
            then b
	    else False
