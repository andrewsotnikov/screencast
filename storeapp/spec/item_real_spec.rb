#coding: cp1251

require "rspec"
require_relative "../app/item"
require_relative "../app/item_virtual"
require_relative "../app/item_real"

describe ItemReal do
  it "запись веса товара согласно установленному правилу" do
    item1 = ItemReal.new("Car", price: 1000, weight: 1000)
    item2 = ItemReal.new("Car", price: 1000, weight: 2)
    item1_info, item2_info = [], []
    
    item1.info { |attr| item1_info << attr }
    item2.info { |attr| item2_info << attr } 
    
    item1_info.join(", ").should eq("Car, 902.0, 1000")
    item2_info.join(", ").should eq("Car, 902.0")
  end
end