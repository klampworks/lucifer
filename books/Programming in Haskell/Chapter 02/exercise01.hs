{-
 - Exercise 2-1.
 -
 - 1. Parenthesise the following arithmetic expressions:
 - 2 ↑ 3 ∗ 4
 - 2 ∗ 3 + 4 ∗ 5
 - 2 + 3 ∗ 4 ↑ 5
 -}

a1 =  2 ^ 3 * 4
b1 = (2 ^ 3) * 4
r1 = a1 == b1

a2 = 2 * 3 + 4 * 5
b2 = (2 * 3) + (4 * 5)
r2 = a2 == b2

a3 = 2 + 3 * 4 ^ 5
b3 = 2 + (3 * (4 ^ 5))
r3 = a3 == b3
