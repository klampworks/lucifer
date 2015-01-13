{-
 - Exercise 2-2.
 -
 - Work through the examples from this chapter using Hugs. (Used ghci).
 -}

ex01 = 2 + 3
-- => 5

ex02 = 2 -3
-- => -1

ex03 = 2 * 3
-- => 6

ex04 = 7 `div` 2
-- => 3

ex05 = 2 ^ 3
-- => 8

ex06 = head [1,2,3,4,5]
-- => 1

ex07 = tail [1,2,3,4,5]
-- => [2,3,4,5]

ex08 = [1,2,3,4,5] !! 2
-- => 3

ex09 = take 3 [1,2,3,4,5]
-- => [1,2,3]

ex10 = drop 3 [1,2,3,4,5]
-- => [4,5]

ex11 = length [1,2,3,4,5]
-- => 5

ex12 = sum [1,2,3,4,5]
-- => 15

ex13 = product [1,2,3,4,5]
-- => 120

ex14 = [1,2,3] ++ [4,5]
-- => [1,2,3,4,5]

ex15 = reverse [1,2,3,4,5]
-- => [5,4,3,2,1]

ex16 = 1 `div` 0
-- => *** Exception: divide by zero

ex17 = head []
-- => *** Exception: Prelude.head: empty list

double x = x + x
quadruple x = double (double x)

ex18 = quadruple 10
-- => 40

ex19 = take (double 2) [1,2,3,4,5,6]
-- => [1,2,3,4]

factorial n = product [1..n]
average ns = sum ns `div` length ns

ex20 = factorial 10
-- => 3628800

ex21 = average [1,2,3,4,5]
-- => 3
