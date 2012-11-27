# Magician's extensions to the Numeric class (affects Integers and Floats).
class Numeric

	def digits selection
		self.to_s[selection].to_i
	end

end
