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

  # Performs to_s[selection].to_i on the number. Note that for floats, the
  # decimal counts as a digit within the string.
  #
  # @param [Range] selection the selection/range to get from the number (you can
  #   use anything that works with the [] syntax)
  #
  # @return [Integer] substring of the number (using []), converted to an
  #   Integer
  #
  # @deprecated Avoid using this any more. It's inaccurate and not very useful.
  def digits selection
    to_s[selection].to_i
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
