#coding: cp1251

def hello_world(first_name = "", second_name = "")
  greeting = "������, ���. " 
  if first_name != "" || second_name != ""
    greeting += "���� ����� #{first_name} #{second_name}"
  end
  
  return greeting
end

{"����" => "������", "����" => "��������", "����" => "������"}.each{ |first_name, second_name| puts hello_world(first_name, second_name) }
puts hello_world("����")
puts hello_world

