# Magician's extensions to the Integer class.
class Integer

	# Gets all of the factors of the current integer.
	#
	# @return [Array] an array of all of the factors of the current integer (in
	# order, including 1 and the integer itself)
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

	# Gets the factorial of the integer, which is equivalent to the product of all
	# integers from 1 to the integer (inclusive). When the integer is 0, it is
	# equivalent to 1.
	#
	# @return [Integer] factorial of the integer
	def factorial
		return 1 if self == 0
		(1..self).inject(:*)
	end

	# Returns true if the integer is prime (that is, if it is not divisible by any
	# integer between 1 and the integer itself, exclusive). 0 and 1 are not prime
	# numbers, though 2 is prime.
	#
	# @return [Boolean] true if the integer is prime
	def prime?
		return false if self == 0 or self == 1
		for i in 2..Math.sqrt(self)
			return false if self % i == 0
		end
		return true
	end

	# Returns true if the integer is evenly divisible by n.
	#
	# @param [Numeric] n the number the integer should be divided by
	#
	# @return [Boolean] true if the integer is evenly divisible by n
	def divisible? n
		(self % n).zero?
	end

end
