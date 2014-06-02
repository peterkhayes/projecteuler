isPalindrome :: (Show a) => a -> Bool
isPalindrome input = (show input) == (reverse $ show input)

threeDigitProducts = [x*y | x <- [100..999], y <- [x..999]]

answer = maximum $ filter isPalindrome threeDigitProducts