# Project Euler problem 35 (circular primes)

import math

def isPrime(num):
    if num <= 1: return False
    if num == 2: return True
    if num % 2 == 0: return False
    for factor in range(3,int(math.sqrt(num))+1,2):
        if num % factor == 0: return False
    return True

def getRotations(number):
    numstring = str(number)
    for c in range(len(numstring)):
        yield int(numstring[c:] + numstring[:c])

count = 0

for num in range(1000001):
    rotations = [x for x in getRotations(num)]
    primerotations = [x for x in rotations if isPrime(x)]
    if len(primerotations) == len(rotations):
        count += 1

print count
    
        
