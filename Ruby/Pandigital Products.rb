array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
permutations = array.permutation()

list = []

permutations.each do |p|
	for a in (0..4)
		for b in (a+1..5)
			str1, str2, str3 = "", "", ""
			for i in (0..a)
				str1 += p[i]
			end
			for i in (a+1..b)
				str2 += p[i]
			end
			for i in (b+1..8)
				str3 += p[i]
			end
			num1, num2, num3 = str1.to_i, str2.to_i, str3.to_i
			if num1*num2 == num3 && !list.include?(num3)
				list << num3
			end
		end
	end
end

total = 0
list.each do |i|
	total += i
end

puts(total)