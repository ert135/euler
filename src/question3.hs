-- What is the largest prime factor of the number 600851475143 ?
module Question3 where

isPrime k = null [ x | x <- [2..k - 1], k `mod` x == 0]

allFactors = [ x | x <- [1..775146], 600851475143 `mod` x == 0 ]

allPrimeFactors = [ x | x <- allFactors, isPrime ]

answer = max allPrimeFactors
