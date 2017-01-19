dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dict)
	d = Hash.new(0)
	dict.each { |word| 
		d[word] = 0
	}
	array = input.split(" ")
	array.each { |sample|
		dict.each { |word|
			if sample.include? word
				d[word] += 1
			end
		}
	}
	d = d.sort_by {|a, b| b}
	d.reverse!
	d.each { |word, frequency| 
		if frequency > 0
			puts word + " " + frequency.to_s
		end
	}
end

substrings("Howdy partner, sit down! How's it going?", dictionary)






	#words = input.split(" ")
	#frequencies = Hash.new(0)
	#words.each { |word| 
	#	frequencies[word] += 1
	#}
	#frequencies = frequencies.sort_by {|a, b| b}
	#frequencies.reverse!
	#frequencies.each { |word, frequency| puts word + " " + frequency.to_s}