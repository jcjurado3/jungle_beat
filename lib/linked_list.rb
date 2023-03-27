class LinkedList
  attr_reader :head, :current_node
  def initialize
    @head = head
  end
  # This is an if statement that checks whether the instance variable @head is nil. 
  # If @head is nil, it means that the linked list is currently empty, 
  # so a new node containing data is created and set as the @head of the list. 
  # If @head is not nil, it means that the list already contains at least one node, 
  # so the make_current_node method is called to add a new node to the end of the list.
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
  # make_current_node adds a new node to the end of a linked list 
  # by iterating through the list until it reaches the last node, 
  # and then setting the next_node of that node to a new 
  # node containing the provided data.
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
  # this method inserts a new node into the linked list at the specified position, 
  # provided that the position is valid. It traverses the linked list to find 
  # the correct position, and then inserts the new node into the list.
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
      data_to_return = @head.data
      @head = nil
      data_to_return
    else
      remove_last_data
    end
  end
  def remove_last_data
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    data_to_return = current_node.next_node.data
    current_node.next_node = nil           
    data_to_return
  end
end