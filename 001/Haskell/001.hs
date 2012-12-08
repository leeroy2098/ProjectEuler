import Prelude hiding (sum)

withFilter = sum $ filter(\ x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1,2..999]

withListComprehension = sum $ [x | x <- [1,2..999], x `mod` 3 == 0 || x `mod` 5 == 0]

-- No cheating, let's make our own sum function!
-- Eta contraction
sum :: [Int] -> Int
sum = foldr (\x y -> x+y) 0