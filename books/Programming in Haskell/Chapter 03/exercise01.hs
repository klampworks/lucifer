{-
 - Exercise 3-1.
 -
 - What are the types of the following values?
 - [’a’, ’b’, ’c’]
 - (’a’, ’b’, ’c’)
 - [(False, ’O’), (True, ’1’)]
 - ([False, True ], [’0’, ’1’])
 - [tail , init, reverse ]
 -}

 a = ['a', 'b', 'c']
 -- Char list.
 -- a :: [Char]

 b = ('a', 'b', 'c')
 -- Tuple (triple) of char x char x char.
 -- b :: (Char, Char, Char)

 c = [(False, 'O'), (True, '1')]
-- List of bool x char tuples.
-- c :: [(Bool, Char)]

d = ([False, True ], ['0', '1'])
-- Tuple of bool list x char list.
-- d :: ([Bool], [Char])

e =  [tail , init, reverse]
-- List of functions taking lists of any type and 
-- returning lists of the same type.
-- e :: [[a] -> [a]]
