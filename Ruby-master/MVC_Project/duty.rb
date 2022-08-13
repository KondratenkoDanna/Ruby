class Duty
  attr_accessor :name, :number, :number_ch
  # , :number, :reward_list
  # def initialize (name, number, days, reward_list=[] )
    def initialize (name, number, number_ch)
    #number - номер инн
    @name = name
    @number = number
    @number_ch = number_ch
    # @days = days
    # @reward_list = reward_list
  end

  def to_s
    "Имя: #{@name}\nНомер ИНН: #{@number}\n"
  end

  def number= number
    if number =~ /\d{,4}/
      @number = number
    else
      raise "Некорректное номер ИНН!"
    end
  end

  # def reward_list= reward_list
  #   @reward_list = Reward_list.new(reward_list)
  # end

  # def reward_list
  #   @reward_list
  # end
end
