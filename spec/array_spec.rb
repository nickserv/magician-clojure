require "#{File.dirname __FILE__}/spec_helper"

describe Array do

  it 'should return all of its Numerics in order' do
    [1, 2.0, -3].numerics.should          == [1, 2.0, -3]
    ['string'].numerics.should            == []
    [].numerics.should                    == []
    [1, 'two', 3, 'four'].numerics.should == [1, 3]
  end

  it 'should calculate its sum' do
    [].sum.should           == 0
    [1].sum.should          == 1
    [1, 2, 3, 4].sum.should == 10
    [-4, 0, 5].sum.should   == 1

    expect { ['string'].sum }.to    raise_error RuntimeError
    expect { ['string', 1].sum }.to raise_error RuntimeError
  end

  it 'should calculate its product' do
    [].product.should        == 1
    [1].product.should       == 1
    [5, 7, 2].product.should == 70

    expect { ['string'].product }.to    raise_error RuntimeError
    expect { ['string', 1].product }.to raise_error RuntimeError
  end

  it 'should calculate its middle' do
    [].middle.should              == nil
    [4].middle.should             == 4.0
    [2, 1, 5, 4, 3].middle.should == 5.0
    [1, 2, 3, 4].middle.should    == 2.5
    [1, 2, 4, 3].middle.should    == 3.0

    expect { ['string', 4].middle }.to raise_error RuntimeError
  end

  it 'should calculate its range' do
    [].range.should         == nil
    [4].range.should        == 0
    [5, 1, 10].range.should == 9

    expect { ['string'].range }.to    raise_error RuntimeError
    expect { ['string', 4].range }.to raise_error RuntimeError
  end

  it 'should calculate its mean' do
    [].mean.should              == nil
    [4].mean.should             == 4
    [-3, 0, 6].mean.should      == 1
    [1, 2, 3, 4, 5].mean.should == 3

    expect { ['string'].mean }.to    raise_error RuntimeError
    expect { ['string', 4].mean }.to raise_error RuntimeError
  end

  it 'should calculate its median' do
    [].median.should              == nil
    [4].median.should             == 4.0
    [2, 1, 5, 4, 3].median.should == 3.0
    [1, 2, 3, 4].median.should    == 2.5

    expect { ['string', 4].median }.to raise_error RuntimeError
  end

  it 'should calculate its mode' do
    [].mode.should            == nil
    ['string'].mode.should    == ['string']
    [4].mode.should           == [4]
    ['string', 4].mode.should == ['string',4]

    [1, 2, 1, 3, 1, 4].mode.should    == [1]
    [1, 1, 1, 2, 2, 2, 3].mode.should == [1, 2]
  end

  it 'should calculate a hash holding numbers of occurrences of its items' do
    [].occurences.should            == {}
    ['string'].occurences.should    == { 'string'=>1 }
    [4].occurences.should           == { 4=>1 }
    ['string', 4].occurences.should == { 'string'=>1, 4=>1 }

    [1, 2, 2, 5].occurences.should == { 1=>1, 2=>2, 5=>1 }
  end

  it 'should let Array#average be used as an alias to Array#mean' do
    [4].average.should == 4.0
  end

end
