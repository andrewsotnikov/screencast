#coding: cp1251
a = 3
a.times { puts "Hello world" }

face = { :first_name => "����", :second_name => "������", :last_name => "�������������" }
face.each_key{ |key| puts key }
face.each_key{ |key| puts face[key] }

File.open("./hello.txt", "w"){ |f| f.puts("Hello world") }
