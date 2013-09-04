#coding: cp1251

class Item
  def initialize
    @price, @weight = rand(100), 12
  end

  attr_accessor :price
  attr_reader :weight
  #attr_writer :price
end

item1 = Item.new
puts item1.price
item1.price = 10
puts item1.price

item2 = Item.new
item2.price = 20
puts item2.price

puts item1.weight
puts item2.weight
