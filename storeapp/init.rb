#coding: cp1251

require_relative "item"
require_relative "cart"

cart = Cart.new
cart.add_item(Item.new)
cart.add_item(Item.new)

cart.validate

p cart.items

cart.remove_item
p cart.items
