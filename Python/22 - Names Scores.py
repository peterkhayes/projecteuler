# Solution for Project Euler problem 22.

f = open( "names.txt" )
data = f.read()
namearray = data.split(",")
namearray.sort()


scoresdictionary = {}
alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for char in range(26):
    scoresdictionary[alphabet[char]] = char+1

def namescore(name,index):
    score = 0
    for char in name:
        if char == '"': pass
        else:
            score += scoresdictionary[char]
    return score*index

    
totalscore = 0
for index in range(len(namearray)):
    totalscore += namescore(namearray[index],index+1)

print totalscore


