# magician [![Gem Version](https://badge.fury.io/rb/magician.png)](http://badge.fury.io/rb/magician) [![Build Status](https://secure.travis-ci.org/thenickperson/magician.png?branch=master)](http://travis-ci.org/thenickperson/magician) [![Dependency Status](https://gemnasium.com/thenickperson/magician.png)](https://gemnasium.com/thenickperson/magician) [![Code Climate](https://codeclimate.com/github/thenickperson/magician.png)](https://codeclimate.com/github/thenickperson/magician)

A suite of handy methods for doing calculations in irb.

## [Documentation](http://rubydoc.info/github/thenickperson/magician/frames)

## A note on Ruby 2.0 support
With the latest release of magician, all tests pass on Ruby 1.9 and 2.0.
However, magician depends on jeweler to work, which unfortunately does not seem
to be compatible with Ruby 2.0 yet. As a result, magician will most likely not
work on Ruby 2.0 at this point. If you come up with any fixes for this, please
feel free to send me a pull request.

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

## Contributing to magician
- Check out the latest master to make sure the feature hasn't been implemented
  or the bug hasn't been fixed yet.
- Check out the issue tracker to make sure someone already hasn't requested it
  and/or contributed it.
- Fork the project.
- Start a feature/bugfix branch.
- Commit and push until you are happy with your contribution.
- Make sure to add tests for it. This is important so I don't break it in a
  future version unintentionally.
- Please try not to mess with the Rakefile, version, or history. If you want to
  have your own version, or is otherwise necessary, that is fine, but please
  isolate to its own commit so I can cherry-pick around it.

## Copyright
Copyright (c) 2013 Nicolas McCurdy. See LICENSE.txt for further details.
