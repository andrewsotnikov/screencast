#coding: cp1251

require "rspec"
require_relative "../app/item"
require_relative "../app/item_virtual"

describe Item do
  before(:all) do
    # ����������� ����� ����� ������� ���� ���
  end
  
  before(:each) do
    # ����������� ����� ������ ������
    @item = Item.new("TestItem", price: 200)
  end
  
  after(:all) do
    # ����������� ����� ���� ������ ���� ���
  end
  
  after(:each) do
    # ����������� ����� ������� �����
  end
  
  it "������ ���� � ����������� �� ����������� ��������" do
    @item.price.should eq(182.0)
    @item.price = 300
  end
  
  it "������� ���������� �� �������" do
    @item.to_s.should == "TestItem:182.0"
  end
  
  it "������ ��������" do
    @item.send(:tax).should_not be_nil
  end
  
end