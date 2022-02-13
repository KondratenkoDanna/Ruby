# # puts "Cумма цифр = #{ARGV[0].to_i.digits.sum}"

num = ARGV[0]

# def sum_digit(numb)
#   numb.to_i.digits.sum
# end

# def min_digit(numb)
#   numb.to_i.digits.max
# end

# def max_digit(numb)
#   numb.to_i.digits.min
# end

# def pr_digit(numb)
#   pr = 1
#   list = numb.to_i.digits
#   list.each { |value| pr *= value }
#   pr
# end

# puts "Cумма цифр = #{sum_digit(num)}"
# puts "Мин. цифра = #{min_digit(num)}"
# puts "Макс. цифра = #{max_digit(num)}"
# puts "Произведение цифр = #{pr_digit(num)}"

# Метод 1
def alg_evk(x, y)
  case
  when x == y
    x
  when x > y
    alg_evk(x - y, y)
  when y > x
    alg_evk(y - x, x)
  end
end

def kol_vs_simple(n)
  kol = 0
  2.upto(n) do |el|
    if alg_evk(n, el) == 1
      kol = kol + 1
    end
  end
  kol
end

puts kol_vs_simple(ARGV[0].to_i)

# Метод 2
def sum_3(num)
  sum = 0
  for val in num.digits
    if (val % 3).zero?
      sum += val
    end
  end
  sum
end

# puts sum_3(ARGV[0].to_i)

# Метод 3











