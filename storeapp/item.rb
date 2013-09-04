#coding: cp1251

class Item
  @@discount = 0.1
  
  attr_accessor :price
  attr_reader :name
  
  def self.discount
    (Time.now.month == 9) ? @@discount + 0.2 : @@discount 
  end

  def initialize(options={})
    @price, @name = options[:price], options[:name]
  end

  def price
    @price * (1 - self.class.discount) + tax
  end

  def info
    yield(price)
    yield(name)
  end
  
  private
    def tax
      type_tax = (self.class == "VirtualItem") ? 2 : 5
      cost_tax = (@price > 10) ? @price * 0.2 : @price * 0.1
      type_tax + cost_tax 
    end
end