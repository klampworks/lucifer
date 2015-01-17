{-
 - Exercise 6-1.
 -
 - Define the exponentiation operator ↑ for non-negative integers using the
 - same pattern of recursion as the multiplication operator ∗, and show how
 - 2 ↑ 3 is evaluated using your definition.
 -}

m ^ 0 = 1
m ^ n = m * (m Main.^ (n-1))
