# Magician's extensions to the Random class.
class Random

  # For all the instance methods defined below, add a class method which invokes
  # the instance method on DEFAULT.
  [:boolean, :coin, :die].each do |name|
    define_singleton_method(name) { DEFAULT.send name }
  end

  def boolean
    [true, false].sample
  end

  def coin
    ['heads', 'tails'].sample
  end

  def die
    rand 1..6
  end

end
