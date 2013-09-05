#coding: cp1251

require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "item_real"
require_relative "item_virtual"
require_relative "cart"
require_relative "order"

@items = []
@items << ItemReal.new(price: 10, weight: 1000, name: "Car")
@items << ItemVirtual.new(price: 200, name: "Melody")
@items << ItemVirtual.new(name: "Picture")
