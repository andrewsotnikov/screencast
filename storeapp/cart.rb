#coding: cp1251

class Cart
  attr_reader :items

  def initialize
    @items = []
  end
  
  include ItemContainer
end