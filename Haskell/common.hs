intSqrt :: Integer -> Integer
intSqrt n = floor $ sqrt $ fromIntegral n

isFactorOf :: Integer -> Integer -> Bool
isFactorOf n m = mod n m == 0

isComposite :: Integer -> Bool
isComposite n
  | n < 2 = True
  | n < 4 = False
  | otherwise = any (isFactorOf n) [2.. (intSqrt n)]

isPrime :: Integer -> Bool
isPrime n = not (isComposite n)

factors :: Integer -> [Integer]
factors n =
  reverse bigFactors ++ smallFactors
  where smallFactors = filter (isFactorOf n) [(intSqrt n), (intSqrt n) - 1 .. 2]
        bigFactors = map (intDiv n) smallFactors

mapInd :: (a -> Int -> b) -> [a] -> [b]
mapInd f l = zipWith f l [0..]

sieve :: Int -> Int -> [Bool]
sieve m n = map (\x -> x == n || mod x n /= 0) [2..m]

getPrimesUpTo :: Int -> [Bool]
getPrimesUpTo n = [False, False, True] ++ map and (transpose sieves)
  where root = intSqrt n
        sieves = map (\x -> sieve n x) [3, 5 ..root]