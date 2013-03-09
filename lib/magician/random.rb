# Magician's extensions to the Random class.
class Random

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
