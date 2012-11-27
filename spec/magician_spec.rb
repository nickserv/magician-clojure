require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Magician' do

	it 'should calculate the mean, median, mode, and range of a list of integers' do
		list = [8, 9, 10, 10, 10, 11, 11, 11, 12, 13]
		list.mean.should == 10.5
		list.median.should == 10.5
		list.mode.should == [10, 11]
		list.range.should == 5
	end

end
