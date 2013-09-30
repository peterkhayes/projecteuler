# This is an attempt to solve Project Euler's problem 19.

import datetime

initialsundays = 0
for year in range(1901,2001):
    for month in range(1,13):
        if datetime.datetime(year,month,1).weekday() == 6: initialsundays += 1
print initialsundays
            
