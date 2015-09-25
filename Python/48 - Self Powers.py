#Project Euler Problem 48.

n = 0
sol = pow(10, 10)
for x in xrange(1, 1001):
    n = n + pow(x, x,sol)
print n % sol
        
