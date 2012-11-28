require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Integer do

	it 'should get the factors of an integer' do
		0.factors.should == nil
		1.factors.should == [1]
		-1.factors.should == [1]
		6.factors.should == [1, 2, 3, 6]
		7.factors.should == [1, 7]
	end

	it 'should get the factorial of an integer' do
		0.factorial.should == 1
		1.factorial.should == 1
		-1.factorial.should == nil
		5.factorial.should == 120
		10.factorial.should == 3_628_800
	end

	it 'should determine if an integer is prime' do
		0.prime?.should be_false
		1.prime?.should be_false
		2.prime?.should be_true
		5.prime?.should be_true
		6.prime?.should be_false
		-1.prime?.should be_false
		-2.prime?.should be_false
		-5.prime?.should be_false
		-6.prime?.should be_false
	end

	it 'should determine if an integer is divisible by another number' do
		0.divisible?(5).should be_true
		1.divisible?(6).should be_false
		-1.divisible?(1).should be_true
		12.divisible?(6).should be_true
		6.divisible?(5).should be_false
		9.divisible(1.5).should be_true
		10.divisible?(0).should == nil
	end

end
