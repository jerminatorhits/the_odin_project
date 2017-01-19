class Die

  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def cheat number
  	if(number >= 1 && number <=6)
  		@numberShowing = number
  	else
  		print "Hey! Pick a number from 1-6!"
  	end
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

d = Die.new
puts d.showing
puts d.cheat(7)
puts d.cheat(6)
d.roll
puts d.showing
d.roll
puts d.showing