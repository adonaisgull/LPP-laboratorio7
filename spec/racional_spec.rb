#
# racional_spec.rb
# Spec para la Clase Racional
#

require 'rspec'
require 'racional'

describe Racional do
  
  before :each do
      @racional = Racional.new(1,2)
  end
  
  it "Debe existir un numerador" do
    @racional.respond_to?('num').should == true
  end
  
  it "Debe existir un denominador" do
    @racional.respond_to?('denom').should == true
  end

  it "Debe estar en su forma reducida" do
    @racional = Racional.new(5,10)
    result = @racional.num==1 && @racional.denom==2
    result.should == true
  end 
 
  it "Se debe invocar al metodo num() para obtener el numerador" do
    @racional.num.should == 1
  end

  it "Se debe invocar al mentodo denom() para obtener el numerador" do
    @racional.denom.should == 2
  end 
  
end

