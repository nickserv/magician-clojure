# Magician's extensions to the Array class.
class Array

  # Gets the sum of the array elements. The sum of an empty array is 0. The
  # array must only contain Numerics.
  #
  # @return [Numeric] the sum of the elements of the array
  def sum
    require_numerics
    return 0 if empty?
    reduce :+
  end

  # Gets the product of the array elements. The product of an empty array is 1.
  # The array must only contain Numerics.
  #
  # @return [Numeric] the product of the elements of the array
  def product
    require_numerics
    return 1 if empty?
    reduce :*
  end

  # Finds the middle element of the array. If the array has an even number of
  # elements, the middle two elements will be averaged. The middle of an empty
  # array is nil. The array must only contain Numerics.
  #
  # @return [Numeric] the middle of the elements of the array
  def middle
    require_numerics
    return nil if empty?
    middle_index = length / 2
    length.odd? ? self[middle_index] : [self[middle_index-1], self[middle_index]].mean
  end

  # Gets the range of the elements of the array (maximum - minimum). The range
  # of an empty array is nil. The array must only contain Numerics.
  #
  # @return [Numeric] the range of the elements of the array
  def range
    require_numerics
    return nil if empty?
    max - min
  end

  # Gets the mean (average) of the elements of the array. The mean of an empty
  # array is nil. The array must only contain Numerics.
  #
  # @return [Float] the mean (average) of the elements of the array
  def mean
    require_numerics
    return nil if empty?
    sum.to_f / length
  end

  # Sorts the array and finds the element in the middle. The exact same
  # functionality can be achieved by sorting the array and then running the
  # middle method on it. The array must only contain Numerics.
  #
  # @see middle
  #
  # @return [Numeric] the median of the elements of the array
  def median
    require_numerics
    sort.middle
  end

  # Gets the mode(s) of the items in the array (the item(s) that occur(s) most
  # frequently). The mode of an empty array is nil.
  #
  # @return [Array] an array of all of the items in the array that occur the
  # most frequently (they must all have the same number of occurrences)
  def mode
    return nil if empty?
    occ = occurences
    max_occ = occ.values.max
    occ.select { |key, value| value == max_occ }.keys
  end

  # Gets a hash table with the number of occurrences of each item from the
  # original array. The keys are the items from the original array, and the
  # values are integers counting the number of occurrences of the associated key
  # values.
  #
  # @return [Hash] a hash table of the occurrences of each item from the original
  # array
  def occurences
    occurences = Hash.new 0
    each { |item| occurences[item] += 1 }
    occurences
  end

  # Alias average to mean.
  alias :average :mean

  private

  # Requires that all objects in the Array are instances of Numeric (or one of
  # its subclasses), and raises a RuntimeError if they are not.
  def require_numerics
    unless all? { |item| item.class <= Numeric }
      raise RuntimeError, "Array##{caller[0][/`.*'/][1..-2]} requires that the Array only contains Numeric objects."
    end
  end

end
