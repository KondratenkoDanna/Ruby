puts 'Hello world'

# puts 'Введите ваше имя: '
# name = gets
# f_name = name[0, name.length - 1]
# puts "Привет #{f_name}!"

puts "Привет #{ARGV[0]}!"

# 'str'.methods - в режиме irb выдаст все методы, принадлежащие строке

puts 'Какой язык у тебя любимый?'
lang = STDIN.gets.chomp
case
when lang == 'ruby'
  puts 'Скорее всего ты - ПОДЛИЗА'
when lang == 'python'
  puts 'Классный язык, но дальше тебя ждет ruby'
when lang == 'c++'
  puts 'ты крут, но ruby все же тебя ждет..'
else
  puts 'а ты пробовал писать на ruby?'
end

res = lang == 'Prolog' ? 'Думаю, ruby будет тебе полезнее...' : 'Обрати внимание на ruby!'
puts res
