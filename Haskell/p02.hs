fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
evenFibs = filter even fibs
answer = sum $ takeWhile (<4000000) evenFibs