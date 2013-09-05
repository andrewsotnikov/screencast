#coding: cp1251

module ItemContainer
  module ClassMetods
    def min_price
      50
    end
  end
  
  module Manager
    def add_item(item)
      unless item.price < self.class.min_price
        @items.push item
      end if item.price
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
  
  module Info
    def count_valid_item
      @items.count{ |i| i.price }
    end
  end
  
  def self.included(base)
    base.extend ClassMetods
    base.class_eval do
      include Manager
    end
  end
end