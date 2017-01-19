
def chime &block

	if Time.now.hour == 0
		@ch = 12
	elsif Time.now.hour < 13 && Time.now.hour > 0
		@ch = Time.now.hour
	else
		@ch = Time.now.hour - 12
	end

	@ch.times do
		block.call
	end

end



chime do
	puts 'DONG!'
end