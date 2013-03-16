# Magician's extensions to the Math module.
module Math

  # If we don't do this, our new methods won't get added onto Math.
  extend self

  # Solves a quadratic formula of the form "ax^2+bx+c=0" for x, where a is not
  # 0. It asks for the three coefficients of the function (a, b, and c), and
  # returns the two possible values for x. Complex number results are not
  # supported yet.
  #
  # @param [Numeric] a the first coefficient (must not be 0)
  # @param [Numeric] b the second coefficient
  # @param [Numeric] c the third coefficient
  #
  # @return [Array] a sorted array of two Floats, the two possible values for x
  #
  # @raise [ArgumentError] if a is 0
  def quadratic(a, b, c)
    raise ArgumentError, 'a cannot be zero' if a.zero?
    left = -b
    right = Math.sqrt(b**2 - 4*a*c)
    bottom = 2*a
    [ (left+right)/bottom, (left-right)/bottom ].sort
  end

  # The number of size k ordered subsets of a set of size n. Equivalent to
  # n!/(n-k)!.
  #
  # @param [Integer] n the size of the set to pick from
  # @param [Integer] k the size of the ordered subsets
  #
  # @return [Integer] the number of permutations
  #
  # @raise [ArgumentError] if either argument is negative, or if n < k
  def permutations(n, k)
    raise ArgumentError, 'n cannot be negative' if n < 0
    raise ArgumentError, 'k cannot be negative' if k < 0
    raise ArgumentError, 'n must be at least as large as k' if n < k
    n.factorial / (n-k).factorial
  end

  # The number of size k unordered subsets of a set of size n. Equivalent to
  # n!/(k!(n-k)!).
  #
  # @param [Integer] n the size of the set to pick from
  # @param [Integer] k the size of the unordered subsets
  #
  # @return [Integer] the number of combinations
  #
  # @raise [ArgumentError] if either argument is negative, or if n < k
  def combinations(n, k)
    raise ArgumentError, 'n cannot be negative' if n < 0
    raise ArgumentError, 'k cannot be negative' if k < 0
    raise ArgumentError, 'n must be at least as large as k' if n < k
    n.factorial / (k.factorial * (n-k).factorial)
  end

  # Get the number of steps it takes to get from integer n to 1 using the
  # Collatz conjecture.
  #
  # @see http://en.wikipedia.org/wiki/Collatz_conjecture
  #
  # @param [Integer] n the number to put into the Collatz conjecture initially
  # @param [Integer] depth the number of steps that have passed so far (should
  #   not be modified unless this is being cached carefully)
  #
  # @return [Integer] the number of steps it takes to get from integer n to 1
  #   using the Collatz conjecture (the depth)
  #
  # @raise [ArgumentError] if n < 1
  def collatz(n, depth=0)
    raise ArgumentError, 'n must be at least 1' if n < 1
    if n == 1
      depth
    elsif n % 2 == 0
      depth += 1
      collatz(n/2, depth)
    else
      depth += 1
      collatz(3*n + 1, depth)
    end
  end

  # Using the Pythagorean theorem, gets c (the length of the hypotenuse) when a
  # and b (the lengths of the other sides of a triangle) are given.
  #
  # @param [Numeric] a the length of the first side of the triangle
  # @param [Numeric] b the length of the second side of the triangle
  #
  # @return [Float] the length of the hypotenuse of the triangle
  #
  # @raise [ArgumentError] if either argument is negative
  def hypotenuse(a, b)
    raise ArgumentError, 'a cannot be negative' if a < 0
    raise ArgumentError, 'b cannot be negative' if b < 0
    Math.sqrt(a**2 + b**2)
  end

  # Returns true if the three given numbers are positive integers that form a
  # Pythagorean triplet (that is, if a^2+b^2=c^2). C must be the last parameter.
  #
  # @param [Integer] a the length of the first side of the triangle
  # @param [Integer] b the length of the second side of the triangle
  # @param [Integer] c the length of the hypotenuse of the triangle
  #
  # @return [Boolean] true if the three numbers form a Pythagorean triplet
  def triplet?(a, b, c)
    inputs_are_valid = true
    [a,b,c].each do |n|
      inputs_are_valid = false if n < 1 or not n.class <= Integer
    end
    return false unless inputs_are_valid
    a**2 + b**2 == c**2
  end

  # Calculates a series of Fibonacci numbers of a specified length. Note that
  # if terms are not passed to this method, it will start generating numbers
  # with the terms [1, 1].
  #
  # @param [Integer] length the length of the Fibonacci series that should be
  #   returned
  #
  # @return [Array] a Fibonacci series of Integers with the specified length
  #   (ordered)
  #
  # @raise [ArgumentError] if a negative length is given, or if less than two
  #   terms are given
  def fibs length, terms = [1, 1]
    raise ArgumentError, 'Length must be at least 0' if length < 0
    raise ArgumentError, 'At least two terms must be given' if terms.length < 2
    terms << (terms[-2] + terms[-1]) while terms.length < length
    terms.first length
  end

  # Finds all prime numbers from 1 to a given number n (inclusive) using the
  # Sieve of Eratosthenes.
  #
  # @see http://www.algorithmist.com/index.php/Prime_Sieve_of_Eratosthenes
  #
  # @param [Integer] limit the upper limit of all primes to find (inclusive)
  #
  # @return [Array] an array of integers containing all discovered primes (in
  #   increasing order)
  def primes limit
    # Initialize the array of booleans
    is_prime = [true] * (limit+1)
    is_prime[0] = false
    is_prime[1] = false

    # Check for composite numbers and update the array with results
    2.upto(Math.sqrt limit).each do |i|
      if is_prime[i]
        # Mark all multiples of i as composite
        2.upto(limit).each do |factor|
          multiple = i * factor
          break if multiple > limit
          is_prime[multiple] = false
        end
      end
    end

    # Create an array of prime integers by iterating over the array of booleans
    primes = []
    1.upto(limit).each { |i| primes << i if is_prime[i] }
    primes
  end

end
