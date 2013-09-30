# Project Euler, problem 37 (truncating primes)

import math

count = 0
answer = 0
current = 10

def isPrime(num):
    if num <= 1: return False
    if num == 2: return True
    if num % 2 == 0: return False
    for factor in range(3,int(math.sqrt(num))+1,2):
        if num % factor == 0: return False
    return True

while count < 11:
    current += 1
    t_prime = isPrime(current)
    current_string = str(current)
    for c in range (1,len(current_string)):
        if not (isPrime(int(current_string[c:])) and isPrime(int(current_string[:c]))):
            t_prime = False
    if t_prime:
        count += 1
        answer +=current
        print "%d is truncating prime number %d!" % (current,count)

print "The total sum is %d" % answer


            
