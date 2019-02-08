-- find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
module Question6 where

squaredNumbers = [ x*x | x <- [1..100] ] 

sumOfFirst100Numbers = sum [ x | x <- [1..100] ]

answer = (sumOfFirst100Numbers * sumOfFirst100Numbers) - sum squaredNumbers;