# puts "Cумма цифр = #{ARGV[0].to_i.digits.sum}"

num = ARGV[0]

def sum_digit(numb)
  "Cумма цифр = #{numb.to_i.digits.sum}"
end

def min_digit(numb)
  "Макс. цифра = #{numb.to_i.digits.max}"
end

def max_digit(numb)
  "Мин. цифра = #{numb.to_i.digits.min}"
end

def pr_digit(numb)
  pr = 1
  list = numb.to_i.digits
  list.each { |value| pr *= value }
  "Произведение цифр = #{pr}"
end

puts sum_digit(num)
puts min_digit(num)
puts max_digit(num)
puts pr_digit(num)

