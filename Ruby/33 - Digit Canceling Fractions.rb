$AAAA = 0

matches = []

def ok?(ab, cd, p, q)
	if ab > 9 && cd > 9 && ab != cd && ab < cd
	 	if Rational(ab, cd) == Rational(p, q) then return true end
	else
		return false
	end
end

1.upto(9) do |p|
	1.upto(9) do |q|
		0.upto(9) do |a|
			ap = (a.to_s + p.to_s).to_i
			pa = (p.to_s + a.to_s).to_i
			aq = (a.to_s + q.to_s).to_i
			qa = (q.to_s + a.to_s).to_i

			if ok?(ap, qa, p, q) then matches << [ap, qa] end
			if ok?(pa, aq, p, q) then matches << [pa, aq] end
		end
	end
end

answer = Rational(1,1)
matches.each {|a,b| answer = answer * Rational(a,b)}
puts answer.denominator