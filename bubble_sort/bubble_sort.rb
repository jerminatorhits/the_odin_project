def bubble_sort(array)
	count = 1
	while count > 0
	count = 0
		for x in (0..array.length-2) do
			if array[x] > array[x+1]
				temp = array[x+1]
				array[x+1] = array[x]
				array[x] = temp
				count += 1
			end
		end
	end
	p array
end

def bubble_sort_by(block)
	count = 1
	while count > 0
	count = 0
		for x in (0..array.length-2) do
			block[]
		if block > 0
			cou
	end
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end