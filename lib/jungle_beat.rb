require './lib/linked_list'

class JungleBeat

  attr_reader :list, :data

  def initialize
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

end