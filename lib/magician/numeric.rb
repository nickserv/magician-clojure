# Magician's extensions to the Numeric class (affects Integers and Floats).
class Numeric

	# Performs self.to_s[selection].to_i on the number. Note that for floats, the
	# decimal counts as a digit within the string.
	# TODO: Let this intelligently convert back to an Integer or Float.
	#
	# @param [Range] selection the selection/range to get from the number (you can
	# use anything that works with the [] syntax)
	#
	# @return [Integer] substring of the number (using []), converted to an
	# Integer
	def digits selection
		self.to_s[selection].to_i
	end

end
