fibs = scanl (+) 0 (1:fibs)
result = foldr (\x y -> x+y) 0 (takeWhile (\ x -> x < 4000000) (filter (\ x -> x `mod` 1 == 0)fibs))