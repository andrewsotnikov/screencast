#coding: cp1251

require_relative "item"
require_relative "cart"

item = Item.new({:price => 10, :weight => 1000, :name => "Арбуз"})
item.info{ |attr| puts attr}
