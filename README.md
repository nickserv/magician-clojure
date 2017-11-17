# Deprecated
Use a more complete and well supported math system like [Octave](https://www.gnu.org/software/octave/), which is compatible with [MATLAB](https://www.mathworks.com/products/matlab.html).

# magician
[![Build Status](https://travis-ci.org/nicolasmccurdy/magician-clojure.svg?branch=master)](https://travis-ci.org/nicolasmccurdy/magician-clojure)

A suite of handy functions for doing calculations in Clojure.

## Usage
FIXME

## Examples
```ruby
>> require 'magician'
=> true
>> [1,2,3].sum
=> 6
>> [1,2,3].mean
=> 2.0
>> [1,100,5].range
=> 99
>> [1,2,2,3,3,3].occurences
=> {1=>1, 2=>2, 3=>3}
>> 6.factors
=> [1, 2, 3, 6]
>> 6.divisible? 3
=> true
>> 7.prime?
=> true
>> 5.factorial
=> 120
>> Math.combinations(10,5)
=> 252
>> Math.triplet?(3,4,5)
=> true
>> Math.quadratic(2,1,0)
=> [-0.5, 0.0]
>> 'racecar'.palindrome?
=> true
```

## License

Copyright © 2014 FIXME

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
