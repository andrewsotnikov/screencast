#coding: cp1251
a = 3
a.times { puts "Hello world" }

face = { :first_name => "Петр", :second_name => "Иванов", :last_name => "Александрович" }
face.each_key{ |key| puts key }
face.each_key{ |key| puts face[key] }

File.open("./hello.txt", "w"){ |f| f.puts("Hello world") }
