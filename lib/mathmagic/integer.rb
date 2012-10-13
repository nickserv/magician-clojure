class Integer

	def factorial
		(1..self).inject(:*)
	end

	def prime?
		return false if self == 0 or self == 1
		for i in 2..Math.sqrt(self)
			return false if self % i == 0
		end
		return true
	end

end
