# Problem 26 - reciprocal cycles.

def find_longest_cycle(n)
	longest_cycle = 0
	longest_n = 0

	for i in (5..n)
		r = reciprocal(i)
		#puts(r)
		if r.length > 20
			cycle_length = 5
			done = false
			while !done
				for offset in (0..10)
					if r[offset..(cycle_length+offset-1)] == r[(cycle_length+offset)..(2*cycle_length+offset-1)]
						done = true
						break
					end
				end
				cycle_length += 1
			end
			puts("cycle for #{i} is #{cycle_length}")
			if cycle_length > longest_cycle
				longest_cycle = cycle_length
				longest_n = i
				puts("it's a new record! #{i} with #{cycle_length}!")
			end
		end
	end
	return longest_n
end

def reciprocal(n)
	digits = n.to_s.length
	result = "0"*(digits-1)
	leftover = 10**digits
	while (leftover != 0 && result.length < 2000)
		goes_into = leftover/n
		result << goes_into.to_s
		leftover = (leftover - goes_into*n)*10
	end
	return result
end

#puts(reciprocal(983))
#puts(find_longest_cycle(1000))