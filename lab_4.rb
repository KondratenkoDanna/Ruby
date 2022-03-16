# # Задание 5
# # 2
str = ARGV[0]
# def order_symb(str, size, ind = 0, flag = true)
#   if size - 1 == ind
#     return flag
#   end
#   if str[ind] >= str[ind + 1]
#     return false
#   else
#     order_symb(str, size, ind + 1, flag)
#   end
# end

# def order_symbol(str)
#   order_symb(str, str.size)
# end

# # puts order_symbol(str)

# #17
# def name_file(str)
#   /\/[^\/]+\./.match(str)[0][1..-2]
# end

# # 10
# def kol_symb(str, ind = 0, list = [], kol = 0)
#   str.each_byte do
#     |byte|
#     unless list.include?(byte)
#       if (byte > 64 && byte < 91) || (byte < 123 && byte > 96)
#         list.append(byte)
#         kol = kol + 1
#       end
#     end
#   end
#   kol
# end

# # 10
# def kol_A(str)
#   # str.size - /[^A]+/.match(str)[0].size
# end

# # 17


# # Cортировка 2 4 8 10
# def search_date(str)
#   l = []
#   reg = /[0-3]?[0-9]\s(января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря)\s[1-2]+[0-9]{3}/
#    while str.match(reg).to_s != ""
#      l << str.match(reg).to_s
#      str = str.sub(str.match(reg).to_s, "")
#    end
#    l
# end

# # puts search_date(str)

# func = [
#     kol_A(str),
#     kol_symb(str),
#     # name_file(str),
#     order_symbol(str)
# ]
# def user_selection()
#   puts "Введите действие: 1 - найти индексы двух наименьших элементов массива
#                           2 - найти количество задействованных символов латиницы в этой строке
#                           3 - найти имя файла без расширения
#                           4 - проверить упорядочены ли строчные символы этой строки по возрастанию
#                           5 - найти все даты, которые описаны в виде 31 февраля 2007"
#   func_choice = gets.chomp
#   if func_choice >= 1 || func_choice <=5
#     eval(func_choice[func - 1])
#   else
#     puts "Неllo world"
#   end
# end

# Sort
def pr(l, ind = 0, n_l = [])
  if ind == l.length
    return n_l
  end
  n_l.append(l[ind][0])
  pr(l, ind + 1, n_l)
end


def hash_length(str)
  words = str.split(' ')
  h = {}
  words.each { |word| h.merge!({word => word.length}) }
  h = h.sort_by { |key, value| value}
  pr(h)
end

puts hash_length(str)















