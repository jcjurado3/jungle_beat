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
 it 'testing for prepend method' do
  list = LinkedList.new
  list.append("plop")
  # testing append
  expect(list.head.data).to eq("plop")
  list.append("suu")
  list.prepend("dop")

  expect(list.to_string).to eq("dop plop suu")
 end
 
 it 'testing for insert method' do
  list = LinkedList.new
  list.append("plop")
  list.append("suu")
  list.prepend("dop")
  list.insert(1, "woo")
  expect(list.to_string).to eq("dop woo plop suu")
 end
 it 'testing for find, pop and includes? methods' do
  list = LinkedList.new
  list.append("deep")
  list.append("woo")
  list.append("shi")
  list.append("shu")
  list.append("blop")

  expect(list.to_string).to eq("deep woo shi shu blop")
  expect(list.find(2,1 )).to eq("shi")
  expect(list.find(1, 3)).to eq("woo shi shu")
  expect(list.includes?("deep")).to be(true)

  list.pop
  list.pop
  expect(list.to_string).to eq("deep woo shi")
 end
end