require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    @cd = Cd.new('Guilty', 4, 10, 'Blue', 40)
    # initialize item
  end
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Guilty')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(4)
    end

    it 'has tracks' do
      expect(@cd.tracks).to eq(10)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Blue')
    end
    it 'is assigned a run time' do
      expect(@cd.runtime).to eq(40)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Lost'
      expect(@cd.name).to eq('Lost')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 2
      expect(@cd.tracks).to eq(2)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'John'
      expect(@cd.artist).to eq('John')
    end
    it 'assigns and reads the run time' do
      @cd.runtime = 34
      expect(@cd.runtime).to eq(34)
    end
  end
  end
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters
