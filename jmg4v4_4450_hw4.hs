{-

      student: Joey Gallichio
      date: 10/28/2024
      pawprint: jmg4v4

-}


------------------------------------------------
--                                            --
--               Part One: Types              --
--                   20 pts                   --
--                                            --
------------------------------------------------
--
-- In Part One, we will explore the haskell typing system.
--
-- For functions 1a to 1h, simply provide a function definition
-- such that each function type-checks correctly in the GHC.
-- You may need to add function parameters to the left side of
-- the '='.     (e.g.,   add x y = x + y)
--
-- You can check for correctness by simply loading this file in GHC
-- using ":l yourPawprint_4450_hw4.hs".

-- 2pts
func_1a :: [[Char]]
func_1a = ["Hello", "World", "This", "Is" ,"Haskell"]

-- 3pts
func_1b :: Int -> Int
func_1b x = x * 2 

-- 4pts
func_1c :: [(String, Int)] -> (String, Int)
func_1c = undefined

-- 3pts
func1_d :: [a] -> a
func1_d = head

-- 2pts
func_1e :: (a, b, c) -> b
func_1e = undefined

-- 3pts
func_1f :: [a] -> [b] -> Bool
func_1f = undefined

-- 3pts
func_1g :: (Integer -> Integer -> Integer) -> Integer -> Integer -> Integer
func_1g f x1 x2 = undefined

------------------------------------------------
--                                            --
--            Part Two: Lists                 --
--                   20 pts                   --
--                                            --
------------------------------------------------
--
-- In this section, you will experiment with
-- Haskell's  1. Pattern Matching
--            2. List Comprehensions
--            3. List Syntax
--            4. Recursion
--
--  LIST CONCATENATION
--          [1,2,3] ++ [2,3,4] = [1,2,3,2,3,4]
--          [1,2,3] ++ [1] = [1,2,3,4]
--
--  LIST PREPENDING
--           1 : [2,3] = [1,2,3]
--
--  LIST APPENDING
--            [2,3] : 2 = WRONG
--            [2,3] ++ [2] = [2,3,2]
--            2 : 3 : 4 : [] = [2,3,4]
--
--  LIST FUNCTIONS
--            head [1,2,3,4] = 1
--            tail [1,2,3,4] = [2,3,4]
--            length [1,2,3,4] = 4
--            [1,2,3,4] !! 0 = 1
--            [1,2,3,4] !! 3 = 4
--            filter (\x -> x > 2) [1,2,3,4,5] = [3,4,5]
--            reverse [2,3,4] = [4,3,2]
--            map reverse ["abc", "def", "ghi"] = ["cba", "fed", "ihg"]
--
--  LIST COMPREHENSIONS
--            [1..3] = [1,2,3]
--            [1,3..13] = [1,3,5,7,9,11,13]
--            [even x | x <- [1..10]] = [2,4,6,8,10]
--
--
--  Use the above functions to achieve the specified goals.
--  For each function write its type signature if not present.


-- Problem 2A. Write a function that takes a list and puts the last two elements
--             at the front of the list, in their original order. For lists of size
--             one, return the original list. For empty lists, return the empty list.
--
--  ex:
--      INPUT: func_2a [1,2,3,4,5]
--      OUTPUT: [4,5,1,2,3]
--      INPUT: func_2a "ceni"
--      OUTPUT: "nice"
--      INPUT: func_2a []
--      OUTPUT: []
--

-- PUT THE LAST TWO LIST ELEMENTS AT THE FRONT OF THE LIST
-- 4 pts
func_2a :: [a] -> [a]
func_2a as = undefined






-- Problem 2B. Write a function that identifies the second to last item of a list, and
--             returns a list of the size of the input list but only populated by the identified item.
--             It should return the singular item (as a list) of a list of length one and
--             it should throw an error when the empty list is passed to it
--
--  ex:
--      INPUT: func_2b [1,2,3,4,5]
--      OUTPUT: [4, 4, 4, 4, 4]
--      INPUT: func_2b "ceni"
--      OUTPUT: 'nnnn'
--      INPUT: func_2b []
--      OUTPUT: "ERROR"
--


-- RETURN A LIST OF THE SAME SIZE AS THE INPUT LIST BUT ONLY POPULATED BY THE IDENTIFIED ITEM
-- 4 pts
func_2b :: [a] -> [a]
func_2b [] = error "error"
func_2b as = undefined


