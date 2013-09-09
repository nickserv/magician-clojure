# Magician's extensions to the Integer class.
class Integer

  # Gets all of the factors of the current integer. If the current integer is
  # negative, it will be treated as if it were positive (so the results will
  # never contain negative integers).
  #
  # @return [Array] an array of all of the factors of the current integer (in
  #   order, including 1 and the integer itself)
  #
  # @raise [ArgumentError] if the integer is 0, since 0 has infinite factors
  def factors
    raise ArgumentError, '0 has infinite factors, so the Array of its factors cannot be computed in finite time' if zero?

    1.upto(abs/2).select { |i| abs % i == 0 } << abs
  end

  # Gets the factorial of the integer, which is equivalent to the product of all
  # integers from 1 to the integer (inclusive). When the integer is 0, it is
  # equivalent to 1.
  #
  # @return [Integer] factorial of the integer
  def factorial
    return 1 if zero?

    downto(1).reduce :*
  end

  # Returns true if the integer is prime (that is, if it is not divisible by any
  # integer between 1 and the integer itself, exclusive). 0 and 1 are not prime
  # numbers, though 2 is prime. Negative numbers are never considered prime in
  # this implementation.
  #
  # @return [Boolean] true if the integer is prime
  def prime?
    return false if self <= 1

    not 2.upto(Math.sqrt self).any? { |i| modulo(i) == 0 }
  end

  # Returns true if the integer is pandigital. That is, the integer contains
  # each of the digits from 1 to 9 exactly once.
  #
  # @return [Boolean] true if the integer is pandigital
  def pandigital?
    to_s.split(//).sort.join == '123456789'
  end

end
