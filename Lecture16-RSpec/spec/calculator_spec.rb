require 'rspec'
require_relative '../calculator'

describe Calculator do
  before { @calculator = Calculator.new('RSpec calculator')}

  it "should add 2 numbers correctly" do
  	expect(@calculator.add(2, 3)).to eq 5 
  end
  	
  it "should subtract 2 numbers correctly" do
   expect(@calculator.subtract(6, 3)).to eq 3 
  end  

  it "should sum two odd numbers and become even" do
   expect(@calculator.add(3, 3)).to be_even 
   expect(@calculator.add(3, 3)).not_to be_odd 
  end

end
