#coding: cp1251

require "rspec"
require_relative "../app/item"
require_relative "../app/item_virtual"
require_relative "../app/item_antique"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do
  it "корректное создание корзины" do
    cart = Cart.new("Andrew")
    cart.items.should be_kind_of(Array)
    cart.owner.should_not be_nil
  end
  
  describe "методы управления товарами" do
    it "добавление нескольких товаров в корзину" do
      cart = Cart.new("Andrew")
      item1 = Item.new("Car", price: 1000)
      item2 = Item.new("Mobile", price: 20)
      item3 = Item.new("Melody", price: 200)
      item4 = Item.new("Picture")
      cart.add_items(item1, item2)
      cart.items.should include(item1, item2)
    end
    
    it "удаление товаров из корзины" do
      pending
    end
  end
  
  it "расчет количества товаров в корзине"
  it "оформление заказа по товарам в корзине"
  it "очистка корзины"
end