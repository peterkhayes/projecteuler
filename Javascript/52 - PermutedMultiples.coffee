$(document).ready( ->

	arrayEquality = (arr1, arr2) ->
		len = arr1.length
		if len != arr2.length then return false
		for i in [0...len]
			if arr1[i] != arr2[i] then return false
		return true


	compareDigits = (num1, num2) ->
		str1 = num1.toString()
		str2 = num2.toString()
		
		len = str1.length
		arr1 = []
		arr2 = []

		for i in [0...len]
			arr1.push(parseInt(str1[i],10))
			arr2.push(parseInt(str2[i],10))

		arr1.sort()
		arr2.sort()

		console.log(arr1)
		console.log(arr2)

		return arrayEquality(arr1,arr2)

	result = 0
	while true
		result += 1
		two = result*2
		three = result*3
		four = result*4
		five = result*5
		six = result*6

		if six.toString().length == result.toString().length
			if compareDigits(result, two)
				if compareDigits(result, three)
					if compareDigits(result, four)
						if compareDigits(result, five)
							if compareDigits(result, six)
								break

	$('#answer').text(result)
)