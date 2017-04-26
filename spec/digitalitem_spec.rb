# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    @digitalItem = DigitalItem.new('file', 1.99)
  end

  #check initialization
  describe 'Initialization' do
    it 'should be a digital item' do
      expect(@digitalItem).to be_instance_of(DigitalItem)
    end

    it "should be an item" do
      expect(@digitalItem).to be_kind_of(Item)
    end

    it "is assigned a name" do
      expect(@digitalItem.name).to eq('file')
    end

    it "is assigned a price" do
      expect(@digitalItem.price).to eq(1.99)
    end

    it 'always has a quantity of 1' do
      expect(@digitalItem.quantity). to eq(1)
    end
  end
end

# check getters and setters
describe 'getters and setters' do
  it 'assigns and reads the name' do
    @digitalItem.name = 'media'
    expect(@digitalItem.name).to eq('media')
  end

  it 'assigns and reads the price' do
    @digitalItem.price = 2.99
    expect(@digitalItem.price).to eq('2.99')
  end
end
