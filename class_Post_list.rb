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
    return @post_list.sort_by { |a| a.name}
  end

  def update_note(val)
    @post_list[@choose_note - 1] = val
  end

  def write_to_YAML(name_file)
    name_file += '.yaml'
    require 'yaml'
    file = File.open( name_file, 'w' )
      posts = YAML.dump( @post_list, file )
    file.close
  end

  def Post_list.read_from_YAML(name_file)
    require 'yaml'
    arr_posts = Post.read_from_YAML(name_file)
    p_l = Post_list.new
    arr_posts.each { |obj| p_l.add_note(obj) }
    return p_l
  end

  def to_s
    s = ''
    @post_list.each {|obj| s += obj.to_s + "\n" }
    s
  end

end










