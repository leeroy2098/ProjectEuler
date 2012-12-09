import Prelude hiding (sum)

result = sum [3,6..999] + sum [5,10..999] - sum [15,30..999]

-- No cheating, let's make our own sum function!
-- Eta contraction
sum :: [Int] -> Int
sum = foldr (\x y -> x+y) 0