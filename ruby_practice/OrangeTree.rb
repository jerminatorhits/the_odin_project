class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@oranges = 0

	def height
		puts "The current height is " + @height.to_s + " feet tall."
		@height
	end

	def oneYearPasses
		@oranges = 0
		@age += 1
		@height += 1
		if(@age >= 5)
			@oranges = @age + 3
		end
		if(@age > 14)
			puts "Your tree got too old and died :( Bye Bye!"
			exit
			end
		end
	end

	def countTheOranges
		puts "The tree has " + @oranges.to_s + " oranges!"
	end

	def pickAnOrange
		if @oranges > 0
			@oranges -= 1
			puts "Yum! That orange was delicious!"
		else
			puts "There are no more oranges to pick this year"
		end
	end
end

groot = OrangeTree.new
groot.height
groot.oneYearPasses
groot.height
groot.oneYearPasses
groot.oneYearPasses
groot.countTheOranges
groot.pickAnOrange
groot.oneYearPasses
groot.oneYearPasses
groot.countTheOranges
groot.pickAnOrange
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.countTheOranges
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.pickAnOrange
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses
groot.oneYearPasses