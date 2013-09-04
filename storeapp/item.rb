#coding: cp1251

class Item
  def initialize(options={})
    @price, @weight = options[:price], options[:weight]
  end

  attr_accessor :price
  attr_reader :weight
end