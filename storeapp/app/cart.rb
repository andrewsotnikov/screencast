#coding: cp1251
class Cart
  attr_reader :items
  def initialize(owner = "shared")
    @items, @owner = [], owner
    @filename = "#{owner}_cart.txt"
  end

  include ItemContainer
  UNSUPPORTED_ITEMS = [ItemVirtual, ItemAntique]
  
  class ItemNotSupport < StandardError; end

  def save_to_file
    File.open(@filename, "w") do |f|
      @items.each do |i|
        raise ItemNotSupport, "Корзина не поддерживает сохранение #{i.class} в файл" if UNSUPPORTED_ITEMS.include?(i.class)
        f.puts i
      end
    end
  end

  def read_from_file
    return unless File.exists?(@filename)
    begin
      File.readlines(@filename).each{ |i| @items << i.to_item_real }
      @items.uniq!{ |i| i.name }
    rescue Errno::ENOENT
      File.open(@filename, "w"){}
      puts "Файл #{@filename} успешно создан"
    end
  end
end