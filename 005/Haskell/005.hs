-- no cheating, make our own lcm function here!
import Prelude hiding (lcm, gcd)
result = foldr lcm 20 [1..19]

lcm :: Integer -> Integer -> Integer
lcm a b = a * b `div` gcd a b

gcd :: Integer -> Integer -> Integer
gcd a b
	| b == 0 = a
	| otherwise = gcd b (a `mod` b)