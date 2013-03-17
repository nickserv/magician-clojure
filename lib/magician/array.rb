# Magician's extensions to the Array class.
class Array

  # Returns all numbers from the array, in order. This is done by choosing all
  # objects from the array that are instances of Numeric or one of its
  # subclasses.
  #
  # @return [Array] a new array containing only Numerics
  def numerics
    select { |item| item.class <= Numeric }
  end

  # Gets the sum of the array elements. The sum of an empty array is 0. The
  # array must only contain Numerics or a RuntimeError will be raised.
  #
  # @return [Numeric] the sum of the elements of the array
  #
  # @raise [RuntimeError] if the Array contains non-Numeric objects
  def sum
    require_numerics

    empty? ? 0 : reduce(:+)
  end

  # Gets the product of the array elements. The product of an empty array is 1.
  # The array must only contain Numerics or a RuntimeError will be raised.
  #
  # @return [Numeric] the product of the elements of the array
  #
  # @raise [RuntimeError] if the Array contains non-Numeric objects
  def product
    require_numerics

    empty? ? 1 : reduce(:*)
  end

  # Finds the middle element of the array. If the array has an even number of
  # elements, the middle two elements will be averaged. The middle of an empty
  # array is nil. The array must only contain Numerics or a RuntimeError will be
  # raised.
  #
  # @return [Numeric, nil] the middle of the elements of the array
  #
  # @raise [RuntimeError] if the Array contains non-Numeric objects
  def middle
    require_numerics
    return nil if empty?

    middle_index = length / 2
    length.odd? ? slice(middle_index) : [slice(middle_index-1), slice(middle_index)].mean
  end

  # Gets the range of the elements of the array (maximum - minimum). The range
  # of an empty array is nil. The array must only contain Numerics or a
  # RuntimeError will be raised.
  #
  # @return [Numeric, nil] the range of the elements of the array
  #
  # @raise [RuntimeError] if the Array contains non-Numeric objects
  def range
    require_numerics

    empty? ? nil : max - min
  end

  # Gets the mean (average) of the elements of the array. The mean of an empty
  # array is nil. The array must only contain Numerics or a RuntimeError will be
  # raised.
  #
  # @return [Float, nil] the mean (average) of the elements of the array
  #
  # @raise [RuntimeError] if the Array contains non-Numeric objects
  def mean
    require_numerics

    empty? ? nil : sum.to_f / length
  end

  # Sorts the array and finds the element in the middle. The exact same
  # functionality can be achieved by sorting the array and then running the
  # middle method on it. The array must only contain Numerics or a RuntimeError
  # will be raised.
  #
  # @see middle
  #
  # @return [Numeric, nil] the median of the elements of the array
  #
  # @raise [RuntimeError] if the Array contains non-Numeric objects
  def median
    require_numerics

    sort.middle
  end

  # Gets the mode(s) of the items in the array (the item(s) that occur(s) most
  # frequently). The mode of an empty array is nil.
  #
  # @return [Array, nil] an array of all of the items in the array that occur
  #   the most frequently (they must all have the same number of occurrences)
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
  #   array
  def occurences
    occurences = Hash.new 0
    each { |item| occurences[item] += 1 }
    occurences
  end

  # Alias average to mean.
  alias :average :mean

  private

  # Requires that all objects in the Array are instances of Numeric (or one of
  # its subclasses), and raises an error if they are not.
  #
  # @raise [RuntimeError] if the Array contains non-Numeric objects
  def require_numerics
    unless all? { |item| item.class <= Numeric }
      calling_method = caller[0][/`.*'/][1..-2]
      raise RuntimeError, "Array##{calling_method} requires that the Array only contains Numeric objects."
    end
  end

end
