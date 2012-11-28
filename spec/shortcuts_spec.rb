require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Shortcuts' do

	it 'should properly alias certain values' do
		PI.should == Math::PI
		E.should == Math::E
	end

end
