current_path = File.dirname(__FILE__)
require "#{current_path}/reward.rb"
require "#{current_path}/reward_list.rb"
require "#{current_path}/duty.rb"
require 'yaml'


class Duty_list < Duty

    def initialize (*duty_list)
      @duty_list = Array.new
    end

    def add_duty (duty)
        @duty_list.append(duty)
    end

    def change_duty (duty)
      @duty_list[@choose_duty] = duty
    end

    def choose_duty
      @choose_duty
    end

    def choose_duty= choose_duty
      if choose_duty != -1
        @choose_duty = choose_duty
      else
        if @duty_list.empty?
          raise("Невозможно выбрать запись! Список пуст")
        else
          @choose_duty = 0
        end
      end
    end

    def get_duty
      @duty_list[@choose_duty]
    end

    def delete_duty
      @duty_list[@choose_duty] = nil
      @duty_list.compact!
      # self.choose_duty = @choose_duty - 1
    end

    def size
      size = 0
      for i in @duty_list
        size += 1
      end
      size
    end

    def each
      for i in @duty_list
        yield i
      end
    end

    def sort
      pred = @duty_list[0]
      for i in (1..@duty_list.size - 1)
        for j in (1..@duty_list.size - 1)
          if pred.name > @duty_list[j].name
            @duty_list[j - 1], @duty_list[j] = @duty_list[j], @duty_list[j - 1]
          end
          pred = @duty_list[j]
        end
      end
    end

    def [] value
      @duty_list[value]
    end

    def to_s()
      s = ""
      @duty_list.length.times do |index|
        s+= "##{index + 1} #{@duty_list[index]}"
      end
      s+="\n"
      s
  end

    def Duty_list.read_from_YAML file_name
      YAML.load_file (file_name + ".yaml")
    end

    def Duty_list.write_to_YAML file_name, duty_list
      output = File.new(file_name + ".yaml", "w")
      YAML.dump(duty_list, output)
      output.close()
    end
end

# r = Reward_list.read_from_YAML("reward_list")
# d1 = Duty.new("ООО Кофе", 5321)
# d = Duty_list.read_from_YAML("duty_list")
# d.delete_duty(1)
# puts d
# Duty_list.write_to_YAML("duty_list", d)
# puts d.class
# Duty_list.read_from_YAML("duty_list")
