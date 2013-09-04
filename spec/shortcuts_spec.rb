require 'spec_helper'

describe 'Shortcuts' do

  it 'should properly alias certain values from Math' do
    E.should            == Math::E
    I.should            == Complex::I
    GOLDEN_RATIO.should == (1 + Math.sqrt(5))/2
  end

end
