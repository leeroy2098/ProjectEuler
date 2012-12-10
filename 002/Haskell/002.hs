fibs = scanl (+) 0 (1:fibs)
result = foldr (+) 0 (takeWhile (\ x -> x < 4000000) (filter (\ x -> x `mod` 2 == 0)fibs))