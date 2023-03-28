require './lib/linked_list'

class JungleBeat

  attr_reader :list
  attr_accessor :rate, :voice

  def initialize(data = nil)
    @list = LinkedList.new
    @rate = 500
    @voice = "Good News"
  end

  def append(data)
    data.split.each do |sound|
      list.append(sound)
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
    list.to_string
  end
  def reset_rate
    @rate = 500
  end
  def reset_voice
    @voice = "Good News"
  end
end