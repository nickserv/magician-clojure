class Integer

	def factorial
		(1..self).inject(:*)
	end

	def prime?
		for i in 2..Math.sqrt(self)
			return false if self % i == 0
		end
		return true
	end

end
