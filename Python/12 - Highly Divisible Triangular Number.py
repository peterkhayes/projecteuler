# This is an attempt at a solution for Project Euler's problem 12.

import math

def countfactors(num):
    factors = 0
    for x in range(1,int(math.sqrt(num))+1):
        if num % x == 0:
            factors +=2
    return factors

seed = 1

searching = True

while searching: 
    seed += 1
    if seed % 2 == 0:
        factors = countfactors(seed/2)*countfactors(seed+1)
    else:
        factors = countfactors(seed)*countfactors((seed+1)/2)
    if factors > 500: break
        

print seed*(seed+1)/2
    
