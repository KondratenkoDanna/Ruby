class Departament
  def name
    @name
  end

  def number_phone
    @number_phone
  end

  def name=(val)
    @name = val
  end

  def number_phone=(val)
    @number_phone = val
  end

  # attr_accessor :name, :number_phone

  def initialize(name, number_phone)
    @name = name
    @number_phone = number_phone
  end

  def print()
    puts "Имя: #{self.name}\nНомер телефона: #{self.number_phone}"
  end
end

s = Departament.new('sdf', 456)
s.print
# puts s.name, s.number_phone
