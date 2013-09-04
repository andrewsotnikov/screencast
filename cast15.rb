#coding: cp1251

puts "ruby".object_id
puts "ruby".object_id
puts :ruby.object_id
puts :ruby.object_id

my_owner = {:first_name => "Павел", :second_name => "Нванов" }
puts my_owner[:first_name]
puts my_owner[:second_name]

p my_owner

class Item
  def initialize(options)
    @price, @weight = options[:price], options[:weight]
  end

  attr_accessor :price
  attr_reader :weight
  #attr_writer :price
end

item1 = Item.new({:price => 100, :weight => 2})
puts item1.price
puts item1.weight


item2 = Item.new({})
puts item2.price
puts item2.weight
