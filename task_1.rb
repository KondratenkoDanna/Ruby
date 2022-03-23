class Departament
  attr_accessor :name, :highligth_duty

  def number_phone
    @number_phone
  end

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
  end

  def pr_duties
    return @duties
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
      duty = ''
      @duties.each { |el| duty += el + ', '}
      return "Имя: #{@name}\nНомер телефона: #{@number_phone}\nОбязанности: #{duty[0..-3]}."
    end
    return "Имя: #{@name}\nНомер телефона: #{@number_phone}"
  end

  def Departament.check_phone?(number_phone)
    puts number_phone.class
    /\+?[1-9][0-9]{10}/ === number_phone.to_s
  end
end

puts Departament.new('Ivan', +79008908899, ['спать', 'лежать'])
# us1.name
# us1.duty = 1
# us1.add_duties('кушать')
# puts us1.pr_duties
# us1.add_duties('отдыхать')
# p us1.highligth(1)
# puts us1.pr_duties
# puts Departament.check_phone?
# puts us1.pr_highligth_duty(0)
# puts us1.pr_duties

