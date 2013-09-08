#coding: cp1251

require_relative "app/store_application"

StoreApplication.config do |app|
  app.name = "Мой магазин"
  app.enviroment = :production

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails :monday
  end
end

@items = []
@items << ItemReal.new("Car", price: 1000, weight: 1000)
@items << ItemReal.new("Mobile", price: 20, weight: 2)
@items << ItemVirtual.new("Melody", price: 200)
@items << ItemAntique.new("Picture")
