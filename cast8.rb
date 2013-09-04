#coding: cp1251

a = ARGV[0] ? ARGV[0].to_i : 1 

while a <= 10
  puts "Переменная a=#{a}" 
  a += 1
  #sleep 1
end