# Magician's extensions to the String class.
class String

	# Returns true if the string is a palindrome (meaning it is the same forward
	# and backward).
	#
	# @return [Boolean] true if the string is a palindrome
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
