# Solution to Project Euler problem 18.

data = open ( "problem18.txt" )

triangle = []
for read in data.readlines():
    line = [int(value) for value in read.split()]
    triangle.append(line)

data.close()

triangle.reverse()

print triangle[0]
for row in range(1,14):
    print triangle[row],
    for index in range(len(triangle[row])):
        triangle[row][index] += max(triangle[row-1][index], triangle[row-1][index+1])
    print " changed to ",
    print triangle[row]

triangle[14][0] += max(triangle[13][0],triangle[13][1])

print triangle[14][0]
    
