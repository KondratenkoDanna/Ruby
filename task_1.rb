class Departament
  attr_accessor :name, :number_phone

  def initialize(name, number_phone)
    @name = name
    @number_phone = number_phone
  end

  def print
    puts "Имя: #{self.name}\nНомер телефона: #{self.number_phone}"
  end
end

us1 = Departament.new('Ivan', 46553)
us2 = Departament.new('Nikolai', 01456)
us3 = Departament.new('Pol', 45921)
us1.print
us2.print
us3.print
# puts s.name, s.number_phone
