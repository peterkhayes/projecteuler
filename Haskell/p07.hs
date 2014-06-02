--import Data.List

--intSqrt :: Int -> Int
--intSqrt n = floor $ sqrt $ fromIntegral n

--mapInd :: (a -> Int -> b) -> [a] -> [b]
--mapInd f l = zipWith f l [0..]

--sieve :: Int -> Int -> [Bool]
--sieve m n = map (\x -> x == n || mod x n /= 0) [2..m]

--getPrimesUpTo :: Int -> [Bool]
--getPrimesUpTo n = [False, False, True] ++ map and (transpose sieves)
--  where root = intSqrt n
--        sieves = map (\x -> sieve n x) [3, 5 ..root]

intSqrt :: Integer -> Integer
intSqrt n = floor $ sqrt $ fromIntegral n

intDiv :: Integer -> Integer -> Integer
intDiv n m = floor $ (fromIntegral n)/(fromIntegral m)

isFactorOf :: Integer -> Integer -> Bool
isFactorOf n m = mod n m == 0

isComposite :: Integer -> Bool
isComposite n
  | n < 2 = True
  | n < 4 = False
  | otherwise = any (isFactorOf n) [2.. (intSqrt n)]

isPrime :: Integer -> Bool
isPrime n = not (isComposite n)

answer = filter isPrime [1..] !! 10001
