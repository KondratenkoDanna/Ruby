class Departament
  attr_accessor :name, :highligth_duty
  @@list_objects = []

  attr_reader :number_phone

  def number_phone=(val)
    unless Departament.check_phone?(val)
      puts 'Номер введен неправильно! Попробуйте еще раз: '
      val = gets.chomp
    end
    @number_phone = val
  end

  def initialize(name, number_phone, duties = [])
    @name, @duties = name, duties
    self.number_phone = (number_phone)
    @@list_objects << self
  end

  def Departament.all
    @@list_objects
  end

  def pr_duties
    puts @duties.join(', ')
  end

  def pr_duties_in_str
    return @duties.join(', ')
  end

  def pr_highligth_duty
    return @duties[@highligth_duty]
  end

  def add_duties(val)
    @duties << val
  end

  def del_duties(ind)
    @duties.delete_at(ind)
  end

  def highligth(ind)
    return @highligth_duty = ind
  end

  def replace_highligth_duty(text)
    return @duties[@highligth_duty] = text
  end

  def to_s
    unless @duties.empty?
      duty = @duties.join(', ')
      return "Имя: #{@name}\nНомер телефона: #{@number_phone}\nОбязанности: #{duty}."
    end
    return "Имя: #{@name}\nНомер телефона: #{@number_phone}"
  end

  def Departament.check_phone?(number_phone)
    /\+?[1-9][0-9]{10}/ === number_phone
  end

  def Departament.read_from_text(name_file)
    list_obj = []
    file_data = File.open(name_file, 'r') {|f| f.read}
    list_obj_without_separators = file_data.split("#")
    list_obj_without_separators.shift
    for obj in list_obj_without_separators
      obj = obj.split("\n")
      obj.shift
      obj[2] = obj[2].split(", ")
      list_obj << obj
    end
    list_obj
  end

  def Departament.print
    for obj in @@list_objects
      p obj[2].empty?
      if obj[2].empty?
        puts "Имя: #{obj[0]}\nНомер телефона: #{obj[1]}"
      else
        puts "Имя: #{obj[0]}\nНомер телефона: #{obj[1]}\nОбязанности: #{obj[2].join(', ')}."
      end
    end
  end

  def Departament.write_to_txt(name_file)
    name_file += '.txt'
    str = ""
    for obj in @@list_objects
      str += "\n#\n#{obj.name}\n#{obj.number_phone}"
      unless obj.pr_duties_in_str.empty?
        str += "\n#{obj.pr_duties_in_str}"
      end
    end
    str += "\n#\n"
    file_data = File.open(name_file, 'w') {|f| f.write str[1..]}
  end

  def Departament.write_to_YAML(name_file)
    name_file += '.yaml'
    require 'yaml'
    file = File.open( name_file, 'w' )
      YAML.dump( @@list_objects, file )
    file.close
  end

  def Departament.read_from_YAML(name_file)
    name_file += '.yaml'
    require 'yaml'
      YAML.load_file(name_file)
  end

end

# class.ancestors - вывод предков
s = Departament.new('Ivan', '+79008908899', ['спать', 'лежать'])
s1 = Departament.new('Vova', '+79008908800', ['питаться', 'кушать'])
s1.add_duties('spat')
s1.name = 'Alex'
s1.number_phone = '89000007007878'
Departament.print
# puts s1
# p Departament.read_from_text('input.txt')
# Departament.print
# puts Departament.read_from_YAML('t_y')





























