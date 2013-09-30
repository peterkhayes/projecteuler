$(document).ready( ->

	nCrOverMillion = (n, r) ->
		
		# Hooray for symmetry!
		r = Math.min(r, n-r)
		
		answer = 1

		while r > 0 and answer < 1000000
			answer *= (n - r + 1)
			answer /= r
			r -= 1

		if answer < 1000000 then return false
		true

	result = 0

	for n in [1..100]
		for r in [4..n]
			if nCrOverMillion(n, r) then result += 1

	$('#answer').text(result)
)