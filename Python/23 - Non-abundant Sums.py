# This is an attempt at solving Project Euler problem 23.

import math

def isAbundant(num):
    sum = 0
    if num < 12: return False
    else:
        for x in range(2,int(math.sqrt(num))+ 1):
            if num % x == 0:
                sum += x + num/x
        if num == int(math.sqrt(num))**2: sum -= int(math.sqrt(num))
        return sum + 1 > num

#Let's make a list of abundant numbers.

abundantNumbers = []
for x in range(1,28123):
    if isAbundant(x): abundantNumbers.append(x)

count = 0

for x in range(1,28124):
    cantBeWritten = True
    for y in abundantNumbers:
        if isAbundant(x-y):
            cantBeWritten = False
            break
        elif y >= x: break
    if cantBeWritten: count += x

print count

    
