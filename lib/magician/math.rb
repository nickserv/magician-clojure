# Magician's extensions to the Math module.
module Math

	# If we don't do this, our new methods won't get added onto Math.
	extend self

	# Solves a quadratic formula of the form "ax^2+bx+c=0" for x, where a is not
	# 0. It asks for the three coefficients of the function (a, b, and c), and
	# returns the two possible values for x.
	#
	# @param [Numeric] a the first coefficient (must not be 0)
	# @param [Numeric] b the second coefficient
	# @param [Numeric] c the third coefficient
	#
	# @return [Array] a sorted array of two Floats, the two possible values for x
	def quadratic(a, b, c)
		return nil if a.zero?
		left = -b
		right = Math.sqrt(b**2 - 4*a*c)
		bottom = 2*a
		[ (left+right)/bottom, (left-right)/bottom ].sort
	end

	# The number of size k ordered subsets of a set of size n. Equivalent to
	# n!/(n-k)!. Returns nil if either is negative, or if n < k.
	#
	# @param [Integer] n the size of the set to pick from
	# @param [Integer] k the size of the ordered subsets
	#
	# @return [Integer] the number of permutations
	def permutations(n, k)
		return nil if n < 0 or k < 0 or n < k
		return n.factorial / (n-k).factorial
	end

	# The number of size k unordered subsets of a set of size n. Equivalent to
	# n!/(k!(n-k)!). Returns nil if either is negative, or if n < k.
	#
	# @param [Integer] n the size of the set to pick from
	# @param [Integer] k the size of the unordered subsets
	#
	# @return [Integer] the number of combinations
	def combinations(n, k)
		return nil if n < 0 or k < 0 or n < k
		return n.factorial / (k.factorial * (n-k).factorial)
	end

	# Get the number of steps it takes to get from integer n to 1 using the
	# Collatz Conjecture (set http://en.wikipedia.org/wiki/Collatz_conjecture).
	#
	# @param [Integer] n the number to put into the Collatz Conjecture initially
	# @param [Integer] depth the number of steps that have passed so far (should
	# not be modified unless this is being cached carefully)
	#
	# @return [Integer] the number of steps it takes to get from integer n to 1
	# using the Collatz Conjecture (the depth)
	def collatz(n, depth=0)
		return nil if n < 1
		if n == 1
			return depth
		elsif n % 2 == 0
			depth += 1
			return collatz(n/2, depth)
		else
			depth += 1
			return collatz(3*n + 1, depth)
		end
	end

	# Using the Pythagorean theorem, gets c (the length of the hypotenuse) when a
	# and b (the lengths of the other sides of a triangle) are given.
	#
	# @param [Numeric] a the length of the first side of the triangle
	# @param [Numeric] b the length of the second side of the triangle
	#
	# @return [Numeric] the length of the hypotenuse of the triangle
	def hypotenuse(a, b)
		Math.sqrt(a**2 + b**2)
	end

	# Returns true if the three given numbers are positive integers that form a
	# Pythagorean triplet (that is, if a^2+b^2=c^2). C must be the last parameter.
	#
	# @param [Integer] a the length of the first side of the triangle
	# @param [Integer] b the length of the second side of the triangle
	# @param [Integer] c the length of the hypotenuse of the triangle
	#
	# @return [Boolean] true if the three numbers form a Pythagorean triplet
	def triplet?(a, b, c)
		[a,b,c].each do |n|
			return nil unless n.class == Integer
			return nil if n < 0
		end
		a**2 + b**2 == c**2
	end

	# Calculates a series of Fibonacci numbers of a specified length. Returns nil
	# if a negative length is given.
	#
	# @param [Integer] length the length of the Fibonacci series that should be
	# returned
	#
	# @return [Array] a Fibonacci series of Integers with the specified length
	# (ordered)
	def fibs length
		return nil if length < 0
		terms = []
		until terms.length == length do
			at_beginning = [0,1].include? terms.length
			terms << ( at_beginning ? 1 : terms[-2] + terms[-1] )
		end
		terms
	end

end
