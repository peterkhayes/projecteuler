# Project Euler problem 26.

from decimal import *

getcontext().prec = 2000

maxindex = 0
maxd = 0
array = []

for d in range(2,1001):
    dec = Decimal(1)/Decimal(d)
    string = str(dec)
    array.append(string[2:])

bestreplength = 0

for numstring in array:
    replength = 0
    for startingdigit in range(min(10,len(numstring))):
        for period in range(2,min(800,len(numstring))):
            string1 = numstring[startingdigit:period+startingdigit]
            string2 = numstring[startingdigit+period:2*period+startingdigit]
            string3 = numstring[startingdigit+period*2:3*period+startingdigit]
            if string1 == string2 and string1 == string3:
                if period > replength:
                    replength = period
                break
    if replength > bestreplength:
        bestreplength = replength
        string = "0." + str(numstring)
        decimal = Decimal(string)
        print 1/decimal
            
                               
                
                    

                
