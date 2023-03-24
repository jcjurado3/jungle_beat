require 'rspec'
require "./lib/node"
require "./lib/linked_list"

RSpec.describe Node do

  it 'testing for data and next node attributes' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
  it 'testing for the Linked List Class' do

    list = LinkedList.new
    expect(list).to be_a(LinkedList)
    expect(list.head).to eq(nil)
  end

 it 'testing for append, count, and to string methods' do
  # Set up below

  list = LinkedList.new
  list.append("doop")
  # Assertion below


  expect(list.head.data).to eq("doop")
  expect(list.head.next_node).to eq(nil)
  expect(list.count).to eq(1)

  expect(list.to_string).to eq("doop")
 end
 it 'testing for multiple nodes' do
  list = LinkedList.new
  list.append("doop")
  expect(list).to be_a(LinkedList)
  list.append("deep")
  expect(list.count).to eq(2)
  expect(list.to_string).to eq("doop deep")


 end

 
end