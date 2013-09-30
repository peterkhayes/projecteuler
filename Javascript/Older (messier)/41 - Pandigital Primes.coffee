$(document).ready( ->
	
	arrayToNumber = (array) ->
		str = ""
		(str += i for i in array)
		return parseInt(str,10)

	prime = (num) ->
		if num < 2 then return false
		if num < 4 then return true
		if num % 2 == 0 or num % 3 == 0 then return false
		root = Math.sqrt(num)
		for i in [5..root]
			if num % i == 0 then return false
		true


	permute = (array) ->
		if array.length == 1 then return array

		all_perms = []
		len = array.length
		for i in [0...len]
			
			# Take an element out of the array.
			pivot = array[i]
			perm = [pivot]
			
			# Make permutations out of the rest.
			remainder = array.slice(0,i).concat(array.slice(i+1,len))
			sub_perms = permute(remainder)

			# Put all the permutations after the selected element, and push them onto the results.
			(all_perms.push(perm.concat(sub_perm)) for sub_perm in sub_perms)

		return all_perms

	result = 0
	permutations = permute([1..7])

	pandigitals = (arrayToNumber(permutation) for permutation in permutations)
	pandigitals.sort((a,b) -> return b-a)

	console.log(pandigitals)

	for num in pandigitals
		if prime(num)
			result = num
			break

	$('#answer').text(result)
)