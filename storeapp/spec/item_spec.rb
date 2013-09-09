#coding: cp1251

require "rspec"
require_relative "../app/item"
require_relative "../app/item_virtual"

describe Item do
  before(:all) do
    # запускается перед всеми тестами один раз
  end
  
  before(:each) do
    # запускается перед каждым тестом
    @item = Item.new("TestItem", price: 200)
  end
  
  after(:all) do
    # запускается после всех тестов один раз
  end
  
  after(:each) do
    # запускается после каждого теста
  end
  
  it "расчет цены в соответсвии со специальной формулой" do
    @item.price.should eq(182.0)
    @item.price = 300
  end
  
  it "возврат информации об объекте" do
    @item.to_s.should == "TestItem:182.0"
  end
  
  it "расчет надбавки" do
    @item.send(:tax).should_not be_nil
  end
  
end