-- -- -- 
-- Problem 2C. Write a function that takes in a list of integers and returns a list containing,
--             the integer parts (whole numbers) of the square roots of each integer in the input list.
--             You can use any helper functions if you like to.
--             If the input list is empty the function should return an empty list.
--             Negative integers in the input list should be ignored in the output.
--             Handle inappropriate types.
--
--  ex:
--      INPUT: func_2c [4, 16, 35, 14]
--      OUTPUT: [2, 4, 5, 3]
--      INPUT: func_2c [-1, 2]
--      OUTPUT: [1]
--      INPUT: func_2c 'a'
--      OUTPUT: ERROR
--

-- RETURN LIST of integer parts of the square roots of each integer in the input list
-- 4 pts
func_2c :: [Integer] -> [Integer]
func_2c d = undefined









-- Problem 2D. Write a function that takes a list of integers, and returns a list where each
--             element in the list is the cumulative sum of the elements up to that index.
--             Fill in the type signature of func_2d so that inappropriate types, empty lists are handled.
--
--
--  ex:
--      INPUT: func_2d [1, 4, 12, 10, ...]
--      OUTPUT: [1, 5, 17, 27, ...]
--      INPUT: func_2d [12, 5, 3, 1, ...]
--      OUTPUT: [12, 17, 20, 21, ...]
--      INPUT: func_2d []
--      OUTPUT: "error"
--
--

-- FOR A LIST OF INTEGERS WHERE EACH ELEMENT IS A CUMULATIVE SUM OF THE LIST ITEMS BEFORE IT, []
-- 4 pts
func_2d = undefined









-- Problem 2E. Write a function func_2e that checks if a given string or integer is a palindrome.
--
--  ex:
--      INPUT: func_2e 100
--      OUTPUT: False
--      INPUT: func_2e 1
--      OUTPUT: True
--      INPUT: func_2e "one"
--      OUTPUT : False

-- 4 pts
-- func_2e :: ?????
func_2e = undefined










------------------------------------------------
--                                            --
--            Part Three: Functions           --
--                   10 pts                   --
--                                            --
------------------------------------------------

-- Problem 3A. Write a function, func_3a
--          that takes a String, str, and an Integer, n,
--          then performs n rotations on str. 
--          If the integer n is positive, it performs n right rotations on the string. 
--          If the integer n is negative, it performs n left rotations on the string. 
--          If the integer n is 0, it returns the string without rotations.
--          Uncomment and fill in the type signature as well.
--
-- Helpful Hint:
-- Recall the representation of Strings in Haskell.
--
--  ex:
--      INPUT: func_3a "Hello Haskell!" 3
--      OUTPUT: "ll!Hello Haske"
--  ex:
--      INPUT: func_3a "Hello Haskell!" (-3)
--      OUTPUT: "lo Haskell!Hel"
--


--   IMPLEMENT A FUNCTION THAT ROTATES STRINGS LEFT OR RIGHT  --
--       10 pts        --

func_3a :: String -> Integer -> String
-- func_3a :: [Char] -> Integer -> [Char]
func_3a [] _  = []
func_3a str n = []


------------------------------------------------
--                                            --
--            Part Four: Bonus           --
--                   5 pts                   --
--                                            --
------------------------------------------------

-- Problem 4A. Write a function, func_4a
--          that 
--          1. takes a positive Integer, n
--          2. converts it into its binary equivalent value giving a list of 1s and 0s
--          3. reverses the binary list
--          4. convert the binary list into its equivalent Integer value.
--          It should return the string "error" if a number below
--          0 is passed to the function. Uncomment and
--          fill in the type signature as well.
--
--
--  ex:
--      INPUT: func_4a 10
--      Intermediate steps: Binary of 10 is [1, 0, 1, 0] 
--      		-> reversed is [0, 1, 0, 1] -> integer equivalent of this is 5.
--      OUTPUT: 5
--  ex:
--      INPUT: func_3b (-10)
--      OUTPUT: "error"
--


--   IMPLEMENT A FUNCTION THAT CONVERTS INT -> BINARY -> REVERSE BINARY -> INT  --
--       5 pts (-1 for not handling negatives)        --

func_4a = undefined 


