sum = 2
num1 = 1
num2 = 2
fib = 1
while fib<=4000000 do
	fib = num1 + num2
	if fib % 2 == 0
		sum += fib
	end
	temp = num2
	num2 = num2 + num1
	num1 = temp
end

puts sum.to_s