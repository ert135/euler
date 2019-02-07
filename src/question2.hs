-- Even Fibonacci numbers
module Question2 where

fib n = fibs!!n
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibsequence = [ fib x | x <- [1..100] ]
evenOnlyFibSequence = [ x | x <- fibsequence, even x ]
evenFibLessThan4Million = [ x | x <- evenOnlyFibSequence, x < 4000000 ]

answer = sum evenFibLessThan4Million