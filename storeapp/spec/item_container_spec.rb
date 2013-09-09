#coding: cp1251

require "rspec"
require_relative "../app/item_container"
require_relative "../app/item"
require_relative "../app/item_virtual"

class ItemBox
  attr_reader :items  
  
  include ItemContainer
  def initialize()
    @items = []
  end
end

describe ItemContainer do
  before(:each) do
    # ����������� ����� ������ ������
    @box = ItemBox.new
    @item1 = Item.new("Car", price: 1000)
    @item2 = Item.new("Mobile", price: 20)
    @item3 = Item.new("Melody", price: 200)
  end
    
  it "���������� ������ � �������" do
    @box.add_item(@item1)
    @box.add_item(@item2)
    @box.add_item(@item3)
    @box.items.should have(3).items
  end
  
  it "�������� ������ �� �������" do
    @box.add_item(@item1)
    @box.add_item(@item2)
    @box.remove_item.should be(@item2)
    @box.remove_item
    @box.items.should be_empty
  end
  
  it "������������� ������ ��� ���������� �� ������" do
    lambda{ @box.add_item("�� �����") }.should raise_error
  end
  
  it "����������� ���� ������" do
    ItemBox.min_price.should be(50)
  end
  
end