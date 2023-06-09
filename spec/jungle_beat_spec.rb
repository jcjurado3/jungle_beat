require "rspec"
require "./lib/node"
require "./lib/linked_list"
require "./lib/jungle_beat"

RSpec.describe JungleBeat do

  it 'creates the JungleBeat class with new append method' do

    jb = JungleBeat.new
  
  
    expect(jb.list).to be_a(LinkedList)
    expect(jb.list.head).to eq(nil)
  
    jb.append("deep doo ditt")

    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
  
    jb.append("woo hoo shu")

    expect(jb.count).to eq(6)
  end
  
  it 'creates the play method' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
    expect(jb.play).to eq("")
  end

  it 'creates the all method' do
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    expect(jb.all).to eq("deep doo ditt")
  
  end
  it 'tests the validation inside the append and prepend methods' do
    jb = JungleBeat.new
    jb.append("Mississippi")

    expect(jb.list.head).to eq(nil)

    jb.prepend("Mississippi")

    expect(jb.list.head).to eq(nil)

  end
  it 'tests for the prepend method' do
    jb = JungleBeat.new
    jb.append("tee tee tee Mississippi")

    expect(jb.all).to eq("tee tee tee")
  end

  it 'creates the rate method' do
  
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 50
  
    expect(jb.play).to eq("")
  end
  it 'creates the voice method' do
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 50
    jb.voice = "Bubbles"

    expect(jb.play).to eq("")
  end

  it 'tests the reset methods for Play and Voices' do
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 50
    jb.voice = "Bubbles"
    jb.reset_rate
    jb.reset_voice

    expect(jb.play).to eq("")
  end

end