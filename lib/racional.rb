#
# racional.rb
# Clase Racional
#

class Racional

  attr_reader :num, :denom
  
  def initialize(num, denom)
    @num, @denom = num, denom
    reducir
  end

  def reducir
    div = mcd(@num, @denom)
    @num = @num / div
    @denom = @denom / div
  end
  
  def mcd(a, b)
    return a if b == 0
    mcd(b, a % b)
  end 
 
end
