
module Enumerable
	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end

	def my_each_with_index
		i = 0
		while i < self.length
			yield(self[i], i)
			i += 1
		end
		self
	end

	def my_select
		result = []
		self.my_each do |x|
			check = yield(x)
			if check
				result.push(x)
			end
		end
		result
	end

	def my_all?
		self.my_each do |x|
			checker = yield(x)
			unless checker
				return false
			end
			true
		end
	end

	def my_none?
		self.my_each do |x|
			checker = yield(x)
			if checker
				return false
			end
			true
		end
	end

	def my_count
		count = 0
		self.my_each do |x|
			checker = yield(x)
			if checker
				count += 1
			end
		end
		count
	end

	def my_map(*proc)
		result = []
		self.my_each do |x|
			if proc.length > 0
				result.push(proc[0].call(x))
			else
				result.push(yield(x))
			end
		end
		result
	end

	def my_inject
		accum = self[0]
		self.my_each_with_index do |x, index|
			if index > 0
				accum = yield(accum,x)
			end
		end
		accum
	end
end

class Array
	def multiply_els(array)
		array.my_inject {|prod, x| prod * x}
	end
end
array = [1, 2, 5 ,7, 3]

