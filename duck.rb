#coding: cp1251

class Duck
  @@greeting = "hello"
  
  class << self
    attr_accessor :greeting
    
    # ����� ������
    def quake
      puts "#{@@greeting} - #{@greeting}"
    end
  end

  def initialize(greeting)
    @greeting = greeting
  end
  
  # ����� �������
  def quake
    puts "#{@@greeting} - #{@greeting}"
  end
end

duck1 = Duck.new("��� ���")
duck1.quake

Duck.greeting = "����� ��� ���"
Duck.quake
