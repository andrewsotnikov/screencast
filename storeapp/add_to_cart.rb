#coding: cp1251

require_relative "init"

cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a|
  @items.each{ |i| cart.add_item(i) if a == i.name }
end
cart.read_from_file
begin
  cart.save_to_file
rescue Cart::ItemNotSupport
  puts "Один из выбранных продуктов не поддерживает сохранение в файл. Список неподдерживаемых классов: #{Cart::UNSUPPORTED_ITEMS}"
end