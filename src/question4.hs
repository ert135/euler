-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
module Question4 where

reversal :: Integral a => a -> a
reversal = go 0
  where go a 0 = a
        go a b = let (q,r) = b `quotRem` 10 in go (a*10 + r) q

palindrome x = reversal x == x

allCombinations = [ x*y | x <- [999,998..1], y <- [999,998..1], palindrome(x*y) ] 

answer = maximum allCombinations