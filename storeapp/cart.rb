#coding: cp1251

class Cart
  attr_reader :items

  def initialize
    @items = []
  end
  
  def add_item(item)
    @items.push item
  end
  
  def remove_item
    @items.pop
  end
  
  def validate
    @items.map{ |i| puts "�� ���������� ����" if i.price.nil? }
  end
end