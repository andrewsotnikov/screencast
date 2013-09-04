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
    @items.map{ |i| puts "Не определена цена" if i.price.nil? }
  end
  
  def delete_invalid_item
    @items.delete_if{ |i| i.price.nil? }
  end
end