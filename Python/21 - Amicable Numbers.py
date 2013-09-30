# This is an attempt at a solution for Project Euler problem 21.
import math

def sumoffactors(num):
    sum = 0
    for x in range(2,int(math.sqrt(num))+ 1):
        if num % x == 0:
            sum += x + num/x
    if num == int(math.sqrt(num))**2: sum -= int(math.sqrt(num))
    return sum + 1

matchedlist = {1: 0}
for number in range(2,40000):
    matchedlist[number] = sumoffactors(number)

print "Finished the Dictionary!"

count = 0

for test in range(2,10000):
    pair = matchedlist[test]
    if matchedlist[pair] == test and pair != test:
        count += test + pair
        print str(test) + " and " + str(pair) + " are amicable pairs."

    
print count/2
    
