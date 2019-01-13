--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lecture 4: Lists                                                           --
--------------------------------------------------------------------------------

module Lecture4 where

--------------------------------------------------------------------------------
-- Lists

e0 :: Bool
e0 = null []

e1 :: Bool
e1 = null [1,2,3]

e2 :: Int
e2 = length []

e3 :: Int
e3 = length [1,2,3]

e4 :: [Int]
e4 = reverse []

e5 :: [Int]
e5 = reverse [1,2,3]

e6 :: [Int]
e6 = concat []

e7 :: [Int]
e7 = concat [[1,2,3], [4], [5,6]]

e8 :: Bool
e8 = and []

e9 :: Bool
e9 = and [True, True, True]

e10 :: Bool
e10 = and [True, False, True]

e11 :: [Char]
e11 = replicate 0 'a'

e12 :: [Char]
e12 = replicate 5 'a'

e13 :: [String]
e13 = replicate 2 "Witter"

splitAt :: Int -> [a] -> ([a], [a])
splitAt n xs = (take n xs, drop n xs)

e14 :: [Int]
e14 = [1+2,3*4,6-5]

e15 :: [Bool]
e15 = [even 5, odd 3, True, not True]

e16 :: Int -> Int -> Int
e16 = head [(+), (-)]

e17 :: Int
e17 = (head [(+), (-)]) 5 1

--------------------------------------------------------------------------------
-- List ranges

r0 :: [Int]
r0 = [1..4]

r1 :: [Char]
r1 = ['D'..'H']

r2 :: [Double]
r2 = [1.0..3.0]

r3 :: [Int]
r3 = [1,3..10]

r4 :: [Char]
r4 = ['a','d'..'m']

r5 :: [Double]
r5 = [1.0,1.5..3.0]

r6 :: [Int]
r6 = [0..]

r7 :: [Int]
r7 = [0,2..]

r8 :: [Int]
r8 = take 4 [0,2..]

--------------------------------------------------------------------------------
-- List comprehensions

lc0 :: [Int]
lc0 = [n | n <- [0..5]]

lc1 :: [Bool]
lc1 = [even n | n <- [0..5]]

lc2 :: [Int]
lc2 = [n*m | n <- [0..2], m <- [0..2]]

lc3 :: [Int]
lc3 = [n*m | n <- [0..2], m <- [0..n]]

lc4 :: [Int]
lc4 = [x | (c,x) <- [('a',5),('b',7)]]

lc5 :: [Int]
lc5 = [length xs | x:xs <- [[1,2],[3,4,5]]]

lc6 :: [Int]
lc6 = [n | n <- [0..4], mod n 2 == 0]

lc7 :: [Int]
lc7 = [n*m | n <- [0..4], mod n 2 == 0, m <- [0..n]]

--------------------------------------------------------------------------------
