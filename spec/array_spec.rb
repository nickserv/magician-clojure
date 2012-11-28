require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Array do

	it 'should get the sum of a list' do
		[].sum.should == 0
		[1].sum.should == 1
		[1, 2, 3, 4].sum.should == 10
		[-4, 0, 5].sum.should == 1
	end

	it 'should get the product of a list' do
		[].product.should == 1
		[1].product.should == 1
		[5, 7, 2].product.should == 70
	end

	it 'should get the range of a list' do
		[].range.should == nil
		[4].range.should == 0
		[5, 1, 10].range.should == 9
	end

	it 'should get the mean of a list' do
		[].mean.should == nil
		[4].mean.should == 4
		[-3, 0, 6].mean.should == 1
		[1, 2, 3, 4, 5].mean.should == 3
	end

	it 'should get the median of a list' do
		[].median.should == nil
		[4].median.should == 4.0
		[2, 1, 3, 5, 4].median.should == 3.0
		[1, 2, 3, 4].median.should == 2.5
	end

	it 'should get the mode of a list' do
		[].mode.should == nil
		[4].mode.should == [4]
		[1, 2, 1, 3, 1, 4].mode.should == [1]
		[1, 1, 1, 2, 2, 2, 3].mode.should == [1, 2]
	end

	it 'should get a hash with the number of occurences of items in a list' do
		[].occurences.should == {}
		[4].occurences.should == { 4=>1 }
		[1, 2, 2, 5].occurences.should == { 1=>1, 2=>2, 5=>1 }
	end

	it 'should let Array#average be used as an alias to Array#mean' do
		[4].average.should == 4.0
	end

end
