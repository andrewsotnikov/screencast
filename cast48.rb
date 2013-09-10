#coding: cp1251

x = proc { |greeting| puts greeting }
y = lambda { |greeting| puts greeting; return greeting }

x.call("Hello")
puts y.call("Привет")
