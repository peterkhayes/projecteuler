# Solution to Project Euler problem 27.

import math

def isPrime(num):
    prime = True
    if num < 2: return False
    if num == 2: return True
    for factor in range(3,int(math.sqrt(num)),2):
        if num % factor == 0: prime = False
    return prime

def testEquation(a,b):
    n = 0
    while True:
        test = n**2 + a*n + b
        if isPrime(test): n += 1
        else: break
    return n


best = 0
besta = 0
bestb = 0
for a in range (-1000,1001):
    for b in range (-1000,1001):
        c = testEquation(a,b)
        #print "Testing n^2 + " + str(a) + "x + " + str(b) + ": result" + str(c)
        if c > best: best, besta, bestb = c, a, b

print besta*bestb
