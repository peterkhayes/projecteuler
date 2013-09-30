# Project Euler problem 36 (palindromic in two bases)

def testPalindrome(string):
    for c in range(len(string)/2):
        if string[c] != string[-c-1]: return False
    return True

count = 0

for num in range(1,1000001):
    dec_str = str(num)
    bin_str = bin(num)[2:]
    if testPalindrome(dec_str) and testPalindrome(bin_str): count += num

print count

