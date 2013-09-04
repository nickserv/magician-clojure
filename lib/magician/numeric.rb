# Magician's extensions to the Numeric class (affects Integers and Floats).
class Numeric

  # Returns true if the number is evenly divisible by n. If n is equal to 0, it
  # returns false, since numbers cannot be divided by 0 in real number
  # arithmetic.
  #
  # @param [Numeric] n the number that this number (self) should be divided by
  #
  # @return [Boolean] true if the number is evenly divisible by n
  def divisible? n
    n.zero? ? false : modulo(n).zero?
  end

  # Converts the number from degrees to radians and returns the result.
  #
  # @return [Numeric] the number in radians
  def to_radians
    self * Math::PI / 180
  end

  # Converts the number from radians to degrees and returns the result.
  #
  # @return [Numeric] the number in degrees
  def to_degrees
    self * 180 / Math::PI
  end

end
