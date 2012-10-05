class Array

	def sum
		return inject { |sum, n| sum + n }
	end

	def mean
		return sum.to_f/size
	end

	alias :average :mean

end
