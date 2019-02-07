module Question1 where
-- rob135
-- haskell334
multiplesOfThreeAndFive = [ x | x <- [1..1000], x `mod` 3 == 0 || x `mod` 5 == 0 ]

sumAnswer :: [Int] -> Int
sumAnswer (x:t) = x + listsum t