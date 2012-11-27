# Magician's extensions to the Array class.
class Array

	def sum
		inject(:+)
	end

	def multiply
		inject(:*)
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

	def mode
		occ = occurences
		max_occ = occ.values.max
		occ.select { |key, value| value == max_occ }.keys
	end

	def occurences
		occurences = {}
		self.each { |item| occurences[item] = 0 }
		self.each { |item| occurences[item] += 1 }
		occurences
	end

	alias :average :mean

end
