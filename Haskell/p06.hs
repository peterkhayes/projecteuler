sumOfSquares :: Integer -> Integer
sumOfSquares n = sum $ map (^2) [1..n]

squareOfSum :: Integer -> Integer
squareOfSum n = (sum [1..n])^2

answer = squareOfSum 100 - sumOfSquares 100