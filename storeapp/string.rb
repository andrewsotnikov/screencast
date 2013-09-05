#coding: cp1251
class String
  def to_item_real
    fields = self.chomp.split(":")
    ItemReal.new(name: fields[0], price: (fields[1].to_i unless fields[1].nil?), weight: (fields[2].to_i unless fields[2].nil?))
  end
end