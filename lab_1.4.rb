puts 'Введи команду ОС:'
com_os = gets

puts "Введи команду Ruby:"
com_rb = gets
puts "Команда ОС:"
system(com_os)

puts "Команда Ruby:"
puts eval(com_rb)
