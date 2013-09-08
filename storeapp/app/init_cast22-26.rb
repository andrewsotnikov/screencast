#coding: cp1251

require_relative "item_container"
require_relative "item"
require_relative "item_real"
require_relative "item_virtual"
require_relative "cart"
require_relative "order"

item1 = ItemReal.new({:price => 10, :weight => 1000, :name => "Арбуз"})
item2 = ItemVirtual.new({:price => 200, :name => "Мелодия"})
item3 = ItemVirtual.new({:name => "Картинка"})

cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)
puts cart.items.size

order = Order.new
order.add_item(item1)
order.add_item(item2)
order.add_item(item3)
puts order.items.size
puts order.count_valid_item

item1.info{ |attr| puts attr }
item2.info{ |attr| puts attr }

p item1, item2
puts item1.respond_to?(:weight)
puts item2.respond_to?(:weight)

puts Item.discount
