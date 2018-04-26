require "rspec"
require "card"

RSpec.describe Card do
  subject(:card){Card.new(2, :c, :black)}

  describe "#initialize" do
    colors = [ :red, :black ]
    suits = [:h,:c,:d,:s]


    it "has a value" do
      expect(card.value).to eq(2)
    end

    # it "value between 2 and 14" do
    #
    # end

    it "has a suit" do
      expect(suits).to include(card.suit)
    end

    it "has a color" do
      expect(colors).to include(card.color)
    end

  end



end
