require 'spec_helper'

describe Numeric do

  it 'should determine if it is divisible by another number' do
    0.divisible?(5).should      be_true
    1.divisible?(6).should      be_false
    -1.divisible?(1).should     be_true
    12.divisible?(6).should     be_true
    6.divisible?(5).should      be_false
    10.divisible?(0).should     be_false
    9.divisible?(1.5).should    be_true
    9.0.divisible?(1.5).should  be_true
    10.5.divisible?(1.5).should be_true
    10.5.divisible?(1).should   be_false
  end

  it 'should convert angles to radians' do
    0.to_radians.should   == 0
    90.to_radians.should  == Math::PI/2
    180.to_radians.should == Math::PI
    270.to_radians.should == 3*Math::PI/2
    360.to_radians.should == 2*Math::PI
    -90.to_radians.should == -Math::PI/2
  end

  it 'should convert angles to degrees' do
    0.to_degrees.should        == 0
    (Math::PI/2).to_degrees.should   == 90
    Math::PI.to_degrees.should       == 180
    (3*Math::PI/2).to_degrees.should == 270
    (2*Math::PI).to_degrees.should   == 360
    (-Math::PI/2).to_degrees.should  == -90
  end

end
