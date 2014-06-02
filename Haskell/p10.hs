import Data.List

intSqrt :: Int -> Int
intSqrt n = floor $ sqrt $ fromIntegral n

sieve :: Int -> Int -> [Bool]
sieve m n = map (\x -> x == n || mod x n /= 0) [2..m]

getPrimesUpTo :: Int -> [Bool]
getPrimesUpTo n = [False, False] ++ map and (transpose sieves)
  where root = intSqrt n
        sieves = map (\x -> sieve n x) ([2.. root])

labeled = zip [0..] (getPrimesUpTo 1999999)

answer = foldl p 0 labeled
  where p acc (n, True) = acc + n
        p acc (n, False) = acc