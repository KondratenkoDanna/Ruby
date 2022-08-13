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

obj1 = Post.new('Департамент имущества', 'Служба закупок', 30, 'Да')
# obj1.write_to_YAML('class_p_yaml')
obj2 = Post.new('Департамент торговли', 'Служба продаж', 20, 'Да')
# obj2.write_to_YAML('class_p_yaml')
# puts Post.read_from_YAML('class_p_yaml')
# puts obj1, obj2
