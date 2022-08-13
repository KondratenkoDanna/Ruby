# require 'yaml'
# current_path = File.dirname(__FILE__)

# require "#{current_path}/reward.rb"
# class Reward_list
#   def initialize (reward_list = [])
#     @reward_list = reward_list
#   end

#   def add_reward (reward)
#     @reward_list.append(reward)
#   end

#   def Reward_list.write_to_YAML (array, file_name)
#     output = File.new(file_name + ".yaml", "w")
#     YAML.dump(array, output)
#     output.close()
#   end

#   def Reward_list.read_from_YAML(file_name)
#       YAML.load_file (file_name + ".yaml"), permitted_classes: [Reward, Reward_list]
#   end

#   def to_s
#     s = ""
#     @reward_list.length.times do |index|
#       s+= "№#{index + 1} Название: #{@reward_list[index].name} в количестве: #{@reward_list[index].col} \n"
#     end
#     s+="\n"  
#     s
#   end
# end

# r1 = Reward.new("Банка варенья", 2)
# r2 = Reward.new("Шоколадка", 1)
# r = Reward_list.new
# r.add_reward(r1)
# r.add_reward(r2)
# Reward_list.write_to_YAML(r, 'reward_list')