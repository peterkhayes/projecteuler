# Problem 45 - Finding a number that is at once triangular, pentagonal, and hexagonal.


tri_idx = 3
pent_idx = 3
hex_idx = 3

found = 0

while found < 2
	tri = (tri_idx**2 + tri_idx)/2
	pent = pent_idx*(3*pent_idx - 1)/2
	hex = hex_idx*(2*hex_idx - 1)

	if tri == pent && tri == hex
		puts(tri)
		tri_idx += 1
		pent_idx += 1
		hex_idx += 1
		found += 1
	elsif tri <= pent && tri <= hex
		tri_idx += 1
	elsif pent <= tri && pent <= hex
		pent_idx += 1
	else
		hex_idx += 1
	end
end