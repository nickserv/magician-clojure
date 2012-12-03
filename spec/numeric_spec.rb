require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Numeric do

	it 'should determine if it is divisible by another number' do
		0.divisible?(5).should be_true
		1.divisible?(6).should be_false
		-1.divisible?(1).should be_true
		12.divisible?(6).should be_true
		6.divisible?(5).should be_false
		10.divisible?(0).should be_false
		9.divisible?(1.5).should be_true
		9.0.divisible?(1.5).should be_true
		10.5.divisible?(1.5).should be_true
		10.5.divisible?(1).should be_false
	end

	it 'should grab specific digits from different numbers' do
		Math::PI.digits(0..-1).should == 3
		12345.digits(0..2).should == 123
		12345.digits(4).should == 5
	end

end
