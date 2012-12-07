# Magician's extensions to the Array class.
class Array

	# Returns all numbers from the array, in order. This is done by choosing all
	# objects from the array that are instances of Numeric or one of its
	# subclasses.
	#
	# @return [Array] a new array containing only Numerics
	def numerics
		select { |item| item.class <= Numeric }
	end

	# Gets the sum of the numbers in the array. The sum of an array with no
	# numbers is 0.
	#
	# @return [Numeric] the sum of the numbers in the array
	def sum
		nums = numerics
		return 0 if nums.empty?
		nums.inject(:+)
	end

	# Gets the product of the numbers in the array. The product of an array with
	# no numbers is 1.
	#
	# @return [Numeric] the product of the numbers in the array
	def product
		nums = numerics
		return 1 if nums.empty?
		nums.inject(:*)
	end

	# Gets the range of the numbers in the array (maximum - minimum). The range of
	# an array with no numbers is nil.
	#
	# @return [Numeric] the range of the numbers in the array
	def range
		nums = numerics
		return nil if nums.empty?
		nums.max - nums.min
	end

	# Gets the mean (average) of the numbers in the array. The mean of an array
	# with no numbers is nil.
	#
	# @return [Float] the mean (average) of the numbers in the array
	def mean
		nums = numerics
		return nil if nums.empty?
		nums.sum.to_f / nums.size
	end

	# Gets the median of the numbers in the array (the value in the middle of a
	# sorted version of the array, numbers only). If the array has an even number
	# of numbers, the middle two numbers will be averaged. The median of an array
	# with no numbers is nil.
	#
	# @return [Numeric] the median of the numbers in the array
	def median
		nums = numerics
		return nil if nums.empty?
		sorted = nums.sort
		if sorted.length.odd?
			nums[nums.length/2]
		else
			(nums[nums.length/2-1] + nums[nums.length/2]) / 2.0
		end
	end

	# Gets the mode(s) of the items in the array (the item(s) that occur(s) most
	# frequently). The mode of an empty array is nil.
	#
	# @return [Array] an array of all of the items in the array that occur the
	# most frequently (they must all have the same number of occurrences)
	def mode
		return nil if empty?
		occ = occurences
		max_occ = occ.values.max
		occ.select { |key, value| value == max_occ }.keys
	end

	# Gets a hash table with the number of occurrences of each item from the
	# original array. The keys are the items from the original array, and the
	# values are integers counting the number of occurrences of the associated key
	# values.
	#
	# @return [Hash] a hash table of the occurrences of each item from the original
	# array
	def occurences
		occurences = Hash.new(0)
		each { |item| occurences[item] += 1 }
		occurences
	end

	# Alias average to mean.
	alias :average :mean

end
