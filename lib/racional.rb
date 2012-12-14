#
# racional.rb
# Clase Racional
#

class Racional

  attr_reader :numerador, :denominador
  
  def initialize(num, denom)
    @numerador, @denominador = num, denom
    reducir
  end

  def reducir
    div = mcd(@numerador, @denominador)
    @numerador = @numerador / div
    @denominador = @denominador / div
  end
  
  def mcd(a, b)
    return a if b == 0
    mcd(b, a % b)
  end 
end
