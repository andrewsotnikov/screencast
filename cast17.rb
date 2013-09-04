#coding: cp1251

names = ["Петр", "Валерий", "Гена"]
p names
puts names[0], names[1], names[2]
puts names.class

names.push("Тест")
p names

names.pop
p names

names.shift
p names