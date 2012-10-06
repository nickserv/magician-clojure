class Array

	def sum
		inject { |sum, n| sum + n }
	end

	def range
		max - min
	end

	def mean
		sum.to_f / size
	end

	def median
		sorted = sort
		if sorted.length.odd?
			self[length/2]
		else
			(self[length/2-1] + self[length/2]) / 2.0
		end
	end

	def occurences
		occurences = {}
		self.each { |item| occurences[item] = 0 }
		self.each { |item| occurences[item] += 1 }
		occurences
	end

	alias :average :mean

end

class Integer

	def factorial
		(1..self).inject { |result, n| result * n }
	end

end

PI = Math::PI
E = Math::E
