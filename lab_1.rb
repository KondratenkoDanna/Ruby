# puts 'Hello world'

# puts 'Введите ваше имя: '
# name = gets
# f_name = name[0, name.length - 1]
# puts "Привет #{f_name}!"

# 'str'.methods - в режиме irb выдаст все методы, принадлежащие строке

puts 'Какой язык у тебя любимый?'
lang = gets
f_lang = lang[0, lang.length - 1]
puts(f_lang)
case f_lang
when 'ruby'
	puts 'Скорее всего ты - ПОДЛИЗА'
when 'python'
	puts 'Классный язык, но дальше тебя ждет ruby'
when 'c++'
	puts 'ты крут, но ruby все же тебя ждет..'
else
	puts 'а ты пробовал писать на ruby?'
end
