#coding: cp1251

puts "Привет, мир!"
fisrt_name = "Andrew"

puts "Моё имя, #{fisrt_name}"
puts 1 == 2
puts 1 != 2
 
#puts (2 + 3) * 5
#puts 2+3*5

#puts 1 > 2 || 3 > 2

if fisrt_name == "Andrew"
  puts "Выводим сообщение по if"
end

unless fisrt_name == "Ura"
  puts "Выводим сообщение по unless"
end

i = 1

if i > 1
  puts "число больше 1"
elsif i < 1
  puts "число меньше 1"
else
  puts "число 1"
end