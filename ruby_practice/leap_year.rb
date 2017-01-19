puts "Gimme start year and end year and I will tell you if it is a leap year."
puts "First, gimme a start year:"
year = gets.chomp.to_i
puts "Next, gimme an end year:"
end_year = gets.chomp.to_i
while (year <= end_year)
if ((year % 400) == 0)
	puts year.to_s + " is a leap year!"
else
	if ((year % 100) == 0)
	#puts year.to_s + " is NOT a leap year"
	else
		if ((year % 4) == 0)
			puts year.to_s + " is a leap year"
		else
			#puts year.to_s + " is NOT a leap year"
		end
	end
end
	year = year + 1
end
