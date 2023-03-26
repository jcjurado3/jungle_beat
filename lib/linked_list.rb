class LinkedList
  attr_reader :head, :current_node
  def initialize
    @head = head
  end
  def append(data)
    if @head == nil
    @head = Node.new(data)
    else
      make_current_node(data)
    end
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
  
  def make_current_node(data)
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
  end
  def prepend(data) 
    if @head.nil?
      @head = Node.new(data)
    else
      local_head = @head
      @head = Node.new(data)
      @head.next_node = local_head
    end
  end
  def insert(position, data)
    if position > count
      "That doesn't work"
    else
      current_node = @head
      count = 1
        until count == position
          current_node = current_node.next_node
          count += 1
        end
      node_to_insert = Node.new(data)
      node_to_insert.next_node = current_node.next_node
      current_node.next_node = node_to_insert
    end
  end
  def find(position, returned_data)
    count = 0
    current_node = @head
    until count == position
      count += 1
      current_node = current_node.next_node
    end
    generate_collection(returned_data, current_node)
  end
  def generate_collection(returned_data, current_node)
    found = ""
    count = 0
    until count == returned_data
      break if current_node.nil?
      count += 1
      found << current_node.data + " "
      current_node = current_node.next_node
    end
    found.to_s.strip
  end
  def includes?(data)
    current_node = @head

    until current_node == nil
      return true if current_node.data == data
      current_node = current_node.next_node
    end
    false
  end
  def pop
    if @head == nil
      return
    elsif @head.next_node.nil?
      element_to_return = @head.data
      @head = nil
      element_to_return
    else
      get_rid_of_last_element
    end
  end
  def get_rid_of_last_element
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    element_to_return = current_node.next_node.data
    current_node.next_node = nil           
    element_to_return
  end
end