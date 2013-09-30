# An attempt to solve Project Euler problem 11.

data = open( "data.txt" );

x = []
for line in data.readlines():
    y = [int(value) for value in line.split()]
    x.append( y )

data.close()

maxmult = 0

for a in range(len(x) - 3):
    for b in range(3,len(x[0])):
        #print str(a) + ',' + str(b) + "  ",
        c = x[a][b]*x[a+1][b-1]*x[a+2][b-2]*x[a+3][b-3]
        #print c
        if c > maxmult:
            maxmult = c
            #print "!!!"
        #print ""

for a in range(len(x)-3):
    for b in range(len(x[0])-3):
        #print str(a) + ',' + str(b) + "  ",
        c = x[a][b]*x[a+1][b]*x[a+2][b]*x[a+3][b]
        d = x[a][b]*x[a][b+1]*x[a][b+2]*x[a][b+3]
        e = x[a][b]*x[a+1][b+1]*x[a+2][b+2]*x[a+3][b+3]
        #print c,
        #print ",",
        #print d,
        #print ",",
        #print e,
        if c > maxmult:
            maxmult = c
            #print "!!!"
            #print "The numbers: " + str(x[a][b]) + ", " + str(x[a+1][b]) + ", " + str(x[a+2][b]) + ", " + str(x[a+3][b]) + " starting from: " + str(a) + "," + str(b)
        if d > maxmult:
            maxmult = d
            #print "!!!"
        if e > maxmult:
            maxmult = e
            #print "!!!"
        #print ""


print maxmult   
