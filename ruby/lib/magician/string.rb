# Magician's extensions to the String class.
class String

  # Returns true if the string is a palindrome (meaning it is the same forward
  # and backward).
  #
  # @return [Boolean] true if the string is a palindrome
  def palindrome?
    eql? reverse
  end

end
