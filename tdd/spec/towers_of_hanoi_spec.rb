require "rspec"
require "towers_of_hanoi"

RSpec.describe TowersOfHanoi do
  subject(:game){TowersOfHanoi.new}

  describe "#initialize" do

    it "initialize an array with 3 towers in it" do
      expect(game.towers).to be_an(Array)
      expect(game.towers.length).to eq(3)
    end

    


  end


end
