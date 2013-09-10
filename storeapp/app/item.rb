#coding: cp1251

class Item
  @@discount = 0.1
  
  attr_accessor :price
  attr_reader :name
  
  def self.discount
    (Time.now.month == 9) ? @@discount + 0.2 : @@discount 
  end
  
  def self.show_info_about(attr, block)
    @@show_info_about ||= {}
    @@show_info_about[attr] = block
  end

  def initialize(name, options={})
    @price, @name = options[:price], name
  end

  def price
    @price * (1 - self.class.discount) + tax if @price
  end

  def info
    yield(name)
    yield(price)
  end
  
  def to_s
    "#{self.name}:#{self.price}"
  end
  
  private
    def tax
      type_tax = (self.class == ItemVirtual) ? 1 : 2
      cost_tax = (@price > 10) ? @price * 0.2 : @price * 0.1
      type_tax + cost_tax 
    end
end