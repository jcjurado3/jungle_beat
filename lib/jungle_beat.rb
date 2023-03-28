require './lib/linked_list'

class JungleBeat

  attr_reader :list
  attr_accessor :rate, :voice

  def initialize(data = nil)
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
  end

  def append(data)
    accepted_data = "tee dee deep bop boop la na dop
    woo"
    data.split(" ").each do |sound|
      if accepted_data.include?(sound)
        @list.append(sound)
      end
    end
    data
  end
  def prepend(data)
    data.split.each do |sound|
      list.prepend(sound)
    end
    data
  end
  def count
    list.count
  end
  def play
    `say -r #{@rate} -v #{@voice} #{list.to_string}`
  end
  def all
    @list.to_string
  end
  def reset_rate
    @rate = 500
  end
  def reset_voice
    @voice = "Boing"
  end
end