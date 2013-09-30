# Project Euler, problem 25.

import math

past = 0
current = 1
index = 1

while math.log(current,10) < 999:
    past, current = current, past+current
    index += 1

print index
