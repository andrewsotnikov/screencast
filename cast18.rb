#coding: cp1251

names = ["Петр", "Валерий", "Гена"]
#names.map{ |name| puts name }

puts names.each{ |name| name + "!" }
puts names.map{ |name| name + "!" }
