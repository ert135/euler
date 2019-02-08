-- What is the 10 001st prime number?
module Question7 where
--Using https://en.wikipedia.org/wiki/Sieve_of_Sundaram


isPrime k = null [ x | x <- [2..k - 1], k `mod` x == 0]

numbersToN = [ x | x <- [1..7000000], isPrime x, x < 10001 ] 
