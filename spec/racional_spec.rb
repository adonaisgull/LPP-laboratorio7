#
# racional_spec.rb
# Spec para la Clase Racional
#

require 'rspec'
require 'racional'

describe Racional do
  
  before :each do
      @racional = Racional.new(1,1)
  end
  
  it "Debe existir un numerador" do
    @racional.respond_to?('numerador').should == true
  end
  
  it "Debe existir un denominador" do
    @racional.respond_to?('denominador').should == true
  end

  it "Debe estar en su forma reducida" do
    @racional = Racional.new(5,10)
    puts @racional.numerador
    puts @racional.denominador
    result = @racional.numerador==1 && @racional.denominador==2
    result.should == true
  end 
    
end

