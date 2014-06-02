intSqrt :: Integer -> Integer
intSqrt n = floor $ sqrt $ fromIntegral n

rangeUpToRoot :: Integer -> [Integer]
rangeUpToRoot n = [1..root]
  where root = intSqrt n

isSquare :: Integer -> Bool
isSquare n = (intSqrt n)^2 == n

smallFactors :: Integer -> [Integer]
smallFactors n = filter p (rangeUpToRoot n)
  where p = (\x -> mod n x == 0)

factorCount :: Integer -> Int
factorCount n = 2 * (length $ smallFactors n) - squareCorrection
  where squareCorrection = if isSquare n then 1 else 0

triNums = [(n, factorCount $ (n*(n+1)) `div` 2) | n <- [1..]]

answer = p * (p+1) `div` 2
  where p = fst $ head $ filter (\t -> snd t > 500) triNums
