# Magician's extensions to the Integer class.
class Integer


  # Returns true if the integer is pandigital. That is, the integer contains
  # each of the digits from 1 to 9 exactly once.
  #
  # @return [Boolean] true if the integer is pandigital
  def pandigital?
    to_s.split(//).sort.join == '123456789'
  end

end
