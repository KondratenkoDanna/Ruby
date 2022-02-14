# # puts "Cумма цифр = #{ARGV[0].to_i.digits.sum}"

# num = ARGV[0]

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
  1.upto(n) do |el|
    if alg_evk(n, el) == 1
      kol = kol + 1
    end
  end
  kol
end

# puts kol_vs_simple(ARGV[0].to_i)

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
def kol_vs_simple_digits(n, del_n)
  kol = 0
  for el in n.digits
    if alg_evk(el, del_n) == 1
      kol = kol + 1
    end
  end
  kol
end

def del(x)
  del_x = 1
  kol_del = 1
  2.upto(x) do |el|
    if ((x % el).zero? && kol_del < kol_vs_simple_digits(x, el))
      del_x = el
      kol_del = kol_vs_simple_digits(x, el)
    end
  end
  del_x
end

# puts del(ARGV[0].to_i)

# Задание 3
def min_list(l)
  min = l[0]
  for el in l
    if min > el
      min = el
    end
  end
  min
end

def max_list(l)
  max = l[0]
  for el in l
    if max < el
      max = el
    end
  end
  max
end

# puts max_list(ARGV[0].to_i.digits)

def mult_list(l)
  mult = 1
  for el in l
    mult *= el
  end
  mult
end

def sum_list(l)
  sum = 0
  for x in l
    sum += x
  end
  sum
end

puts mult_list(ARGV[0].to_i.digits)

















