#coding: cp1251

names = ["����", "�������", "����"]
p names
puts names[0], names[1], names[2]
puts names.class

names.push("����")
p names

names.pop
p names

names.shift
p names