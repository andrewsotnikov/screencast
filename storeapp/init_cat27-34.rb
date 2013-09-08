#coding: cp1251

require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "item_real"
require_relative "item_virtual"
require_relative "item_antique"
require_relative "cart"
require_relative "order"

@items = []
@items << ItemReal.new(price: 10, weight: 1000, name: "Car")
@items << ItemVirtual.new(price: 200, name: "Melody")
@items << ItemAntique.new(name: "Picture")

cart = Cart.new("Andrew")
cart.add_item( ItemReal.new(price: 110, weight: 1000, name: "Car") )
cart.add_item( ItemReal.new(price: 120, weight: 1500, name: "Car") )
cart.add_item( ItemAntique.new(name: "Picture") )
cart.add_item( ItemReal.new(price: 150, name: "Car") )
puts cart.all_Cars
puts cart.all_Picture

puts "==="
puts cart.kind_of?(Cart)
puts cart.kind_of?(ItemReal)
puts @items[0].kind_of?(Item)
puts @items[0].kind_of?(ItemReal)
puts @items[0].kind_of?(ItemAntique)
puts "==="
puts @items[0].class == Item
puts @items[0].class == ItemReal
puts @items[0].class == ItemAntique
puts "==="
puts @items[0].respond_to?(:info)
puts @items[0].respond_to?(:import)
puts "==="
puts @items[0].send(:price)
puts @items[0].price
puts @items[0].send(:tax)
puts "==="
method = "all_Cars"
puts cart.send(method)