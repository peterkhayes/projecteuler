# Project Euler Problem 29.

allnumbers = set()

for a in range(2,101):
    for b in range(2,101):
        allnumbers.add(a**b)
        allnumbers.add(b**a)

print len(allnumbers)
