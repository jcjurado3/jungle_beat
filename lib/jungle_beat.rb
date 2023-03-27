require './lib/linked_list'

class JungleBeat

  attr_reader :list, :data

  def initialize(data = nil)
    @list = LinkedList.new
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