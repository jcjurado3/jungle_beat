require 'rspec'
require "./lib/node"
require "./lib/linked_list"
require "./lib/jungle_beat"

RSpec.describe Node do

  it 'testing for head data and next node attributes' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
  

 
end