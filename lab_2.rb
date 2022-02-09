# puts "Cумма цифр = #{ARGV[0].to_i.digits.sum}"

num = ARGV[0]

def sum_digit(numb)
  numb.to_i.digits.sum
end

def min_digit(numb)
  numb.to_i.digits.max
end

def max_digit(numb)
  numb.to_i.digits.min
end

def pr_digit(numb)
  pr = 1
  list = numb.to_i.digits
  list.each { |value| pr *= value }
  pr
end

puts "Cумма цифр = #{sum_digit(num)}"
puts "Мин. цифра = #{min_digit(num)}"
puts "Макс. цифра = #{max_digit(num)}"
puts "Произведение цифр = #{pr_digit(num)}"
