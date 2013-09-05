#coding: cp1251
class Cart
  attr_reader :items
  def initialize(owner = "shared")
    @items, @owner = [], owner
    @filename = "#{owner}_cart.txt"
  end

  include ItemContainer

  def save_to_file
    File.open(@filename, "w") do |f|
      @items.each{|i| f.puts i}
    end
  end

  def read_from_file
    return unless File.exists?(@filename)
    File.readlines(@filename).each{ |i| @items << i.to_item_real }
    @items.uniq!{ |i| i.name }
  end
end