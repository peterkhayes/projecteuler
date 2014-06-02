intSqrt :: Int -> Int
intSqrt n = floor $ sqrt $ fromIntegral n

isSquare :: Int -> Bool
isSquare n = (intSqrt n)^2 == n

smallFactors :: Int -> [Int]
smallFactors n = filter p [2..(intSqrt n)]
  where p = (\x -> mod n x == 0)

factorSum :: Int -> Int
factorSum n = sum factors - squareCorrection + 1
  where root = intSqrt n
        squareCorrection = if root^2 == n then root else 0
        small = smallFactors n
        large = map (\x -> div n x) (smallFactors n)
        factors = small ++ large

amicable :: Int -> Bool
amicable n = ((factorSum $ factorSum n) == n) && (factorSum n /= n)

-- 1 is not amicable but the shortcut of not counting 1 as a factor includes it.  Hence, -1.
answer = -1 + (sum $ filter amicable [1..10000])