current_path = File.dirname(__FILE__)
require "#{current_path}/class_Post.rb"

class Post_list
  def initialize(list_departaments = [])
    @post_list = list_departaments
    # @index += 1
  end

  def add_note(obj)
    @post_list << obj
  end

  def choose_note(ind)
    @choose_note = ind
  end

  def get_note
    return @post_list[@choose_note - 1]
  end

  def delete_note
    @post_list.delete_at(@choose_note - 1)
  end

  def sort_name()
    return @post_list.sort_by { |a| a.title}
  end

  def update_note(val)
    @post_list[@choose_note - 1] = val
  end

  def Post_list.write_to_YAML(name_file)
    name_file += '.yaml'
    require 'yaml'
    file = File.open( name_file, 'w' )
      posts = YAML.dump( @post_list, file )
    file.close
  end

  def Post_list.read_from_YAML(name_file)
    name_file += '.yaml'
    require 'yaml'
    arr_posts = YAML.load_file(name_file)
    p_l = Post_list.new
    arr_posts.each { |obj| p_l.add_note(obj) }
    return p_l
  end

  def to_s
    s = ''
    @post_list.each {|obj| s += obj.to_s + "\n" }
    s
  end

  def get_all_vacant
    @post_list.find_all { |post| post.vacancy == 'Да' }
  end

  def get_all_vacancy
    @post_list
  end

end

n = Post_list.new([Post.new('Департамент имущества', 'Служба закупок', 50, 'Нет'), Post.new('аДепартамент имущества', 'аСлужба закупок', 30, 'Да')])
# n1 = Post_list.new([Post.new('Имущества', 'Служба закупок', 30, 'Да')])
n.add_note(Post.new('AИмущества', 'AСлужба закупок', 30, 'Да'))

# puts n.get_all_vacancy
# puts n.sort_name
# puts n.sort_name


# p s.sort_name!
# puts








