require '../duty_list.rb'
require '../reward_list.rb'
require '../duty.rb'
require '../reward.rb'
require 'yaml'

class Model
  def initialize

  end

  def get_list_duty
    @lst = Duty_list.read_from_YAML("/Users/danna_fely/Downloads/Ruby-master/MVC_Project/duty_list")
    @lst
  end

  def delete_duty(ind)
    @lst.choose_duty = ind

    @lst.delete_duty

    Duty_list.write_to_YAML("/Users/danna_fely/Downloads/Ruby-master/MVC_Project/duty_list", @lst)
  end
end
