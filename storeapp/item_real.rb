#coding: cp1251

class ItemReal < Item
  attr_reader :weight
   
  def initialize(options={})
    @weight = options[:weight]
    super
  end
  
  def info
    yield(weight)
    super
  end  
end