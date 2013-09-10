#coding: cp1251

class ItemReal < Item
  attr_reader :weight

  show_info_about :weight, lambda{ |attr| attr > 5 }

  def initialize(name, options={})
    @weight = options[:weight]
    super
  end
  
  def info
    super
    if @@show_info_about[:weight] and @@show_info_about[:weight].call(weight)
      yield(weight)
    end
  end
  
  def to_s
    super + ":#{self.weight}"
  end
end