#coding: cp1251
class Order
  attr_reader :items, :placed_at
  def initialize
    @items = []
  end

  include ItemContainer
  include ItemContainer::Info

  def place
    @placed_at = Time.now
    email_post = Thread.new do
      # Pony.mail({
        # :to               => StoreApplication::Admin.email,
        # :from             => "#{StoreApplication.name} <#{StoreApplication::Admin.email}>",
        # :via              => :smtp,
        # :via_options => {
          # :address        => "smtp.mystore.com",
          # :port           => "2525",
          # :user_name      => StoreApplication::Admin.email,
          # :password       => "password",
          # :authentication => :plain,
          # :domain         => "smtp.mystore.com"
        # },
        # :charset          => "UTF-8",
        # :subject          => "Новый заказ",
        # :body             => "В магазин #{StoreApplication.name} поступил новый заказ".encode('UTF-8')
      # })
    end
    while(email_post.alive?)
      print "."
      sleep(1)
    end
    sent_email_at = Time.now
    time_sent_email = sent_email_at - @placed_at
    puts "\nСообщение о заказе отправлено на #{StoreApplication::Admin.email}. Затрачено времени: #{time_sent_email}"
  end
end