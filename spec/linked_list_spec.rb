require 'rspec'
require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
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

 it 'testing the prepend method' do

  list = LinkedList.new
  list.append("plop")
  # testing append
  expect(list.head.data).to eq("plop")

  list.append("suu")
  list.prepend("dop")

  expect(list.to_string).to eq("dop plop suu")
  expect(list.count).to eq(3)
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
  # Testing find method below
  expect(list.find(2,1 )).to eq("shi")
  expect(list.find(1, 3)).to eq("woo shi shu")
  # Testing the include? method below
  expect(list.includes?("deep")).to be(true)
  expect(list.includes?("dep")).to be(false)

  list.pop
  list.pop
  # Testing for the pop method below
  expect(list.to_string).to eq("deep woo shi")
 end

end