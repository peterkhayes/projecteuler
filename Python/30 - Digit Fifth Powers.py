# Solution to Project Euler problem 30.

sincelast = 0
answer = 0
current = 1

while sincelast < 1000000:
    current += 1
    string = str(current)
    digitsum = 0
    for c in string:
        digitsum += int(c)**5
    if digitsum == current:
        print current,
        print " equals ",
        for c in string:
            print c + "^5 ",
        answer += current
        print ""
        sincelast = 0
    else: sincelast += 1

print answer
