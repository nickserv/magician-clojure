require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Numeric do

	it 'should grab specific digits from different numbers' do
		Math::PI.digits(0..-1).should == 3
		12345.digits(0..2).should == 123
		12345.digits(4).should == 5
	end

end
