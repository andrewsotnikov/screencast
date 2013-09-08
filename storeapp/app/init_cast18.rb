#coding: cp1251

require_relative "item"
require_relative "cart"

item1 = Item.new({:price => 10, :weight => 1000, :name => "Арбуз"})
item2 = Item.new({:price => 20, :weight => 2000})

cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)
cart.add_item(Item.new({:weight => 2000}))
cart.add_item(Item.new)

p cart

cart.validate

p cart.items
cart.remove_item
p cart.items
cart.delete_invalid_item
p cart.items