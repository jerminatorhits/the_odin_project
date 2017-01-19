def stock_picker array
	max = array[0]
	min = array[0]
	place = array[0]
	day1 = 0
	day2 = 0
	diff = 0
	#array.each {|num|
	#	array.each {|num2|
	#		if(num1 - num > diff)
	#			diff = num2 - num
	#			day1 = array.index(num)
	#			day2 = array.index(num2)
	#		end
	#	}
	#}
	for i in (0..array.length-1)
		for j in (i..array.length-1)
			if(diff < array[j]-array[i])
				diff = array[j]-array[i]
				day1 = i
				day2 = j
			end
		end
	end

	puts "[#{day1},#{day2}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])