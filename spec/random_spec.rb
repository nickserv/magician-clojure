require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Random do

  before :each do
    @r = Random.new 1234
  end

  it 'should get a random boolean' do
    @r.boolean.should be_true
    @r.boolean.should be_false
    @r.boolean.should be_true
  end

  it 'should get a random coin toss' do
    @r.coin.should == 'heads'
    @r.coin.should == 'tails'
    @r.coin.should == 'heads'
  end

  it 'should get a random die roll' do
    @r.die.should == 4
    @r.die.should == 6
    @r.die.should == 5
  end

end
