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
        bigFactors = map (div n) smallFactors

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n = head $ filter isPrime (factors n)