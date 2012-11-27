class String

	def palindrome?
		if self.length == 0
			return true
		elsif self.length == 1
			return true
		else
			if self[0] == self[-1]
				return self[1..-2].palindrome?
			else
				return false
			end
		end
	end

end
