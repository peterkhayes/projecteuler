# Project Euler Problem 31.

def countways(n):
    total = 0
    for onepound in range(0,n+1,100):
        for fifty in range(0,n+1-onepound,50):
            for twenty in range(0,n+1-onepound-fifty,20):
                for ten in range(0,n+1-onepound-fifty-twenty,10):
                    for five in range(0,n+1-onepound-fifty-twenty-ten,5):
                        for two in range(0,n+1-onepound-fifty-twenty-ten-five,2):
                            for one in range(n+1-onepound-fifty-twenty-ten-five-two):
                                if onepound+fifty+twenty+ten+five+two+one == n:
                                    total += 1

    return total

print countways(200)
