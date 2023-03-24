class LinkedList
  attr_reader :head
  def initialize
    @head = head
  end
  def append(data)
    @head = Node.new(data)
  end
  def count
    if @head == nil
      count = 0
    else
      current_node = @head.next_node
      count = 1
      until current_node.nil?
          count += 1
          current_node = current_node.next_node
        end
    end
    count
  end
  def to_string
    string = ""
    string << @head.data
    current_node = @head.next_node
    until current_node.nil?
      string << " " + current_node.data
      current_node = current_node.next_node
    end
    string
  end
end