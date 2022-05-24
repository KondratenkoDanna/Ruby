class Post
  attr_accessor :departament, :title, :salary, :vacancy

  def initialize(departament, title, salary, vacancy = 'Нет')
    @departament, @title, @salary, @vacancy = departament, title,
                                           salary, vacancy
  end

  def to_s
    return "Отдел: #{@departament}\nНазвание: #{@title}\nОклад: #{salary}\nВакантность: #{vacancy}"
  end

end


