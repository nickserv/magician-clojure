# Magician's extensions to the Array class.
class Array

	# Gets the sum of the numbers in the array.
	#
	# @return [Numeric] the sum of the numbers in the array
	def sum
		inject(:+)
	end

	# Gets the product of the numbers in the array.
	#
	# @return [Numeric] the product of the numbers in the array
	def multiply
		inject(:*)
	end

	# Gets the range of the numbers in the array (maximum - minimum).
	#
	# @return [Numeric] the range of the numbers in the array
	def range
		max - min
	end

	# Gets the mean (average) of the numbers in the array.
	#
	# @return [Float] the mean (average) of the numbers in the array
	def mean
		sum.to_f / size
	end

	# Gets the median of the numbers in the array (the value in the middle of a
	# sorted version of the array). If the array has an even length, the middle
	# two values are averaged.
	#
	# @return [Numeric] the median of the numbers in the array
	def median
		sorted = sort
		if sorted.length.odd?
			self[length/2]
		else
			(self[length/2-1] + self[length/2]) / 2.0
		end
	end

	# Gets the mode(s) of the items in the array (the item(s) that occur(s) most
	# frequently).
	#
	# @return [Array] an array of all of the items in the array that occur the
	# most freqeuntly (they must all have the same number of occurences)
	def mode
		occ = occurences
		max_occ = occ.values.max
		occ.select { |key, value| value == max_occ }.keys
	end

	# Gets a hash table with the number of occurences of each item from the
	# original array. The keys are the items from the original array, and the
	# values are integers counting the number of occurences of the associated key
	# values.
	#
	# @return [Hash] a hash table of the occurences of each item from the original
	# array
	def occurences
		occurences = {}
		self.each { |item| occurences[item] = 0 }
		self.each { |item| occurences[item] += 1 }
		occurences
	end

	# Alias average to mean.
	alias :average :mean

end
