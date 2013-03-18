## 0.3.0
- Features
  - Add Math.primes, which implements a fast prime sieve
  - Add Array#numerics, which finds all Numerics in an Array
  - Add Array#middle, an unsorted version of Array#median
  - Add Numeric#to_radians and Numeric#to_degrees for conversion
  - Add #boolean, #coin, and #die class/instance methods to the Random class
  - Add an alias for Complex::I
- Changes
  - If an Array method that uses Numerics is called on an Array with non-Numeric
    objects, magician will raise a RuntimeError instead of filtering out
    non-Numeric objects without warning
  - Methods will now tend to prefer raising descriptive errors over returning
    nil without warning
  - Support making Math.fibs start with any set of two or more terms
  - Simplify and clean up some of the source code
- Fixes
  - Fix several issues with Integer#pandigital?
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
