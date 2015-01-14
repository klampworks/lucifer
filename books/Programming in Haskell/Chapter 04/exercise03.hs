{-
 - Exercise 4-3.
 -
 - In a similar way to ∧, show how the logical disjunction operator ∨ can be
 - defined in four different ways using pattern matching.
 -}

True ∨ _ = True
_ ∨ True = True
_ ∨ _ = False
