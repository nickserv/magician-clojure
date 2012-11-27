class Integer

	def factors
		#first half
		factors = []
		for i in 1..self
			if self % i == 0
				if i < self/i
					factors << i
				else break
				end
			end
		end
		#second half
		factors_old = factors.dup
		until factors_old.length == 0
			factors << self/factors_old.pop
		end
		return factors
	end

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
