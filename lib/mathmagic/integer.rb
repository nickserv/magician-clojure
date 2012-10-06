class Integer

	def factorial
		(1..self).inject { |result, n| result * n }
	end

end
