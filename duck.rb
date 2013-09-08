#coding: cp1251

class Duck
  @@greeting = "hello"
  
  class << self
    attr_accessor :greeting
    
    # метод класса
    def quake
      puts "#{@@greeting} - #{@greeting}"
    end
  end

  def initialize(greeting)
    @greeting = greeting
  end
  
  # метод объекта
  def quake
    puts "#{@@greeting} - #{@greeting}"
  end
end

duck1 = Duck.new("кря кря")
duck1.quake

Duck.greeting = "класс кря кря"
Duck.quake
