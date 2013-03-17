require "#{File.dirname __FILE__}/spec_helper"

describe Random do

  before :each do
    @r = Random.new
  end

  it 'should get a random boolean' do
    5.times { [true, false].should include @r.boolean }
  end

  it 'should get a random coin toss' do
    5.times { ['heads', 'tails'].should include @r.coin }
  end

  it 'should get a random die roll' do
    5.times { (1..6).should include @r.die }
  end

end
