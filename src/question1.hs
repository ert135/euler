module Question1 where
-- rob135
-- haskell334
multiplesOfThreeAndFive = [ x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0 ]
answer = sum multiplesOfThreeAndFive