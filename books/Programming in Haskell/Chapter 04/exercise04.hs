{-
 - Redefine the following version of the conjunction operator using conditional
 - expressions rather than pattern matching:
 -   True ∧ True = True
 -   _ ∧ _ = False
 -}

(∧) a b = if a == False then False
          else 
	    if b == False then False
	    else True
