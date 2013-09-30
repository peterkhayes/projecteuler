#Project Euler Problem 48.


def powersum(n):
    total = 0
    for x in range(1,n+1):
        c = 1
        for y in range(1,x+1):
            c *= x
            c = c % 10000000000
        total += c
    return total


print powersum(1000) % 10000000000
        
