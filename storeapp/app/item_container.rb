#coding: cp1251

module ItemContainer
  module ClassMetods
    def min_price
      50
    end
  end

  module Manager
    def method_missing(method_name)
      if method_name =~ /^all_/
        show_all_item_with_name(method_name.to_s.sub(/^all_/, "").chomp("s"))
      else
        #puts "#{method_name} не определен в классе #{self.class}"
        super
      end
    end 

    def add_item(item)
      #unless item.price < self.class.min_price
        @items.push item
      #end if item.price
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
    
    private
    
      def show_all_item_with_name(n)
        @items.map{|i| i if n == i.name}.compact
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