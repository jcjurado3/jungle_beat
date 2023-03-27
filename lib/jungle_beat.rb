require './lib/linked_list'

class JungleBeat

  attr_reader :list, :data

  def initialize(data = nil, rate = 500)
    @list = LinkedList.new
    @rate = rate
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
    `say -r 15 -v Cellos #{list.to_string}`
  end
  def all
    list.to_string
  end


end