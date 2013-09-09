require "#{File.dirname __FILE__}/spec_helper"

describe String do

  it 'should determine if it is a palindrome' do
    ''.palindrome?.should        be_true
    'a'.palindrome?.should       be_true
    'deed'.palindrome?.should    be_true
    'racecar'.palindrome?.should be_true

    'cats'.palindrome?.should be_false
    'no'.palindrome?.should   be_false
  end

end
