# Solution to Project Euler problem 28.

total = 1
num = 1

for index in range(2,1001,2):
    for reps in range(4):   
        num += index
        total += num
   

print total
