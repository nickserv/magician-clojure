# Magician's extensions to the Integer class.
class Integer

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
