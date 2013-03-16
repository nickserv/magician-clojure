# Magician's extensions to the Random class.
class Random

  # For all the instance methods defined below, add a class method which invokes
  # the instance method on DEFAULT.
  [:boolean, :coin, :die].each do |name|
    define_singleton_method(name) { DEFAULT.send name }
  end

  # Returns a random boolean (true or false).
  #
  # @return [Boolean] true or false
  def boolean
    [true, false].sample random: self
  end

  # Returns a random coin toss (heads or tails).
  #
  # @return [String] 'heads' or 'tails'
  def coin
    ['heads', 'tails'].sample random: self
  end

  # Returns a random die roll (from 1-6).
  #
  # @return [Fixnum] a Fixnum from 1-6
  def die
    rand 1..6
  end

end
