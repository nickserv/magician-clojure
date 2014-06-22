require 'spec_helper'

describe Integer do

  it 'should determine if it is pandigital' do
    123456789.pandigital?.should be_true
    987654321.pandigital?.should be_true
    192837465.pandigital?.should be_true

    12345.pandigital?.should              be_false
    1234567890.pandigital?.should         be_false
    1234567899.pandigital?.should         be_false
    112233445566778899.pandigital?.should be_false
  end

end
