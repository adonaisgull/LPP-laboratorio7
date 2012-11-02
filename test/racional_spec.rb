#
# racional_spec.rb
# Spec para la Clase Racional
#

require 'rspec'
require 'racional'

describe Racional do
  
  before :each do
      @racional = Racional.new
  end
  
  it "Debe existir un numerador" do
    @racional.respond_to?('numerador').should == true
  end
  
  it "Debe existir un denominador" do
    @racional.respond_to?('denominador').should == true
  end
  
end

