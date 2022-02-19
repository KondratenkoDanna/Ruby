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

# puts mult_list(ARGV[0].to_i.digits)

def create_list
  puts "Введите размер массива:"
  n = gets
  n = n.to_i
  puts "Введите массив:"
  ar = Array.new(n, 0)
  n.times do |i|
    ar[i] = gets
    ar[i] = ar[i].to_i
  end
  ar
end

def proc_list
  case ARGV[1]
  when '1'
    l = create_list
  when '2'
    name_file = ARGV[2]
    file_data = File.open(name_file, 'r') {|f| f.read}
    list_from_file = file_data.split(" ").map(&:to_i)
  end
end

case ARGV[0]
when '+'
  l = sum_list(proc_list)
when '*'
  l = mult_list(proc_list)
when 'макс'
  l = max_list(proc_list)
when 'мин'
  l = min_list(proc_list)
end
# puts l


# Задание 4
# 8
def ind_2_min(my_list)
  min_1 = my_list.min
  ind_min_1 = my_list.index(min_1)
  l_min = my_list[0...ind_min_1].min
  r_min = my_list[(ind_min_1 + 1)..-1].min
  min_2 = [l_min, r_min].min
  ind_min_2 = my_list.index(min_2)
  return ind_min_1, ind_min_2
end

# 20
def list_pass(max, dig, list, l_pass = [])
  if max == dig
    return l_pass
  end
  unless list.include?(dig)
    l_pass << dig
  end
  list_pass(max, dig + 1, list, l_pass)
end

def list_pass_digits(list)
  list_pass(list.max, list.min, list)
end

# 32
def local_max(ind=0, kol=0, list)
  if ind == list.length
    return kol
  end
  if list[ind - 1] < list[ind] && list[ind + 1] < list[ind]
    kol = kol + 1
  end
  local_max(ind + 1, kol, list)
end

# 44
def fl_int(ind = 0, flag = true, list)
  if ind + 1 == list.length || flag == false
    return flag.to_s == 'true'? true : false
  end
  if list[ind].class == list[ind + 1].class
    flag = false
  end

  fl_int(ind + 1, flag, list)
end

s = [1, 4.0, 3.0]
puts fl_int(s)
# 56













