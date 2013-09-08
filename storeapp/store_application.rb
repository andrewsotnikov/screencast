#coding: cp1251

class StoreApplication
  class << self
    def config
      unless @instance
        yield(self)
        puts "loading files..."
        require "pony" 
        require_relative "string"
        require_relative "item_container"
        require_relative "item"
        require_relative "item_real"
        require_relative "item_virtual"
        require_relative "item_antique"
        require_relative "cart"
        require_relative "order"
      end
      @instance ||= self
      @instance.freeze
    end
    
    attr_accessor :name, :enviroment
    def admin(&block)
      @admin = Admin.new(&block)
    end
  end
  
  class Admin
    class << self
      def new
        unless @instance 
          yield(self)
        end
        @instance ||= self
        @instance.freeze
      end
      
      attr_accessor :email, :login
      
      def send_info_emails(day)
        @send_info_emails = day
      end
    end
  end
end