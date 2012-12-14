# Magician's extensions to the String class.
class String

	# Returns true if the string is a palindrome (meaning it is the same forward
	# and backward).
	#
	# @return [Boolean] true if the string is a palindrome
	def palindrome?
		self == reverse
	end

	def letter_score
		sum = 0
		downcase.each_char do |c|
			sum += c.ord - 96 #index of 'a' in ascii - 1, so our indexes start at 0
		end
		sum
	end

end
