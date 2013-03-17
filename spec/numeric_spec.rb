require "#{File.dirname __FILE__}/spec_helper"

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

  it 'should grab specific digits from different numbers' do
    Math::PI.digits(0..-1).should == 3
    12345.digits(0..2).should     == 123
    12345.digits(4).should        == 5
  end

  it 'should convert angles to radians' do
    0.to_radians.should   == 0
    90.to_radians.should  == PI/2
    180.to_radians.should == PI
    270.to_radians.should == 3*PI/2
    360.to_radians.should == 2*PI
    -90.to_radians.should == -PI/2
  end

  it 'should convert angles to degrees' do
    0.to_degrees.should        == 0
    (PI/2).to_degrees.should   == 90
    PI.to_degrees.should       == 180
    (3*PI/2).to_degrees.should == 270
    (2*PI).to_degrees.should   == 360
    (-PI/2).to_degrees.should  == -90
  end

end
