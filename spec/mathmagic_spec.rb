require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Mathmagic' do

	it 'should get the sum of some integers' do
		[1,2,3].sum.should == 6
	end

	it 'should get the mean of some integers' do
		[1,2,3].mean.should == 2.0
	end

end
