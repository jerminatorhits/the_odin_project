
puts "Type in many words as you want until you press 'Enter' on an empty line"
name = gets.chomp
array = []
while (name.length != 0)
	array.push(name)
	name = gets.chomp
end

place = []
index = -1
q = array.length
q.times do
	max = 'A'
	array.each do |s|
		if (s >= max)
			max = s
		end
	end
	place.push(array.delete(max))
end
place.each do |r|
	puts r
end
