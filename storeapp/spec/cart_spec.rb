#coding: cp1251

require "rspec"
require_relative "../app/item"
require_relative "../app/item_virtual"
require_relative "../app/item_antique"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do
  it "���������� �������� �������" do
    cart = Cart.new("Andrew")
    cart.items.should be_kind_of(Array)
    cart.owner.should_not be_nil
  end
  
  describe "������ ���������� ��������" do
    it "���������� ���������� ������� � �������" do
      cart = Cart.new("Andrew")
      item1 = Item.new("Car", price: 1000)
      item2 = Item.new("Mobile", price: 20)
      item3 = Item.new("Melody", price: 200)
      item4 = Item.new("Picture")
      cart.add_items(item1, item2)
      cart.items.should include(item1, item2)
    end
    
    it "�������� ������� �� �������" do
      pending
    end
  end
  
  it "������ ���������� ������� � �������"
  it "���������� ������ �� ������� � �������"
  it "������� �������"
end