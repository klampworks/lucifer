{-
 - Exercise 2-3.
 -
 - The script below contains three syntactic errors. Correct these errors and
 - then check that your script works properly using Hugs.
 - N =a ’div’ length xs
 -   where
 -     a = 10
 -    xs = [1, 2, 3, 4, 5]
 -}

 {-
  - † div is in single quotes instead of backticks, the final line is not 
  - indented far enough and the N should not be capital.
  -}

n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]
