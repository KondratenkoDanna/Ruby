# Задание 4
# 2
str = ARGV[0]

def order_symb(str, size, ind = 0, flag = true)
  if size - 1 == ind
    return flag
  end
  if str[ind] >= str[ind + 1]
    return false
  else
    order_symb(str, size, ind + 1, flag)
  end
end

def order_symbol(str)
  order_symb(str, str.size)
end

# puts order_symbol(str)
def name_file(str)
  # reg = /[]&&[^.]/.match(str)
  regex = /\/[^\/]+\./
  regex.match(str)
end

p name_file(str)[0]
# 10
# 17

# Cортировка 2 4 8 10
