triples = []
1.upto(1000) do |m|
	1.upto(1000/m + 1) do |n|
		if (m - n) % 2 == 1 && m.gcd(n) == 1
			a = m**2 - n**2
			b = 2*m*n
			c = m**2 + n**2
			d, e, f = a, b, c
			while a + b + c < 1001
				triples << [a,b,c]
				a += d; b += e; c += f
			end
		end
	end
end

scores = Array.new(2000, 0)
triples.each do |a, b, c|
	scores[a + b + c] += 1
end

puts scores.index(scores.max)