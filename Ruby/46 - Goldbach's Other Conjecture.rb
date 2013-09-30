# Problem number 46: Goldbach's other conjecture.

def prime?(num)
	return true if num == 2

	for i in (2..num**(0.5))
		return false if num % i == 0
	end
	return true
end

def twice_a_square?(num)
	return false if num % 2 == 1
	root = ((num/2)**(0.5)).to_int
	return true if 2*(root**2) == num
	false
end

def goldbach2_test(num)
	for i in (2..(num-1))
		if prime?(i)
			r = (num - i)
			if twice_a_square?(r)
				return true
			end
		end
	end
	return false
end

idx = 3
while true
	if !prime?(idx)
		break if !goldbach2_test(idx)
	end
	idx += 2
end
puts idx