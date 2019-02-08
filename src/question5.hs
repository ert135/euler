-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
module Question5 where

-- find factorial of all numbers
factorial n = product [1..n]

--only need to chck up to square root of factors (232792560) 
allCombinations = [ x | x <- [232792560,232792560-1..1], x `mod` 2 == 0, x `mod` 3 == 0, x `mod` 4 == 0, x `mod` 5 == 0 , x `mod` 6 == 0, x `mod` 7 == 0, x `mod` 8 == 0, x `mod` 9 == 0, x `mod` 11 == 0, x `mod` 12 == 0, x `mod` 13 == 0, x `mod` 14 == 0, x `mod` 16 == 0, x `mod` 17 == 0, x `mod` 18 == 0, x `mod` 19 == 0, x `mod` 20 == 0] 

answer = maximum allCombinations