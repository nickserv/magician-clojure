## 0.3.0
- Ensure that everything works as expected on Ruby 2.0
- Add Array#middle, an unsorted version of Array#median
- Add Math.primes, which implements a fast prime sieve
- Add an alias for I
- Fix several issues with Integer#pandigital?
- Add Numeric#to_radians and Numeric#to_degrees for conversion
- Support making Math.fibs start with any set of two or more terms
- Add boolean, coin, and die class/instance methods to the Random class
- Update the changelog to include changes in previous version 0.2.1

## 0.2.1
- Fix an issue with Array#median giving inaccurate results (it wasn't sorting
  the list)
- Performance improvements
- Add Integer#pandigital?
- Deprecate Numeric#digits
- Add a shortcut for the golden ratio

## 0.2.0
- Create this changelog
- Add examples to the readme, along with a link to magician's docs
- Minor code style improvements
- Move the divisible? instance method from Integer to Numeric so it can be used
  on more types of numbers
- New Array#numerics instance method
- Several of Array's instance methods will now intelligently filter out
  non-numbers so that these methods can be used with arrays that don't just
  contain Numeric objects

## 0.1.1
- Minor code style improvements
- Improved documentation
  - Fix spelling errors
  - Document all nil returns

## 0.1.0
- Initial release
