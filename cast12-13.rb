#coding: cp1251

class Item
  def initialize
    @price = rand(100)
  end

  def price
    @price
  end
  
  def price=(price_value)
    @price = price_value
  end
end

item1 = Item.new
puts item1.price
item1.price = 10
puts item1.price

item2 = Item.new
item2.price = 20
puts item2.price