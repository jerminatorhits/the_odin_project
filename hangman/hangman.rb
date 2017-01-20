require 'set'


def answer_generator
  word_bank = File.open("5desk.txt", "r")
  storage = []
  word_bank.each_line do |line|
	line = line.chomp
	if line.length >= 5 && line.length <= 12
	  storage.push(line)
	end
  end
  word_bank.close
  storage.sample.downcase.split("")
end

def valid_guess?(guess)
  while guess.length > 1 || guess !~ /[[:alpha:]]/ || @banked_right.include?(guess) || @banked_wrong.include?(guess)
  	puts
  	if guess.length > 1 || guess !~ /[[:alpha:]]/
  	  puts "Invalid input. Enter 1 letter as your guess.\n\n"
    elsif @banked_right.include?(guess) || @banked_wrong.include?(guess)
      puts "You've already guessed that letter.\n\n"
    elsif 
      puts "Invalid input.\n\n"
    end
  	print "Guess again: "
  	guess = gets.chomp.downcase
  	puts
  end
  guess
end




def display(current_state)
  print 
  print current_state.join(" ").center(33)
  print "Lives Remaining: #{@lives}"
  puts
  puts
  #sleep(3.0/2.0)
  if @lives > 7
  	puts   "            ".center(33) 
    puts   "            ".center(33)     
    puts   "            ".center(33)
    puts   "            ".center(33)
    puts   "            ".center(33)
  	print  "            ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  elsif @lives > 6
    puts   "            ".center(33) 
    puts   "  |         ".center(33)  
    puts   "  |         ".center(33)
    puts   "  |         ".center(33)
    puts   "  |         ".center(33) 
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  elsif @lives > 5
  	puts   "   _____    ".center(33)
    puts   "  |     |   ".center(33)    
    puts   "  |         ".center(33)
    puts   "  |         ".center(33)
    puts   "  |         ".center(33)
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  elsif @lives > 4
  	puts   "   _____    ".center(33)
    puts   "  |     |   ".center(33)    
    puts   "  |     O   ".center(33)
    puts   "  |         ".center(33)
    puts   "  |         ".center(33)
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  elsif @lives > 3
  	puts   "   _____    ".center(33)
    puts   "  |     |   ".center(33)    
    puts   "  |     O   ".center(33)
    puts   "  |     |   ".center(33)
    puts   "  |         ".center(33)
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  elsif @lives > 2
  	puts   "   _____    ".center(33)
    puts   "  |     |   ".center(33)    
    puts   "  |     O   ".center(33)
    puts   "  |     |-  ".center(33)
    puts   "  |         ".center(33)
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  elsif @lives > 1
  	puts   "   _____    ".center(33)
    puts   "  |     |   ".center(33)    
    puts   "  |     O   ".center(33)
    puts   "  |    -|-  ".center(33)
    puts   "  |         ".center(33)
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  elsif @lives > 0            
  	puts   "   _____    ".center(33)
    puts   "  |     |   ".center(33)    
    puts   "  |     O   ".center(33)
    puts   "  |    -|-  ".center(33)
    puts   "  |    /    ".center(33)
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  else           
  	puts   "   _____    ".center(33)
    puts   "  |     |   ".center(33)    
    puts   "  |     O   ".center(33)
    puts   "  |    -|-  ".center(33)
    puts   "  |    / \\  ".center(33)
  	print  "__|__       ".center(33)
  	print  "Wrong letters: "
  	@banked_wrong.each { |x| print "#{x} "}
  end
  puts "\n\n\n"
  if @correct == true
    print "Good one Artosis! Keep guessing!\n\n"
  elsif @correct == false
  	print "OHHH Scruffy got it wrong.\n\n"
  end
end


answer = answer_generator

current_state = []
answer.each_index do |x| 
  current_state[x] = "_"
end

@lives = 8
solved = false
@correct = nil

@banked_wrong = Set.new
@banked_right = Set.new

puts "\nWelcome to Hangman! Try to guess the word one letter at a time! You have 8 lives.\n\n"
sleep(5.0/2.0)
display(current_state)
sleep(1.0/5.0)
while @lives > 0 && !solved
  print "Your Guess: "
  current_guess = valid_guess?(gets.chomp.downcase)
  sleep(1.0/2.0)
  puts
  if answer.include? current_guess
    answer.each_index do |x|
    	if answer[x] == current_guess
    		current_state[x] = answer[x]
    	end
    end
    @correct = true
    @banked_right.add(current_guess)  
  else
  	@correct = false
    @banked_wrong.add(current_guess)
  	@lives -= 1
  end
  display(current_state)
  if current_state == answer
    solved = true
  end
end

if solved
  puts "Congratulations! You Won!\n\n"
else
  puts "Sorry your ran out of lives. The answer was #{answer.join("")}. Better luck next time.\n\n"
end












