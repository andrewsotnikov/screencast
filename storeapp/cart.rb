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
      @items.each{|i| f.puts "#{i.name}:#{i.price}:#{i.weight if i.respond_to?(:weight)}"}
    end
  end

  def read_from_file
    return unless File.exists?(@filename)
    item_fields = File.readlines(@filename)
    item_fields.map!{ |i| i.chomp.split(":") }
    item_fields.each{ |i| @items << ItemReal.new(name: i[0], price: (i[1].to_i unless i[1].nil?), weight: (i[2].to_i unless i[2].nil?)) }
    @items.uniq!{ |i| i.name }
  end
end