#Project Euler problem 40.

def champernowne(last):
    answer = ""
    for c in range(last):
        answer += str(c)
    return answer

champ = champernowne(200000)
answer = 1
for c in range(6):
    answer *= int(champ[10**c])

print answer
