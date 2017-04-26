require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @bluray = Bluray.new('Blue', 2, 5, 'Shirong', 'Bao')
  end

  describe 'Initialization' do
    it 'is inherited from Item class' do
      expect(@bluray).to be < Item
    end
    it 'is an instance of Bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'is assigned a name' do
      expect(@bluray.name).to eq('Blue')
    end
    it 'is assigned a price' do
      expect(@bluray.price).to eq(2)
    end
    it 'is assigned run time' do
      expect(@bluray.runtime).to eq(5)
    end
    it 'is assigned a director' do
      expect(@bluray.director).to eq('Shirong')
    end
    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('Bao')
    end
  end

  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Yellow'
      expect(@bluray.name).to eq('Yellow')
    end
    it 'assigns and reads the price' do
      @bluray.price = 10
      expect(@bluray.price).to eq(10)
    end
    it 'assigns and reads the price' do
      @bluray.runtime = 15
      expect(@bluray.runtime).to eq(15)
    end
    it 'assigns and reads the price' do
      @bluray.director= 'Baoling'
      expect(@bluray.director).to eq('Baoling')
    end
    it 'assigns and reads the price' do
      @bluray.producer = 'Shirong'
      expect(@bluray.producer).to eq('Shirong')
    end
  end
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Bluray
  # check getters and setters
end
