factorial :: Integer -> Integer
factorial n = product [1..n]

nCr :: Integer -> Integer -> Integer
nCr n r = factorial n `div` (factorial r * factorial (n-r))

paths :: Integer -> Integer
paths n = nCr (n*2) n
