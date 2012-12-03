# magician [![Build Status](https://secure.travis-ci.org/thenickperson/magician.png?branch=master)](http://travis-ci.org/thenickperson/magician) [![Dependency Status](https://gemnasium.com/thenickperson/magician.png)](https://gemnasium.com/thenickperson/magician) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/thenickperson/magician)

A suite of handy methods for doing calculations in irb.

For detailed documentation, see
[magician on RubyDoc.info](http://rubydoc.info/github/thenickperson/magician/frames).

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
Copyright (c) 2012 Nicolas McCurdy. See LICENSE.txt for further details.
