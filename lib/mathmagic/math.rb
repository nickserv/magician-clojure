module Math

	def permutations(n, k)
		return n.factorial / (n-k).factorial
	end

	def combinations(n, k)
		return n.factorial / (k.factorial * (n-k).factorial)
	end

	def collatz(n, depth=0)
		depth += 1
		if n == 1
			return depth
		elsif n % 2 == 0
			return collatz(n/2, depth)
		else
			return collatz(3*n + 1, depth)
		end
	end

	def hypotenuse(a, b)
		Math.sqrt(a**2 + b**2)
	end

	def triplet?(a, b, c)
		a**2 + b**2 == c**2
	end

	def fibs length
		terms = []
		until terms.length == length do
			at_beginning = [0,1].include? terms.length
			terms << at_beginning ? 1 : terms[-2] + terms[-1]
		end
		terms
	end

end
