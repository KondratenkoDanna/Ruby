puts 'Hello world'

puts 'Введите ваше имя: '
name = gets
f_name = name[0, name.length - 1]
puts "Привет #{f_name}!"

# 'str'.methods - в режиме irb выдаст все методы, принадлежащие строке