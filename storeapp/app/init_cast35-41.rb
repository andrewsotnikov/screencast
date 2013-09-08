#coding: cp1251

require_relative "store_application"
StoreApplication.config do |app|
  app.name = "Мой магазин"
  app.enviroment = :production

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails :monday
  end
end

p StoreApplication.enviroment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

StoreApplication.name = "Мой новый магазин" unless StoreApplication.frozen?

@items = []
@items << ItemReal.new("Car", price: 10, weight: 1000)
@items << ItemVirtual.new("Melody", price: 200)
@items << ItemAntique.new("Picture")

cart = Cart.new("Andrew")
cart.add_item( ItemReal.new("Car", price: 110, weight: 1000) )
cart.add_item( ItemReal.new("Car", price: 120, weight: 1500) )
cart.add_item( ItemAntique.new("Picture") )
cart.add_item( ItemReal.new("Car", price: 150) )
puts cart.all_Cars
puts cart.all_Picture

order = Order.new
@items.each{ |i| order.add_item(i) }
order.place
puts order.placed_at
puts order.placed_at.to_i
puts order.placed_at.utc
puts order.placed_at.strftime("%b %-d, %Y %H:%M:%S")
