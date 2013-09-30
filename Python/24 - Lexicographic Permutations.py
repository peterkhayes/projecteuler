#This is a solution for Project Euler problem 24.

#import itertools

#digits = ['0','1','2','3','4','5','6','7','8','9']
#permutations = list(itertools.permutations(digits))

#print ''.join(permutations[999999])


# Here's a second solution without stealing the itertools

from operator import add

def getPermutations(elements):
    if len(elements)<=1:
        yield elements
    else:
        for perm in getPermutations(elements[1:]):
            for i in range(len(elements)):
                yield perm[:i] + elements[0:1] + perm[i:]
index = 0

for k in getPermutations([0,1,2,3,4,5,6,7,8,9]):
    index += 1
    if index == 1000000:
        print ''.join(str(k))
        break
