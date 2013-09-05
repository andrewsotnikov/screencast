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
    @price * (1 - self.class.discount) + tax if @price
  end

  def info
    yield(price)
    yield(name)
  end
  
  def to_s
    "#{self.name}:#{self.price}:#{self.weight if self.respond_to?(:weight)}"
  end
  
  private
    def tax
      type_tax = (self.class == "VirtualItem") ? 2 : 5
      cost_tax = (@price > 10) ? @price * 0.2 : @price * 0.1
      type_tax + cost_tax 
    end
end