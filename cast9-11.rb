#coding: cp1251

def hello_world(first_name = "", second_name = "")
  greeting = "Привет, мир. " 
  if first_name != "" || second_name != ""
    greeting += "Меня зовут #{first_name} #{second_name}"
  end
  
  return greeting
end

{"Петя" => "Иванов", "Вася" => "Васечкин", "Федя" => "Кукуев"}.each{ |first_name, second_name| puts hello_world(first_name, second_name) }
puts hello_world("Иван")
puts hello_world

