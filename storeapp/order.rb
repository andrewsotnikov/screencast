#coding: cp1251

class Order
  attr_reader :items

  def initialize
    @items = []
  end
  
  include ItemContainer
  include ItemContainer::Info
end